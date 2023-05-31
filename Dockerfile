ARG BASE_IMAGE_URL \
    IMAGE_TYPE \
    OWNER
FROM $BASE_IMAGE_URL/java-runtime:pge-latest
ARG ENVIRONMENT
LABEL Environment=$ENVIRONMENT
LABEL Image_Type=$IMAGE_TYPE
LABEL Owner=$OWNER
LABEL maintainer="Shoban Cheekuru<sycz@pge.com>"

#FROM tekyantra-np-docker-virtual.jfrog.nonprod.pge.com/java:8-jre
#FROM 514712703977.dkr.ecr.us-west-2.amazonaws.com/java-runtime
#ARG BASE_IMAGE_URL
#FROM $BASE_IMAGE_URL/java:8-jre
#ARG ENVIRONMENT
#LABEL Environment=$ENVIRONMENT
#LABEL maintainer="Shoban Cheekuru<sycz@pge.com>"

RUN mkdir spring-petclinic
COPY target/spring*.jar /spring-petclinic/spring-petclinic.jar
EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/spring-petclinic/spring-petclinic.jar","--server.port=8081"]
