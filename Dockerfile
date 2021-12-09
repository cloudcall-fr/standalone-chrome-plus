FROM selenium/standalone-chrome:4.1.0-20211123

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - \
  && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list \
  && sudo apt-get update -qqy \
  && sudo apt-get -qqy install sublime-text \
  && sudo rm /etc/apt/sources.list.d/sublime-text.list \
  && sudo rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#COPY ./menu /home/seluser/.fluxbox/menu


