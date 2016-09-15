FROM cpollet:oracle-jdk8

COPY ideaIU-2016.2.4.tar.gz /tmp/idea.tgz

ENV BASE_DIR /work

RUN apt-get update && \
    apt-get install -y libxext6 libxrender1 libxtst-dev libfreetype6-dev libfontconfig1 && \
    mkdir /work && \
    chmod a+rwx /work && \
    tar -xzvf /tmp/idea.tgz -C /opt/ && \
    ln -s /opt/idea-* /opt/idea && \
    echo "idea.base.dir=${BASE_DIR}" >> /opt/idea/bin/idea.properties && \
    echo "idea.config.path=\${idea.base.dir}/.IntelliJIdea/config" >> /opt/idea/bin/idea.properties && \
    echo "idea.system.path=\${idea.base.dir}/.IntelliJIdea/system" >> /opt/idea/bin/idea.properties && \
    echo "idea.plugins.path=\${idea.config.path}/plugins" >> /opt/idea/bin/idea.properties && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/idea.tgz

ENV HOME /work
ENV PATH /opt/idea/bin:${PATH}

CMD [ "idea.sh" ]