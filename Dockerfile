FROM dart:stable

WORKDIR /app/backend

# Copy all backend files first
COPY backend/ ./

# Get dependencies (inside backend)
RUN dart pub get

# Compile server
RUN dart compile exe bin/server.dart -o bin/server

EXPOSE 8080
CMD ["./bin/server"]

# docker build -t whoami-backend .
# docker run -d -p 8080:8080 -e PORT=8080 --name whoami-backend whoami-backend
# docker logs -f whoami-backend
# docker stop whoami-backend
# docker rm whoami-backend