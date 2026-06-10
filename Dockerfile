# ==========================================
# Stage 1: Build the Flutter App
# ==========================================
FROM ghcr.io/cirruslabs/flutter:stable AS build

# Set the working directory
WORKDIR /app

# Copy dependency files first to cache them
COPY pubspec.* ./
RUN flutter pub get

# Copy the rest of the application
COPY . .

# Build the app for the web
RUN flutter build web --release

# ==========================================
# Stage 2: Serve the app with Nginx
# ==========================================
FROM nginx:alpine

# Copy the build output from the previous stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
