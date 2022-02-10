FROM node:latest
LABEL description="Dockerfile para buildar sites estáticos geardos com Docsify."

RUN npm install docsify-cli@latest -g

COPY ./ ./docs
WORKDIR ./docs
RUN docsify init ./build

EXPOSE 3000/tcp

RUN docsify serve ./build
