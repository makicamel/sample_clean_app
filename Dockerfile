FROM ruby:2.6.5

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  libpq-dev \
  nodejs \
  vim

RUN mkdir /app
ENV APP_ROOT /app
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD . $APP_ROOT
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install