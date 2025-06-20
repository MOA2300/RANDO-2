FROM openjdk:17-jdk-slim
WORKDIR /app
# download your .jar during build
RUN apt-get update && apt-get install -y curl
RUN curl -L -o app.jar "https://drive.google.com/uc?export=download&id=1JwRj725H2kN9PfMXRMhYDbSRex7nwCv7" 
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
