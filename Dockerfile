FROM docker.io/after4u/ubuntu-jdk8
RUN cd /opt && wget http://mirror.bit.edu.cn/apache/zeppelin/zeppelin-0.7.1/zeppelin-0.7.1-bin-all.tgz && tar xvf zeppelin-0.7.1-bin-all.tgz
RUN cd /opt && wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz && tar xvf spark-2.1.0-bin-hadoop2.7.tgz && mv spark-2.1.0-bin-hadoop2.7 spark
ENV SPARK_HOME /opt/spark
ENV PATH $PATH:$SPARK_HOME/bin
RUN /opt/zeppelin-0.7.1-bin-all/bin/zeppelin-daemon.sh start
RUN echo hello