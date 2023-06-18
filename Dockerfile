FROM docker.io/atmoz/sftp

ARG SFTP_USER=user
ARG SFTP_PASS=pass

RUN echo $SFTP_USER:$SFTP_PASS:::upload >> /etc/sftp-users.conf

EXPOSE 22

CMD ["/entrypoint"]
