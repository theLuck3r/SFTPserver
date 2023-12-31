FROM atmoz/sftp

RUN apt-get update && apt-get install -y rsync

ARG SFTP_USER=user
ARG SFTP_PASS=pass

RUN echo $SFTP_USER:$SFTP_PASS:::upload >> /etc/sftp-users.conf

EXPOSE 22

CMD ["/entrypoint"]
