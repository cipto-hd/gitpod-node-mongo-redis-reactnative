FROM gitpod/workspace-full-vnc

USER gitpod

# Install mongodb.
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN sudo apt-get update && sudo apt-get install -y mongodb-org && sudo rm -rf /var/lib/apt/lists/*

# Install Redis.
RUN sudo apt-get update \
        && sudo apt-get install -y redis-server \        
        && sudo rm -rf /var/lib/apt/lists/*