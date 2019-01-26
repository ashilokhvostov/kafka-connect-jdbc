FROM confluentinc/cp-kafka-connect:5.1.0
MAINTAINER https://www.confluent.io/

RUN      apt-get update && \
         apt-get install -y gettext-base && \
         rm /usr/share/java/kafka-connect-jdbc/kafka-connect-jdbc-5.1.0.jar

ADD target/kafka-connect-jdbc-5.1.0.jar /usr/share/java/kafka-connect-jdbc/kafka-connect-jdbc-5.1.0.jar