# Docker Tag Images, Using Python Slim Buster.
FROM kenzo404/lynxuser:Buster
# ==========================================
#              Lynx - Userbot
# ==========================================
RUN git clone -b famous-userBot https://github.com/famous-Crew/famous-userBot /home/famous-userBot \
    && chmod 777 /home/famous-userBot \
    && mkdir /home/famous-userBot/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /home/famous-userBot/

WORKDIR /home/famous-userBot/

# Finishim
CMD ["python3","-m","userbot"]
