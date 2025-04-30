FROM node:22-alpine
# Install dependencies using apk (Alpine's package manager)
RUN apk add --no-cache \
    git \
    python3 \
    make \
    g++ \
    # Additional dependencies if needed (e.g., for node-gyp)
    && rm -rf /var/cache/apk/*

RUN git clone https://github.com/c-o-d-e-xx/WhatsBixby.git /Bixby
WORKDIR /Bixby
RUN npm install
EXPOSE 8000
CMD ["npm", "start"]
