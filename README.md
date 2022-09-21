 1. Run
    ```    
    docker-compose up 
    ```
 2. Send POST request to http://localhost:9292/ocr with the following body: 
    ```
    { 
        "fileUrl": "https://previews.123rf.com/images/happyroman/happyroman1611/happyroman161100004/67968361-atm-transaction-printed-paper-receipt-bill-vector.jpg"
    }    
    ```
    Result will be in terminal as example below
```
    web_1    | I, [2022-09-21T00:44:00.779778 #1]  INFO -- : 
web_1    | @@@                                             @@@@@  @@@
web_1    | @@@                                            @@@     @@@
web_1    | @@@  @@@    @@@@@@@@@   @@@ @@@   @@@@@@@@@  @@@@@@@@  @@@  @@@@   @@@@@@@@@
web_1    | @@@@@@     @@@    @@@   @@@@@    @@@    @@@    @@@     @@@@@@@    @@@    @@@
web_1    | @@@@@@@    @@@    @@@   @@@     @@@@    @@@    @@@     @@@@@@@    @@@    @@@
web_1    | @@@  @@@@  @@@@@@@@@@   @@@      @@@@@@@@@@    @@@     @@@  @@@@   @@@@@@@@@@
web_1    | 
web_1    | 
web_1    | I, [2022-09-21T00:44:00.779925 #1]  INFO -- : Upgrade to Karafka Pro for more features and support: https://karafka.io
web_1    | E, [2022-09-21T00:44:00.783904 #1] ERROR -- : rdkafka: [thrd:kafka:9092/bootstrap]: kafka:9092/bootstrap: Connect to ipv4#172.19.0.2:9092 failed: Connection refused (after 0ms in state CONNECT)
web_1    | E, [2022-09-21T00:44:01.782272 #1] ERROR -- : rdkafka: [thrd:kafka:9092/bootstrap]: kafka:9092/bootstrap: Connect to ipv4#172.19.0.2:9092 failed: Connection refused (after 0ms in state CONNECT, 1 identical error(s) suppressed)
web_1    | I, [2022-09-21T00:44:28.345502 #1]  INFO -- : 
web_1    | ATM TRANSACTION
web_1    | 
web_1    | TERMINAL # 65425899
web_1    | SEQUNCE # 8564
web_1    | DATE 15:18 08/10/2016
web_1    | 
web_1    | CARD NUMBER XXXXXXXXXXXX5698
web_1    | 
web_1    | CUSTOMER NAME JOHN EMPTY
web_1    | REQUSTED AMOUNT $100.00
web_1    | TERMINAL FEE 51125
web_1    | 
web_1    | TOTAL AMOUNT $101.25
web_1    | 
   ```