# frozen_string_literal: true

class OcrServiceConsumer < Karafka::BaseConsumer
  def consume
    messages.each do |msg|
      puts msg.raw_payload

      temp_img = Down.download(msg.raw_payload, max_size: 5 * 1024 * 1024)  # 5 MB

      text = RTesseract.new(temp_img.path).to_s if temp_img
      
      puts text
    rescue => e
      Karafka.logger.info e
    end
  end
end
