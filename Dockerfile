FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY . .

# Ensure the startup script has correct line endings and execution permissions
RUN apk add --no-cache dos2unix && \
    dos2unix run.sh && \
    chmod +x run.sh

# Force the container to launch using your verified script
CMD ["./run.sh"]
