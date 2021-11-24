## Jenkins

Jenkins is an free and open source automation server written in Java. Jenkins helps to automate the non-human part of the software development process, with continuous integration and facilitating technical aspects of continuous delivery. It is a server-based system that runs in servlet containers such as Apache Tomcat. It supports version control tools, including AccuRev, CVS, Subversion, Git, Mercurial, Perforce, TD/OMS, ClearCase and RTC, and can execute Apache Ant, Apache Maven and sbt based projects as well as arbitrary shell scripts and Windows batch commands. The creator of Jenkins is Kohsuke Kawaguchi. Released under the MIT License, Jenkins is free software. <small> [wiki](<https://en.wikipedia.org/wiki/Jenkins_(software)>) </small>
  
  
  ```
    sudo usermod -aG docker $(whoami)

    docker-compose build

    docker-compose up --build

    docker build -t rili:jenkins -f Dockerfile .

    docker run -p 9090:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home 6ada35f0691c

    docker run -p 9090:8080 -p 50000:50000 6ada35f0691c

    https://stackoverflow.com/questions/35734474/connect-to-docker-container-as-user-other-than-root
    docker exec -it --user root <container id> /bin/bash

  ```
