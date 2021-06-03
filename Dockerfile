FROM kenhv/kensurbot:debian

RUN set -ex \
    && git clone -b master https://github.com/yayanksenpai/KensurBot-clever /root/userbot \
    && chmod 777 /root/userbot

WORKDIR /root/userbot/
RUN pip3 install flask
RUN pip3 install flask_restful
CMD ["bash","start.sh"]
