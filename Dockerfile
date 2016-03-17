FROM suchja/wine:dev
MAINTAINER Andrew Kovalyov <andrew.kovalyoff@gmail.com>

WORKDIR /home/xclient/.wine/drive_c/
RUN curl -SL http://windows.php.net/downloads/releases/archives/php-5.4.44-Win32-VC9-x86.zip -o php.zip && \
    unzip php.zip -d php && \
    rm php.zip
COPY php /usr/bin/php
RUN chmod +x /usr/bin/php

ENTRYPOINT ["php"]
