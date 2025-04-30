FROM node:22
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    git

WORKDIR /Bixby
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
