FROM ruby:3.0.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev tesseract-ocr && gem install bundler
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.3.10

RUN bundle install
EXPOSE 9092
COPY . .
