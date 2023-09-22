# Создание конейнера состемного журнала
FROM ubuntu:22.04
# устанавливаем пакет rsyslogб который позволяет использовать программк-демон rsyslogd. r - reliable
RUN apt-get update && apt-get install -y rsyslog

# создаём том /dev для совместного использования другими контецнерами
VOLUME /dev

# создаём vat/log для сохранения файла syslog
VOLUME /var/log

#запуcкаем процесс rsyslogd
CMD ["sh", "rsyslogd -n"]
