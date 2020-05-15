FROM phusion/baseimage:0.10.2

RUN \
  	apt-get update && 	\
  	apt-get install   -y	\
		vim 		\
		git 		\
		python3		\
		python3-pip 

RUN apt-get install -y \
    build-essential zlib1g-dev libssl-dev libncurses-dev \
    libffi-dev libsqlite3-dev libreadline-dev libbz2-dev


RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git

RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer


