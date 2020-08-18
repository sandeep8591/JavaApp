FROM tomcat
LABEL maintainer='Sandeep Reddy'
RUN rm -rf /usr/local/tomcat/webapps/*
#copying
COPY target/**.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80
CMD ["catalina.sh", "run"] 
