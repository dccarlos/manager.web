# Kafka Manager
## About Kafka Manager:

*I was working on an amazing project about a Kafka Manager tool for a company. I decided to create a Kafka Manager from scratch with my own specs and tools*

### From GitHub

1. git clone https://github.com/dccarlos/manager.web.git
2. cd manager.web
3. mvn spring-boot:run
4. Open your browser in http://localhost:8080/
5. Enter any username and the password will be the choosen username folled by 'x'. i.e. username = foo, password = foox
6. Enjoy!

### From Docker

*An automated build of this project was created in Docker Hub. It is based on the Dockerfile located in app's root directory*

1. docker run -d -it -p 8080:8080 --name sample_app ccordero/manager.web
2. Open your browser in http://localhost:8080/
3. Enter any username and the password will be the choosen username folled by 'x'. i.e. username = foo, password = foox
4. Enjoy!