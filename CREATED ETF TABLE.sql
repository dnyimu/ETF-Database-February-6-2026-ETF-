-- Creating the Table

CREATE TABLE ETF_FEB_6_2026(
Stock_Name VARCHAR(60),
Ticker_Symbol VARCHAR(60),
Opening_Price DECIMAL(5,2),
Closing_Price DECIMAL(5,2),
Currency VARCHAR(60),
Fund_Manager VARCHAR (60)
);

--  Renaming Column
    ALTER TABLE etf_feb_6_2026
    RENAME COLUMN `Stock_Name` TO ETF_Name; 
    
-- Inserting Rows
INSERT INTO etf_feb_6_2026 (ETF_Name, Ticker_Symbol, Opening_Price, Closing_Price, Currency, Fund_Manager)
VALUES 
	("Vanguard All-Equity ETF Portfolio","VEQT", 54.76 , 55.34 ,"CAD", "Vanguard"),
	("Vanguard FTSE Canada All Cap Index ETF", "VCN", 65.61, 66.01, "CAD", "Vanguard"),
    ("Vanguard U.S Total Market Index ETF", "VUN", 124.76, 126.63, "CAD", "Vanguard"),
    ("iShares Core Equity ETF Portfolio", "XEQT", 40.70, 41.16, "CAD", "BlackRock"),
    ("iShares Core S&P/ TSX Capped Composite Index ETF", "XIC",51.51, 51.84, "CAD","BlackRock"),
    ("iSharesCore S&P US Total Market", "XUU", 68.11, 69.25, "CAD", "BlackRock"),
    ("Vanguard S&P 500", "VOO", 626.76, 635.24, "USD", "Vanguard"),
    ("Vanguard Total World Stock Index Fund ETF Shares", "VT", 144.64, 146.66," USD", "Vanguard"),
    ("Vanguard Total Stock Market Index Fund ETF Shares", "VTI", 336.07, 340.96, "USD", "Vanguard"),
    ("iShares Core S&P 500 ETF", "IVV", 684.49, 693.78, "USD", "BlackRock"),
    ("iShares Inc MSCI Japan ETF", "EWJ", 88.77, 89.45, "USD", "BlackRock"),
    ("IShares Inc MSCI Brazil ETF", "EWZ", 37.42, 37.56, "USD", "BlackRock"); 
    
    -- Updating a value in my table example. Changing the currency of "VTI" ETF from CAD to USD
    UPDATE etf_feb_6_2026
    SET currency ="USD"
    where Ticker_Symbol="VT";
    
    -- Adding values to the columns that I added. They were all NULL
 UPDATE etf_feb_6_2026
SET
    Day_Return_Percentage= 1.75,
    Lowest_Price = 54.65,
    Highest_Price = 55.38,
    Volume = 378800,
   YTD_Return_Percentage = 3.03
WHERE 
Ticker_Symbol = "VEQT";

 UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.44 ,
    Lowest_Price = 65.54 ,
    Highest_Price = 66.03 ,
    Volume = 124140,
   YTD_Return_Percentage = 2.34
WHERE 
Ticker_Symbol = "VCN";


 UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.83,
    Lowest_Price = 124.58,
    Highest_Price = 126.78,
    Volume = 33720,
   YTD_Return_Percentage = 1.25
WHERE 
Ticker_Symbol = "VUN" ;


 UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.76,
    Lowest_Price = 40.69,
    Highest_Price = 41.64,
    Volume = 728007,
   YTD_Return_Percentage = 3.18
WHERE 
Ticker_Symbol = "XEQT" ;

 UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.47,
    Lowest_Price = 51.48,
    Highest_Price = 51.88,
    Volume = 249461,
   YTD_Return_Percentage = 2.55
WHERE 
Ticker_Symbol = "XIC" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.90,
    Lowest_Price = 68.11,
    Highest_Price = 69.32,
    Volume = 44169,
   YTD_Return_Percentage = 1.04
WHERE 
Ticker_Symbol = "XUU" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.90,
    Lowest_Price = 626.22,
    Highest_Price = 636.72,
    Volume = 9679920,
   YTD_Return_Percentage = 1.29
WHERE 
Ticker_Symbol = "VOO" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 2.16,
    Lowest_Price = 144.62,
    Highest_Price = 146.65,
    Volume = 2632995,
   YTD_Return_Percentage = 3.83
WHERE 
Ticker_Symbol = "VT" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 2.11,
    Lowest_Price = 336,
    Highest_Price = 341.69,
    Volume = 5079156,
   YTD_Return_Percentage = 1.70
WHERE 
Ticker_Symbol = "VTI" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.95,
    Lowest_Price = 683.96,
    Highest_Price = 695.40,
    Volume = 7195909,
   YTD_Return_Percentage = 1.29
WHERE 
Ticker_Symbol = "IVV" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 3.30,
    Lowest_Price = 88.58,
    Highest_Price = 89.46,
    Volume = 7407182,
   YTD_Return_Percentage = 10.73
WHERE 
Ticker_Symbol = "EWJ" ;

UPDATE etf_feb_6_2026
SET
   Day_Return_Percentage = 1.76,
    Lowest_Price = 37.06,
    Highest_Price = 37.58,
    Volume = 44141113,
   YTD_Return_Percentage = 18.22
WHERE 
Ticker_Symbol = "EWZ" ;

 
-- Adding Columns. I added day's return %, highest_price, lowest_price, Volume and YTD Return %

ALTER table etf_feb_6_2026
ADD
Day_Return_Percentage DECIMAL (4,2),
ADD
Highest_Price DECIMAL (6,2),
ADD
Lowest_Price DECIMAL (6,2),
ADD
Volume INTEGER ( 10),
ADD
YTD_Return_Percentage DECIMAL(4,2);

-- Re-arranging order of columns that I added
ALTER TABLE etf_feb_6_2026
MODIFY day_return_Percentage DECIMAL (4)
AFTER Closing_Price;

ALTER TABLE etf_feb_6_2026
MODIFY Lowest_Price DECIMAL(6)
AFTER day_return_Percentage; 

ALTER TABLE etf_feb_6_2026
MODIFY Highest_Price DECIMAL(6)
AFTER Lowest_Price; 

ALTER TABLE etf_feb_6_2026
MODIFY Highest_Price DECIMAL (6)
AFTER Lowest_Price;

ALTER TABLE etf_feb_6_2026
MODIFY Volume INTEGER (6)
AFTER Highest_Price;

ALTER TABLE etf_feb_6_2026
MODIFY YTD_Return_Percentage DECIMAL(4)
AFTER Volume;

-- Updating data Types example
ALTER TABLE etf_feb_6_2026
MODIFY COLUMN
Lowest_Price DECIMAL(6,2),
MODIFY COLUMN
Highest_Price DECIMAL(6,2) ,
MODIFY COLUMN
day_return_Percentage DECIMAL (6,2) ,
MODIFY COLUMN
YTD_Return_Percentage DECIMAL(4,2);


-- Dropping colums example
ALTER TABLE etf_feb_6_2026
 DROP COLUMN
 day_return_Percentage,
 DROP COLUMN
 Highest_Price ,
 DROP COLUMN
 Lowest_Price ;
 
 
    -- Deleting  a Row
    DELETE 
    from etf_feb_6_2026 
    WHERE Ticker_Symbol=  "VEQT";
    




  

  

    
  



