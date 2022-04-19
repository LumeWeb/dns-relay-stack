FROM openresty/openresty:latest-alpine

ARG INOTIFY_VERSION="3.20.2.2"


COPY conf.d /usr/local/openresty/nginx/conf/conf.d
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
ADD entrypoint.sh /
ADD reload.sh /

RUN apk update && apk add ca-certificates openssl gcc make musl-dev

RUN cd /tmp && \
wget https://github.com/inotify-tools/inotify-tools/releases/download/${INOTIFY_VERSION}/inotify-tools-${INOTIFY_VERSION}.tar.gz && \
tar xzvf inotify-tools-${INOTIFY_VERSION}.tar.gz && \
cd inotify-tools-${INOTIFY_VERSION} && \
 sh ./configure --prefix=/usr --libdir=/lib64 && \
    make && make install && \
    rm -rf /tmp/inotify-tools*

ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
