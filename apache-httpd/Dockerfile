FROM httpd:2.4

# RUN apt-get update && apt-get -y install vim curl

RUN mkdir $HTTPD_PREFIX/extra
RUN echo "IncludeOptional extra/*.conf" >> $HTTPD_PREFIX/conf/httpd.conf
