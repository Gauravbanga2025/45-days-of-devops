# Stage 1: Build environment
FROM alpine:latest AS heavy-builder
WORKDIR /build-folder
COPY main.js .
# Simulating a heavy build process by writing a build artifact
RUN echo "Final Compiled Release Content" > production-artifact.txt

# Stage 2: Clean runtime environment
FROM alpine:latest
WORKDIR /app
# Pull ONLY the specific compiled text file from the heavy stage
COPY --from=heavy-builder /build-folder/production-artifact.txt .
CMD ["cat", "production-artifact.txt"]
