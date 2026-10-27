USE HocSQL;
GO

DROP TABLE IF EXISTS SinhVien;
GO

CREATE TABLE SinhVien (
    MaSV INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    Tuoi INT,
    Lop NVARCHAR(20)
);

INSERT INTO SinhVien VALUES
(1, N'Nguyễn Văn An', 20, N'KTPM1'),
(2, N'Trần Thị Bình', 21, N'KTPM1'),
(3, N'Lê Minh Châu', 20, N'KTPM2'),
(4, N'Phạm Quốc Dũng', 22, N'KTPM2');

SELECT * FROM SinhVien;

SELECT HoTen  FROM SinhVien where Lop = 'KTPM2';

SELECT * FROM SinhVien where Tuoi > '20' ORDER BY Tuoi DESC;

SELECT TOP 2 * FROM SinhVien;

INSERT INTO SinhVien(MaSV, HoTen,Tuoi,Lop) values (5, 'Ma Duc Thinh', 25, 'KTPM5');
SELECT * FROM SinhVien;