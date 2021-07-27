FROM openjdk:11

ARG CREATED
ARG VERSION

LABEL org.opencontainers.image.created=$CREATED
LABEL org.opencontainers.image.version=$VERSION
LABEL org.opencontainers.image.title="kafka-kraft"
LABEL org.opencontainers.image.description="Dockerfile for Kafka Raft metadata mode (KRaft) - without Zookeeper"
LABEL org.opencontainers.image.source="https://github.com/rmisiarek/dockerfiles/tree/master/kafka-kraft"


ENV KAFKA_VERSION=2.8.0 \
    SCALA_VERSION=2.13 \
    KAFKA_HOME=/opt/kafka

ENV PATH=${PATH}:${KAFKA_HOME}/bin

RUN wget -O /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz https://downloads.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
    && tar xfz /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -C /opt \
    && rm /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
    && ln -s /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} ${KAFKA_HOME} \
    && rm -rf /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

WORKDIR ${KAFKA_HOME}

COPY entrypoint.sh .

EXPOSE 9092

ENTRYPOINT [ "./entrypoint.sh" ]
