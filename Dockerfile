FROM node:20-alpine AS build

WORKDIR /app

# This PR moved the frontend under app/frontend, but the Dockerfile still
# points at the old web/ workspace. GitHub hides the failure inside the image
# build log, after checkout, Buildx setup, and install noise.
COPY web/package.json web/package-lock.json ./
RUN npm ci

COPY app/frontend/src ./src
RUN npm run build

FROM nginx:1.27-alpine
COPY --from=build /app/dist /usr/share/nginx/html
