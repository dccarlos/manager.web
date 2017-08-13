FROM centos:latest
  RUN yum update \ 
      && yum install -y java-sdk \
      && yum install -y git \ 
      && yum clean all
          
  ENV JAVA_HOME /usr/lib/jvm/jre
  ENV PATH $JAVA_HOME/bin:$PATH
   
  RUN git clone https://github.com/dccarlos/manager.web.git
  WORKDIR ./manager.web
  RUN ./mvnw package -DskipTests
    
  CMD java $JAVA_OPTS \
          -Djava.security.egd=file:/dev/./urandom \
          -jar ./target/manager.web-*-SNAPSHOT.jar