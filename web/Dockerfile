FROM ruby:3.0.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev tesseract-ocr && gem install bundler
WORKDIR /app
COPY Gemfile .

RUN bundle install

COPY . .
EXPOSE 9092
CMD ["rackup", "-D" "-o" "0.0.0.0"]