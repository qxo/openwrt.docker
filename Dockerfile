MAINTAINER José Moreira <jose.moreira@findhit.com>

RUN mkdir \
        /var/run \
        /var/log \
        /var/lock \
    ; \
    opkg update; \
    opkg install \
        bash curl \
    ; rm -rf /tmp/opkg-lists/* 
CMD [ "/bin/sh","-c", "if [ -f '/bin/login' ] ; then /bin/login ; else /bin/login.sh;  fi " ]
