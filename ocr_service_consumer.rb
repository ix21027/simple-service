# frozen_string_literal: true

class OcrServiceConsumer < Karafka::BaseConsumer
  def consume
    messages.each do |msg| 
      msg.payload["fileUrl"]
        .then { Down.download(_1).path }
        .then { RTesseract.new(_1).to_s }
        .then { Karafka.logger.info "\n#{_1}" }
    rescue => e
      Karafka.logger.info e
    end
  end
end
