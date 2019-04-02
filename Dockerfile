FROM alpine:edge


#RUN echo "http://mirrors.ustc.edu.cn/alpine/edge/main" >/etc/apk/repositories \
RUN apk add --no-cache \
      iptables iproute2

COPY rootfs.tar /
RUN tar xf /rootfs.tar -C /

EXPOSE 443/udp

CMD ["/xtun/entry.sh"]
