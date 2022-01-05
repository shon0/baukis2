FROM ruby:2.6.4

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get update -qq && apt-get install -qq --no-install-recommends \
  nodejs postgresql-client \
  && apt-get upgrade -qq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && npm install -g yarn@1

WORKDIR /apps

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . ./