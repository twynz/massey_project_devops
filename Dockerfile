FROM mcr.microsoft.com/java/maven:8u192-zulu-debian9
#install git
RUN apt-get update &&  apt install -y git && mkdir /src
#specify workdir and download source code
ADD . /src
RUN sh /src/get_project.sh
WORKDIR /src/massey-project-backend
#RUN mvn clean install
EXPOSE 10003:10003
ENTRYPOINT mvn spring-boot:run