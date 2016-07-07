DOCKER=docker
IMAGE=lappsgrid/gigaword
TAG=discovery

gigaword:
	if [ ! -e GigawordDataSource.war ] ; then wget http://www.anc.org/downloads/docker/GigawordDataSource.war ; fi
	$(DOCKER) build -t $(IMAGE) .
	
#getwar:
#	cp /Users/suderman/Workspaces/IntelliJ/Services/org.anc.lapps.gigaword/target/GigawordDataSource.war .

push:
	$(DOCKER) push $(IMAGE)

push-tag:
	$(DOCKER) push $(IMAGE):$(TAG)
	
tag:
	if [ -n "$(TAG)" ] ; then $(DOCKER) tag $(IMAGE) $(IMAGE):$(TAG) ; fi
	

help:
	@echo "GOALS"
	@echo
	@echo "tomcat   - A bare Tomcat 7 server."
	@echo "gigaword - Adds the Gigaword datasource to Tomcat"
	@echo "tag      - Tags $(IMAGE) on the Docker hub. The tag"
	@echo "           must be specified on the command line."
	@echo
	
