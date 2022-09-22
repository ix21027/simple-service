# frozen_string_literal: true

require "bundler/setup"
require "hanami/api"
require "hanami/middleware/body_parser"
require "./karafka"

class App < Hanami::API
  use Hanami::Middleware::BodyParser, :json
  
  post "/ocr" do
    if params[:fileUrl].end_with? 'g'
      Karafka.producer.produce_sync(topic: 'ocr_service', payload: params[:fileUrl])
      200
    else
      422
    end
  end

end

run App.new