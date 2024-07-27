FROM alpine

RUN apk update && apk add caddy rsync make bash

RUN mkdir /app
WORKDIR /app
COPY elpa/Makefile elpa/Makefile
COPY melpa/Makefile melpa/Makefile
COPY nongnu/Makefile nongnu/Makefile
COPY Makefile Makefile
COPY Caddyfile Caddyfile

RUN make

CMD ["caddy", "run"]
