FROM ruby:2.7

WORKDIR /website

COPY docs/Gemfile docs/Gemfile
COPY docs/Gemfile.lock docs/Gemfile.lock

WORKDIR docs

RUN bundle install
