# Step 1 - Build a jar file
From maven:3-eclipse-temurin-17 as builder
workdir /app
copy . .
Run mvn clean package -DskipTests

# Step 2 - Deploy jar file into container space
From gcr.io/distroless/java17-debian13
Label maintainer=Santhosh
workdir /usr/app
Expose 8080
copy --from=builder /app/target/SpringBoot02-0.0.1-SNAPSHOT.jar /usr/app
Entrypoint ["java", "-jar", "SpringBoot02-0.0.1-SNAPSHOT.jar"]