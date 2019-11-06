FROM tiberiuc/backup-agent as backup
MAINTAINER Ciro Cesar Maciel <ciro.maciel@c37.co>

FROM gitea/gitea:latest
RUN apk update \
  && apk add tar bash supervisor zip \
  && apk del wget \
  && rm -rf /var/cache/apk/* /tmp/*

COPY --from=backup /usr/local/bin/backup_agent /usr/local/bin/backup_agent

ENV USER_UID=1000 USER_GID=1000

ADD ./scripts/backup.sh /usr/local/bin/backup.sh
ADD ./scripts/restore.sh /usr/local/bin/restore.sh
ADD ./scripts/supervisord.conf /etc/supervisord.conf
ADD ./scripts/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN    chmod a+x /usr/local/bin/backup.sh \
    && chmod a+x /usr/local/bin/restore.sh \
    && chmod a+x /usr/local/bin/entrypoint.sh 

ENTRYPOINT ["/usr/bin/supervisord"]
CMD ["-c", "/etc/supervisord.conf"]