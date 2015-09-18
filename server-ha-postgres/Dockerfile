# Use tpires/alpine-keycloak-postgres:1.5.0.Final image as the base
FROM tpires/alpine-keycloak-postgres:1.5.0.Final
MAINTAINER Tiago Pires <tandrepires@gmail.com>

ADD update-standalone-ha.xsl $JBOSS_HOME/
RUN java -jar /usr/share/java/saxon/saxon9he.jar -s:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml \
      -xsl:/opt/jboss/keycloak/update-standalone-ha.xsl -o:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml

ADD keycloak-server.json /opt/jboss/keycloak/standalone/configuration/
ADD start.sh /opt/jboss/keycloak/bin/

USER root
RUN chmod 755 /opt/jboss/keycloak/bin/start.sh; chown jboss:jboss /opt/jboss/keycloak/bin/start.sh
USER jboss

CMD ["/opt/jboss/keycloak/bin/start.sh"]
