FROM gradle:latest
COPY --chown=gradle:gradle . /home/appnet-api-server/code/
COPY .env /home/appnet-api-server/code/examples/appnet-api-server/src/main/resources/.env
COPY humankind.ly.pem /home/appnet-api-server/code/examples/appnet-api-server/src/main/resources/cert.pem
COPY humankind.ly.key /home/appnet-api-server/code/examples/appnet-api-server/src/main/resources/cert.key
WORKDIR /home/appnet-api-server/code
ENTRYPOINT ["gradle", ":appnet-api-server:run"]