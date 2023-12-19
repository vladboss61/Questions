
SELECT * FROM sys.dm_db_index_physical_stats (DB_ID(N'LCCS5'), OBJECT_ID(N'dbo.User'), NULL, NULL, NULL) AS a
	JOIN sys.indexes AS b
	ON a.object_id = b.object_id AND a.index_id = b.index_id;