FROM tianon/wine
MAINTAINER Andrew Kovalyov <andrew.kovalyoff@gmail.com>

RUN apt-get install wget unzip -y
RUN cd /opt && \
    wget http://windows.php.net/downloads/releases/archives/php-5.4.44-Win32-VC9-x86.zip && \
    unzip php-5.4.44-Win32-VC9-x86.zip -d php 

RUN echo `#!/bin/bash wine \n /opt/php/php.exe "$@"` > /usr/bin/php && chmod +x /usr/bin/php
CMD ["php"]
