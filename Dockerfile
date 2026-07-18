# Multistage build: Blume(Astro)ビルド -> busybox httpdで静的配信。
#
#   docker build -f Dockerfile .

FROM node:22-slim AS build
WORKDIR /src
COPY package.json package-lock.json ./
RUN npm ci --no-audit --no-fund
COPY . .
RUN npm run build

FROM busybox:1.37
WORKDIR /www
COPY --from=build /src/dist ./
EXPOSE 8080
ENTRYPOINT ["busybox", "httpd", "-f", "-v", "-p", "8080", "-h", "/www"]
