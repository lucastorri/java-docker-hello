FROM java:7
COPY . /opt/java-app
WORKDIR /opt/java-app
CMD ["java", "Main"]
