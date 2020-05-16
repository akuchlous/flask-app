FROM phusion/baseimage:0.10.2

RUN \
  	apt-get update && 	\
  	apt-get install   -y	\
		vim 		\
		git 		\
		python3		\
		python3-pip 

RUN pip3 install click==6.7 Flask==1.0.2 itsdangerous==0.24 Jinja2==2.10 MarkupSafe==1.0 Werkzeug==0.14.1 

RUN apt-get install -y \
    build-essential zlib1g-dev libssl-dev libncurses-dev \
    libffi-dev libsqlite3-dev libreadline-dev libbz2-dev

#RUN pip3 install virtualenv 

RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

COPY src/ /app

EXPOSE 5000
CMD [ "python3", "/app/main.py" ]

