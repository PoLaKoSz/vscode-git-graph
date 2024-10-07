FROM polakosz/vsce:v3.1.1
WORKDIR /tmp
COPY . .
RUN npm i
RUN /opt/vsce/vsce package

# sudo docker build --tag git-graph . && sudo docker cp $(sudo docker run -d --entrypoint /bin/sh  --rm git-graph -c "sleep 10s"):/tmp/git-graph-1.30.0.vsix . && sleep 15s && sudo docker image remove git-graph && sudo docker builder prune --all --force
