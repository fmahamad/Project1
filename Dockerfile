Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@fmahamad 
dockerfile
/
nginx
Public
Code
Issues
15
Pull requests
5
Actions
Projects
Security
Insights
nginx/Dockerfile
@linman0x90
linman0x90 Add /var/www/html to mountable directories.
Latest commit d5d34a1 on Dec 29, 2014
 History
 4 contributors
@pilwon@linman0x90@johnjelinek@dimroc
30 lines (24 sloc)  634 Bytes
   
#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete
