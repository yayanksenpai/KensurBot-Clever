FROM kenhv/kensurbot:debian

RUN set -ex \
    && git clone -b master https://github.com/yayanksenpai/KensurBot-Clever /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/
RUN apt install nodejs npm
RUN apt install nginx
RUN npm install http-server -g
CMD ["bash","start.sh"]
