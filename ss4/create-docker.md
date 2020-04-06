# command
1. docker install
    + sudo yum update -y
    + sudo amazon-linux-extras install docker
    + sudo service docker start
    + sudo usermod -a -G docker ec2-user
    + docker info
    ```
    Client:
    Debug Mode: false

    Server:
    ERROR: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.40/info: dial unix /var/run/docker.sock: connect: permission denied
    errors pretty printing info
    ```
    + exit
    + login
    + docker info

2. docker login
+ docker login

3. docker操作
+ mkdir workspace
+ cd workspace
+ touch Dockerfile
+ vi Dockerfile
    ```
    FROM ubuntu:18.04

    # Install dependencies
    RUN apt-get update && \
     apt-get -y install apache2

    # Install apache and write hello world message
    RUN echo 'Hello World!' > /var/www/html/index.html

    # Configure apache
    RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \
     echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \
     echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \ 
     echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \ 
     chmod 755 /root/run_apache.sh

    EXPOSE 80

    CMD /root/run_apache.sh
    ```
+ docker build -t hello-world .

4. 確認
+ docker image
+ docker run -t -i -p 80:80 hello-world