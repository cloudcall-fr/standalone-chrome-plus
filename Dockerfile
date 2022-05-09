FROM selenium/standalone-chrome:4.1

USER root

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - \
  && echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list \
  && apt-get update -qqy \
  && apt-get -qqy install sublime-text dconf-editor dbus-x11 fonts-noto-color-emoji xdotool \
  && rm /etc/apt/sources.list.d/sublime-text.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

USER 1200

COPY --chown=1200 ./menu /home/seluser/.fluxbox/menu
COPY --chown=1200 ./apps /home/seluser/.fluxbox/apps


