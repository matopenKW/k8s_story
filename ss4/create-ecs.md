# 
+ touch Docker
```
FROM centos:latest

RUN yum install -y httpd

COPY ./index.html /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
cat: o: No such file or directory
[ec2-user@ip-172-31-32-33 workspace2]$ cat Dockerfile
FROM centos:latest

RUN yum install -y httpd
```
+ docker image build -t dockerdemo ./
+ docker image


+ docker network ls 