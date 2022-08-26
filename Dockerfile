FROM twinsym/TWINSYM-BOT

RUN git clone https://github.com/twinsym/TWINSYM-BOT /root/twinsym
WORKDIR /root/twinsym/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


