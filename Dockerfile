FROM ruby:latest

WORKDIR /usr/src/sinatrapp

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["/usr/src/sinatrapp/run_test.sh"]