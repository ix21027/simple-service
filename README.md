# Installation

Prerequires:
 - Tesseract OCR
 - Ruby 3.0.4

 1. Check if tesseract ocr programs is installed:
    ```
    $ tesseract --version
    ```
 2. Run to install all the dependencies and start Karafka consumption server with web server
    ```
    bundle install 
    
    docker-compose up -d && bundle exec rackup -D && bundle exec karafka server
    ```
 3. Send POST request to http://localhost:9292/ocr with the following body: 
    ```
    { 
        "fileUrl": "https://previews.123rf.com/images/happyroman/happyroman1611/happyroman161100004/67968361-atm-transaction-printed-paper-receipt-bill-vector.jpg"
    }    
    ```
    Result will be logged.
