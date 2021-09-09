FROM mailhog/mailhog

USER root
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

COPY ./auth.file  /home/mailhog/auth.file 
COPY ./config.json /home/mailhog/config.json
USER mailhog 
ENTRYPOINT [ "MailHog", "-auth-file=/home/mailhog/auth.file", "-outgoing-smtp=/home/mailhog/config.json" ]