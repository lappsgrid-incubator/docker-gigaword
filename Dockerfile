FROM lappsgrid/tomcat7

USER root

ADD http://www.anc.org/downloads/docker/GigawordDataSource.war /var/lib/tomcat7/webapps/GigawordDataSource.war
ADD ./index.sh /usr/bin/index
RUN chmod a+x /usr/bin/index && \
	mkdir -p /var/log/gigaword && \
	chmod a+rw /var/log/gigaword

ENV TERM=xterm



