# Use a lightweight OpenJDK runtime image
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all the files from your folder into the container
COPY . .

# Grant execution permissions to your shell script (if needed)
RUN chmod +x run.sh

# Run the jar file (adjust memory flags or arguments if necessary)
CMD ["java", "-jar", "EaglesSPRelay.jar"]
