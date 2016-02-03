# Alpine Docker Images

Here you should find tpires's alpine docker images. Each branch corresponds to a different docker image.

### alpine-jboss-base
Based on jboss/base image. From **alpine:edge**, this image enables edge-testing repository and create default jboss group and user.

### alpine-openjdk:8
Based on jboss/base-jdk:8 image. From **alpine-jboss-base**, this image provides curl, wget, ca-certificates and openjdk8-jre.

### alpine-jboss-wildfly:10.0.0.Final
Based on jboss/wildfly:10.0.0.Final image. From **alpine-openjdk:8**, this image provides JBoss/Wildfly:10.0.0.Final.

### alpine-jboss-wildfly:9.0.2.Final
Based on jboss/wildfly:9.0.2.Final image. From **alpine-openjdk:8**, this image provides JBoss/Wildfly:9.0.2.Final.

### alpine-jboss-wildfly:8.2.1.Final
Based on jboss/wildfly:8.2.1.Final image. From **alpine-openjdk:8**, this image provides JBoss/Wildfly:8.2.1.Final.

### alpine-jboss-keycloak:1.5.0.Final
Based on jboss/keycloak:1.5.0.Final image. From **alpine-openjdk:8**, this image provides JBoss/Keycloak:1.5.0.Final with postgres and postgres-ha support.
