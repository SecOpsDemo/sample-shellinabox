FROM ubuntu:18.04

LABEL version="SE Training 0.1"
LABEL description="Test with Labels & Env Variables in Image"
LABEL deployment="dev"

ENV MYSQL_HOST="DB_Server"
ENV MYSQL_USER="operations"
ENV MYSQL_PASSWORD="5TTnvuTDJJSq6"

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install openssl shellinabox ca-certificates iputils-ping wget curl telnet sudo && \
    adduser lab --gecos "Me,Office,WorkPhone,HomePhone" --disabled-password && \
    echo 'lab:$1$ULnH9VTy$nUlk0D2Bgw40MAJ0gdc5A.' | chpasswd --encrypted && \
    apt-get clean

EXPOSE 4200

ENTRYPOINT ["shellinaboxd", "-s", "/:LOGIN", "--disable-ssl"]