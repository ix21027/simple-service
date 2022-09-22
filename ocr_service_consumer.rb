# frozen_string_literal: true

class OcrServiceConsumer < Karafka::BaseConsumer
  def consume
    messages.each do |msg|
      puts msg.raw_payload

      temp_img = Down.download(msg.raw_payload, max_size: 5 * 1024 * 1024)  # 5 MB

      puts RTesseract.new(temp_img.path).to_s
    rescue => e
      Karafka.logger.info e
    end
  end
end
