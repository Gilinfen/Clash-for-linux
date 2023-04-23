FROM dreamacro/clash:latest

ENV CLASH_URL="https://sub-sg01.yunti.monster/link/I3wzgerHe6e6S2xP?clash=1&extend=1"

RUN wget -O /root/.config/clash/config.yaml ${CLASH_URL}

CMD ["clash"]


