FROM fangcangorg/openjdk21:alpine
COPY initializr-web/target/initializr-web-0.21.0-SNAPSHOT.jar /root/initializr-web.jar
CMD sleep 10000


