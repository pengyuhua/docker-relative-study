FROM registry.saas.hand-china.com/tools/javabase:0.5.0

RUN mkdir -p /vol/development

WORKDIR /vol/development


COPY ./java/springboot-0.0.1-SNAPSHOT.jar /vol/development/app.jar

CMD ["java","-jar","/vol/development/app.jar"]
