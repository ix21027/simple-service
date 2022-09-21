# frozen_string_literal: true

ENV['KARAFKA_ENV'] ||= 'development'
Bundler.require(:default, ENV['KARAFKA_ENV'])

APP_LOADER = Zeitwerk::Loader.new
APP_LOADER.enable_reloading

APP_LOADER.push_dir("./")

APP_LOADER.setup
APP_LOADER.eager_load

class KarafkaApp < Karafka::App
  setup do |config|
    config.kafka = { 'bootstrap.servers': ENV['KAFKA_HOST'] || 'kafka:9092' }
    config.client_id = 'ocr_service_app'
  end
  
  routes.draw do
    topic :ocr_service do
      consumer OcrServiceConsumer
    end
  end
end
