CREATE OR REPLACE STREAM "DESTINATION_SQL_STREAM" (
    ticker_symbol VARCHAR(4),
    change DOUBLE,
    price DOUBLE);

CREATE OR REPLACE PUMP "STREAM_PUMP" AS 
  INSERT INTO "DESTINATION_SQL_STREAM"    
    SELECT STREAM ticker_symbol, change, price    
    FROM "SOURCE_SQL_STREAM_001";
