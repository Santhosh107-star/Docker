# Step 1: Build a jar file with gradle base image
From gradle:jdk17 As builder
workdir /app
copy . .
Run gradle clean build -x test

# Step 2: deploy build into container
From gcr.io/distroless/java17-debian13
Label maintainer=Santhosh
workdir /usr/app
expose 8080
copy --from=builder /app/build/libs/*.jar /usr/app
Entrypoint ["java", "-jar", "*.jar"]
