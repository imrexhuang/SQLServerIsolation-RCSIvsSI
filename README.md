# SQLServerIsolation-RCSIvsSI
* SQL Server預設的隔離層級是RC(Read Committed)
* SQL Server 2005之後支援RSCI(Read Committed Snapshot Isolation)和SI(Snapshot Isolation)的隔離層級，但這兩種層級不支援分散式交易


參考資料:
* https://dotblogs.com.tw/stanley14/2017/12/13/rcsi_vs_snapshotisolation
* https://dotblogs.com.tw/stanley14/2017/11/26/rcsi_performance
* https://www.facebook.com/groups/supersqlserver/permalink/332832093517487/
* https://www.facebook.com/groups/supersqlserver/permalink/1950788188388528/
* http://caryhsu.blogspot.com/2012/01/blog-post_31.html
* https://dba.stackexchange.com/questions/5014/what-risks-are-there-if-we-enable-read-committed-snapshot-in-sql-server
* https://littlekendra.com/2016/02/18/how-to-choose-rcsi-snapshot-isolation-levels/
* https://www.facebook.com/DBtaoist/photos/a.491053947652910/711189198972716/
* https://dotblogs.com.tw/regionbbs/2011/04/17/sql_server_isolation_level
* http://sharedderrick.blogspot.com/2017/03/sql-serverreadcommittedsnapshot.html
* https://dboffat.blogspot.com/2019/01/sql-servertransactionisolation-level.html
* https://openhome.cc/Gossip/HibernateGossip/IsolationLevel.html
* https://abcg5.pixnet.net/blog/post/115713535-%e8%b3%87%e6%96%99%e5%88%97%e7%89%88%e6%9c%ac%e6%8e%a7%e5%88%b6---%e9%9a%94%e9%9b%a2%e5%b1%a4%e7%b4%9a
* https://docs.microsoft.com/zh-tw/sql/relational-databases/sql-server-transaction-locking-and-row-versioning-guide?view=sql-server-ver15
* https://docs.microsoft.com/zh-tw/sql/t-sql/statements/set-transaction-isolation-level-transact-sql?view=sql-server-ver15
* https://www.red-gate.com/products/dba/sql-monitor/resources/understanding-sql-server-concurrency
* https://dotblogs.com.tw/stanley14/2017/12/16/memoryoptimized_table_snapshot
