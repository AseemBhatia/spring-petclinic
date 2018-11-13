FROM java:openjdk-8-jdk
RUN mkdir /Shop
COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /Shop/
WORKDIR /Shop
VOLUME ["/Shop/logs"]
EXPOSE 8080
CMD java -Djava.security.egd=file:/dev/./urandom -jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
