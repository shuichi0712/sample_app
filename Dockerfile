FROM ruby:3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN mkdir /sample_app
WORKDIR /sample_app
ADD Gemfile /sample_app/Gemfile
ADD Gemfile.lock /sample_app/Gemfile.lock
RUN bundle install
ADD . /sample_app
