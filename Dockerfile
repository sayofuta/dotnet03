FROM ubuntu:18.04
COPY /build_output/ example/
RUN apt-get update && apt-get install -y wget
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN apt-get -y install apt-transport-https
RUN apt-get update
RUN apt-get -y install dotnet-sdk-3.0