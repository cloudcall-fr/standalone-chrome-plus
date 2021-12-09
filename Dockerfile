FROM selenium/standalone-chrome:4.1.0-20211123

USER root

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - \
  && echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list \
  && apt-get update -qqy \
  && apt-get -qqy install sublime-text \
  && rm /etc/apt/sources.list.d/sublime-text.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

COPY ./menu /home/seluser/.fluxbox/menu

USER 1200
