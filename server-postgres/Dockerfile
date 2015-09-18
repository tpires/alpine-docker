# Use tpires/alpine-keycloak-postgres:1.5.0.Final image as the base
FROM tpires/alpine-keycloak:1.5.0.Final
MAINTAINER Tiago Pires <tandrepires@gmail.com>

ADD changeDatabase.xsl $JBOSS_HOME/
RUN java -jar /usr/share/java/saxon/saxon9he.jar -s:/opt/jboss/keycloak/standalone/configuration/standalone.xml \
      -xsl:/opt/jboss/keycloak/changeDatabase.xsl -o:/opt/jboss/keycloak/standalone/configuration/standalone.xml; \
     java -jar /usr/share/java/saxon/saxon9he.jar -s:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml \
      -xsl:/opt/jboss/keycloak/changeDatabase.xsl -o:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml; \
     rm /opt/jboss/keycloak/changeDatabase.xsl
RUN mkdir -p /opt/jboss/keycloak/modules/system/layers/base/org/postgresql/jdbc/main; cd /opt/jboss/keycloak/modules/system/layers/base/org/postgresql/jdbc/main; curl -O http://central.maven.org/maven2/org/postgresql/postgresql/9.3-1102-jdbc3/postgresql-9.3-1102-jdbc3.jar
ADD module.xml /opt/jboss/keycloak/modules/system/layers/base/org/postgresql/jdbc/main/
