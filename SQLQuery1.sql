SELECT Id, 客戶名稱,
		(select count(*) from dbo.客戶銀行資訊 b where c.Id = b.Id) 銀行帳戶數量,
		(select count(*) from dbo.客戶聯絡人 b where c.Id = b.Id) 聯絡人數量
	FROM dbo.客戶資料 c