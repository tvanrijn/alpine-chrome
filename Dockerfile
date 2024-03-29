FROM zenika/alpine-chrome:108-with-node

USER root
RUN apk del nodejs npm yarn
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/v3.14/main/ nodejs=14.21.3-r0 npm=7.17.0-r0
USER chrome
ENTRYPOINT ["chromium-browser", "--headless", "--use-gl=swiftshader", "--disable-software-rasterizer", "--disable-dev-shm-usage", "--no-sandbox", "--hide-scrollbars", "--remote-debugging-port=9222", "--remote-debugging-address=0.0.0.0"]