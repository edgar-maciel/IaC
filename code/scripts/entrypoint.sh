#!/bin/sh

if [ "${USER}" != "git" ]; then
    # rename user
    sed -i -e "s/^git\:/${USER}\:/g" /etc/passwd
fi

if [ -z "${USER_GID}" ]; then
  USER_GID="`id -g ${USER}`"
fi

if [ -z "${USER_UID}" ]; then
  USER_UID="`id -u ${USER}`"
fi

## Change GID for USER?
if [ -n "${USER_GID}" ] && [ "${USER_GID}" != "`id -g ${USER}`" ]; then
    sed -i -e "s/^${USER}:\([^:]*\):[0-9]*/${USER}:\1:${USER_GID}/" /etc/group
    sed -i -e "s/^${USER}:\([^:]*\):\([0-9]*\):[0-9]*/${USER}:\1:\2:${USER_GID}/" /etc/passwd
fi

## Change UID for USER?
if [ -n "${USER_UID}" ] && [ "${USER_UID}" != "`id -u ${USER}`" ]; then
    sed -i -e "s/^${USER}:\([^:]*\):[0-9]*:\([0-9]*\)/${USER}:\1:${USER_UID}:\2/" /etc/passwd
fi

for FOLDER in /data/gitea/conf /data/gitea/log /data/git /data/ssh; do
    mkdir -p ${FOLDER}
done

if [ $# -gt 0 ]; then
    exec "$@"
else
    exec /bin/s6-svscan /etc/s6
fi