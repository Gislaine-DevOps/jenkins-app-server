FROM centos:7

# Description
LABEL Description="Dockerfile to containerize an apache app"

# Update all packages
RUN yum -y update

# Install apache on the container 
RUN yum install -y httpd

# copy the app + dependencies inside the container
COPY index.html /var/www/html

# Port on which the container will listening on 
EXPOSE 80

# systemctl start/enable httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]

# Run the container in background
CMD [ "-D", "FOREGROUND" ] 
