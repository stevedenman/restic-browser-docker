FROM lobaro/restic-backup-docker:1.3.1-0.9.6

RUN apk add --update --no-cache npm

COPY entry.sh /entry.sh

RUN mkdir -p /mnt/backup

CMD ["restic","mount","/mnt/backup"]
