FROM debian:latest
LABEL MAINTAINER="https://github.com/elitehacker03/elitephisher"

WORKDIR /elitephisher/
ADD . /elitephisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./elitephisher.sh"]
