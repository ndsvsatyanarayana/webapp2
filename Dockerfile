FROM tomcat:8.5.47-jdk8-openjdk

LABEL maintainer=”sivaprasad.nages@aspiresys.com”

COPY ./webapp.war /usr/local/tomcat/webapps




