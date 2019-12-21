FROM ubuntu:latest

RUN apt-get update
RUN apt-get install postgresql-client -y
RUN apt-get install wget -y
RUN apt-get install unzip

ADD job.sh /usr/src/job.sh
RUN chmod +x /usr/src/job.sh

ADD init.sql /usr/src/init.sql
ADD load.sql /usr/src/load.sql

CMD ["/usr/src/job.sh"]