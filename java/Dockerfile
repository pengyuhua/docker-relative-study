FROM registry.saas.hand-china.com/tools/javabase:0.5.0

WORKDIR /vol/development
ENV work_dir /vol/development

COPY *.jar ${work_dir}/app.jar
COPY listen.sh ${work_dir}/listen.sh

RUN chmod +x ${work_dir}/listen.sh

CMD ["sh", "-c", "${work_dir}/listen.sh"]
