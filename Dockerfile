FROM ruby:latest

WORKDIR /usr/src/sinatrapp

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

WORKDIR /usr/src/sinatrapp/test

ENTRYPOINT ["/usr/src/sinatrapp/test/run_test.sh"]