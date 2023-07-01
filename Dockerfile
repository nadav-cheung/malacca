# This Dockerfile users the openjdk 17 imange
# Version 1.0.0
# Author: nadav.cheung

# 第一行必须制定基于的基础镜像
FROM openjdk:17

# 维护者信息
MAINTAINER nadavcheung <nadav.cheung@gmail.com>

WORKDIR /opt/deployments
COPY ./target/spring-cloud-k8s-1.0.0-SNAPSHOT.jar /opt/deployments/
ENV JAVA_OPTS="-Xmx1024M -XX:MaxMetaspaceSize=400M -Xss1365K -Xms500M -XX:MetaspaceSize=400M"
EXPOSE 8080

# 启动时执行的指令
CMD java ${JAVA_OPTS} -jar /opt/deployments/spring-cloud-k8s-1.0.0-SNAPSHOT.jar
