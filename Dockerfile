# Docker Tag Images, Using Python Slim Buster.
FROM kenzo404/lynxuser:Buster
# ==========================================
#              Lynx - Userbot
# ==========================================
RUN git clone -b Lynx-Userbot https://github.com/famous-Crew/famous-userBot /home/Lynx-Userbot \
    && chmod 777 /home/Lynx-Userbot \
    && mkdir /home/Lynx-Userbot/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /home/Lynx-Userbot/

WORKDIR /home/Lynx-Userbot/

# Finishim
CMD ["python3","-m","userbot"]
