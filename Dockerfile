FROM tomcat:8.0-alpine

LABEL maintainer=”sivaprasad.nages@aspiresys.com”

ADD ./webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]

CMD /usr/local/tomcat/bin/catalina.sh run


