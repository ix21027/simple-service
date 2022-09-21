# frozen_string_literal: true

require "bundler/setup"
require "hanami/api"
require "hanami/middleware/body_parser"
require "waterdrop"

KAFKA_PRODUCER = WaterDrop::Producer.new do |config|
  config.kafka = { 'bootstrap.servers': ENV['KAFKA_HOST'] || 'kafka:9092' }
end

class App < Hanami::API
  use Hanami::Middleware::BodyParser, :json
  
  post "/ocr" do
    KAFKA_PRODUCER.produce_sync(topic: 'ocr_service', payload: params.to_json)
    200
  end

end

run App.new