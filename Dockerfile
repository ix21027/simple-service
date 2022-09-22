FROM ruby:alpine
RUN apk add --no-cache openssl bash libpq-dev alpine-sdk autoconf librdkafka-dev openrc tesseract-ocr
WORKDIR /app
COPY Gemfile .

RUN bundle install

COPY . .