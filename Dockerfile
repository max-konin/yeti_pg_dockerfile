FROM postgres:9.4

RUN apt-get update && apt-get -y install aptitude

RUN cat /etc/apt/sources.list
RUN echo "deb http://pkg.yeti-switch.org/debian/jessie stable main ext" > /etc/apt/sources.list
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 9CEBFFC569A832B6
RUN aptitude update && \
    aptitude install -y python-pgq3 postgresql-9.4-prefix postgresql-9.4-pgq3 postgresql-9.4-yeti skytools3
