FROM node:latest
LABEL description="Dockerfile to build docsify documentation."

RUN npm install docsify-cli@latest -g

WORKDIR /code

COPY . .

EXPOSE 3000

ENTRYPOINT ["docsify"]
CMD ["serve", "."]