FROM ruby:latest

WORKDIR /usr/src/sinatrapp

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["./run_test.sh"]