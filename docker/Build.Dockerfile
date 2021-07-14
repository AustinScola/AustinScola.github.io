FROM ruby:3.0

WORKDIR /website

COPY docs/Gemfile docs/Gemfile
COPY docs/Gemfile.lock docs/Gemfile.lock

WORKDIR docs

RUN bundle install

ENTRYPOINT ["bundle", "exec", "jekyll", "build"]
