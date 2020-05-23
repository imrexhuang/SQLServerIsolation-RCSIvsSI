-- 交易一 (隔離層級:RCSI)
--接著在10秒內，在查詢視窗執行"交易二"語法
 --參考資料:https://dotblogs.com.tw/stanley14/2017/12/13/rcsi_vs_snapshotisolation
BEGIN TRAN

DECLARE @CustomerID Char(03)
DECLARE @AccountValue Decimal
DECLARE @AccountValueAfterUpdate Decimal

--
SET @CustomerID = '001' --參數


SELECT @AccountValue = BookValue FROM TestAccount where CID = @CustomerID
SET  @AccountValueAfterUpdate = @AccountValue - 500.00 --參數

--PRINT @AccountValueAfterUpdate
--PRINT @CustomerID
--

--BEGIN TRAN
UPDATE TestAccount 
   SET BookValue = @AccountValueAfterUpdate
 WHERE CID = @CustomerID
SELECT *,GETDATE() FROM TestAccount
 WAITFOR DELAY '00:00:10'
COMMIT
SELECT *,GETDATE() FROM TestAccount


--重設帳戶餘額
/*
UPDATE  dbo.TestAccount SET BookValue = 800.00 WHERE CID = '001'
SELECT * FROM dbo.TestAccount WHERE CID = '001'
*/

