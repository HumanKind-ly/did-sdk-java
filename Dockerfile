FROM gradle:latest
COPY --chown=gradle:gradle . /home/appnet-api-server/code/
COPY .env /home/appnet-api-server/code/examples/appnet-api-server/src/main/resources/.env
WORKDIR /home/appnet-api-server/code
ENTRYPOINT ["gradle", ":appnet-api-server:run"]