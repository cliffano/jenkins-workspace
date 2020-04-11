ci: 2.222.1-download 2.222.1-init 2.222.1-clean

clean:
	rm -rf workspaces/

define jenkins_download
  mkdir -p \
	  artifacts/$(1)/
  wget \
	  -O artifacts/$(1)/jenkins.war \
		http://mirrors.jenkins.io/war-stable/$(1)/jenkins.war
endef

define jenkins_init
  mkdir -p \
	  workspaces/$(1)/jenkins-home/
endef

define jenkins_start
  JENKINS_HOME=workspaces/$(1)/jenkins-home/ \
	  java \
		-jar artifacts/$(1)/jenkins.war \
		--httpPort=`echo $(1) | tr -d .`
endef

define jenkins_clean
  rm -rf workspaces/$(1)/jenkins-home/
endef

2.222.1-download:
	$(call jenkins_download,2.222.1)

2.222.1-init:
	$(call jenkins_init,2.222.1)

2.222.1-start:
	$(call jenkins_start,2.222.1)

2.222.1-clean:
	$(call jenkins_clean,2.222.1)

.PHONY: ci clean 2.222.1-download 2.222.1-init 2.222.1-start 2.222.1-clean
