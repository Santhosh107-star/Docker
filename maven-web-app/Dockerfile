#Step 1 build a jar file
From maven:3-eclipse-temurin-17 As builder
Label maintainer=Santhosh
Workdir /app
copy . .
Run mvn clean package

#Step 2 deploy war file into tomcat server
FROM tomcat:10.1-jdk17-temurin-jammy
Expose 8080
Run rm -rf /usr/local/tomcat/webapps/*
copy --from=builder /app/target/my-web-app.war /usr/local/tomcat/webapps/