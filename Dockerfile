FROM maven:3.5.3-jdk-8 as maven
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD XVulB /usr/src/app
RUN mvn verify clean --fail-never
RUN mvn install
