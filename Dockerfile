FROM ruby:2.4.1

#----------------------------CHROMED-----------------------------------------

# Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
 && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
 && apt-get update -qqy \
 && apt-get -qqy --allow-unauthenticated install google-chrome-stable \
 && rm /etc/apt/sources.list.d/google-chrome.list

#Timezone sync
ENV TZ America/Sao_Paulo

RUN apt-get install -y tzdata \
  && rm /etc/localtime \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && dpkg-reconfigure -f noninteractive tzdata \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN mkdir TESTE-ZUP

WORKDIR /TESTE-ZUP

COPY zup-test/Gemfile* /TESTE-ZUP/

RUN bundle install

ADD zup-test/ /TESTE-ZUP
