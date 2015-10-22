FROM lappsgrid/gigaword

USER root
#ADD http://www.anc.org/downloads/docker/GigawordDataSource.war /var/lib/tomcat7/webapps/GigawordDataSource.war
ADD ./GigawordDataSource.war /var/lib/tomcat7/webapps/GigawordDataSource.war
ADD ./index.sh /usr/bin/index
ADD ./setenv.sh /usr/share/tomcat7/bin/setenv.sh

RUN chmod a+x /usr/bin/index && \
	mkdir -p /var/log/gigaword && \
	chmod a+rw /var/log/gigaword && \
	chown tomcat7:tomcat7 /var/lib/tomcat7/webapps/GigawordDataSource.war

ENV TERM=xterm



