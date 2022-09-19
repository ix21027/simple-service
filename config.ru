# frozen_string_literal: true

require "bundler/setup"
require "hanami/api"
require "hanami/middleware/body_parser"
require "./karafka"

class App < Hanami::API
  use Hanami::Middleware::BodyParser, :json
  
  post "/ocr" do
   Karafka.producer.produce_sync(topic: 'ocr_service', payload: params.to_json)
   200
  end

end

run App.new