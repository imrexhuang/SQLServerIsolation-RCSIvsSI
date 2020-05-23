--參考資料:https://dotblogs.com.tw/stanley14/2017/12/13/rcsi_vs_snapshotisolation
CREATE TABLE [dbo].[TestAccount](
	[CID] [char](3) NOT NULL,
	[BookValue] [decimal](10, 0) NOT NULL
) ON [PRIMARY]
GO

INSERT dbo.TestAccount VALUES ('001', 800) --戶頭有800元
GO


-- UPDATE  dbo.TestAccount SET BookValue = 800.00 WHERE CID = '001'
-- SELECT * FROM dbo.TestAccount WHERE CID = '001'



--修改資料庫隔離層級(開啟Snapshot Isolation)
--ALTER DATABASE 資料庫名稱 SET ALLOW_SNAPSHOT_ISOLATION ON
--SET TRANSACTION ISOLATION LEVEL SNAPSHOT

--修改資料庫隔離層級(開啟RCSI)
--ALTER DATABASE 資料庫名稱 SET READ_COMMITTED_SNAPSHOT ON
--ALTER DATABASE X SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE; --強制踢出，正式環境執行請確認可以踢出