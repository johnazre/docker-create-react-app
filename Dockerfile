# To get started, run the following commands
# docker build . -t some-name:some-tag
# docker run -p <some-port>:<some-port> "<some-name>:<some-tag>"

# To stop the container, run the following:
# docker ps (for the container id)
# docker container stop <container-id>

FROM node:9

ADD yarn.lock /yarn.lock
ADD package.json /package.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
RUN yarn

WORKDIR /app
ADD . /app

EXPOSE 3000
EXPOSE 35729

ENTRYPOINT ["/bin/bash", "/app/run.sh"]
CMD ["start"]
