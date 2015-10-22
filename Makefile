DOCKER=/usr/local/bin/docker

gigaword:
	if [ ! -e GigawordDataSource.war ] ; then wget http://www.anc.org/downloads/docker/GigawordDataSource.war ; fi
	$(DOCKER) build -t lappsgrid/gigaword .
	
#getwar:
#	cp /Users/suderman/Workspaces/IntelliJ/Services/org.anc.lapps.gigaword/target/GigawordDataSource.war .

push:
	$(DOCKER) push lappsgrid/gigaword

help:
	@echo "GOALS"
	@echo
	@echo "tomcat   - A bare Tomcat 7 server."
	@echo "gigaword - Adds the Gigaword datasource to Tomcat"
	@echo "getwar   - Copies the Gigaword war file from my workspace"
	@echo
	
