FROM openjdk:19-jdk-alpine3.15@sha256:32c1827093cd3070442939f5a60e611496e8632b02e8e5687ed328f0a23b2159
WORKDIR /usr/src/app
ADD https://github.com/jagrosh/MusicBot/releases/download/0.3.6/JMusicBot-0.3.6.jar ./
COPY . . 
EXPOSE 443
ENTRYPOINT ["java", "-Dnogui=true", "-jar", "JMusicBot-0.3.6.jar"]