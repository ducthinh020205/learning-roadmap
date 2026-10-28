USE HocSQL;
GO

DROP TABLE IF EXISTS NhanVien;
GO

CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    PhongBan NVARCHAR(50),
    Luong INT,
    NgayVaoLam DATE,
    Email NVARCHAR(100) NULL
);

INSERT INTO NhanVien (MaNV, HoTen, PhongBan, Luong, NgayVaoLam, Email) VALUES
(1, N'Nguyễn Văn An', N'IT', 15000000, '2023-03-01', 'an@abc.com'),
(2, N'Trần Thị Bình', N'IT', 18000000, '2022-07-15', 'binh@abc.com'),
(3, N'Lê Minh Châu', N'Kế toán', 12000000, '2024-01-10', NULL),
(4, N'Phạm Quốc Dũng', N'Nhân sự', 11000000, '2021-11-20', 'dung@abc.com'),
(5, N'Hoàng Thị Em', N'IT', 20000000, '2020-05-05', NULL),
(6, N'Vũ Văn Phúc', N'Kế toán', 13500000, '2023-09-09', 'phuc@abc.com');

SELECT * FROM NhanVien;

SELECT * FROM NhanVien WHERE PhongBan = N'IT' AND Luong > 16000000;
SELECT * FROM NhanVien WHERE  PhongBan IN (N'Kế toán', N'Nhân sự');
SELECT * FROM NhanVien WHERE  Luong BETWEEN 12000000 AND 15000000;
SELECT * FROM NhanVien WHERE  HoTen LIKE N'N%' OR HoTen LIKE N'P%';
SELECT * FROM NhanVien WHERE  Email IS NULL;
SELECT COUNT(*) AS SoNhanVien,
       AVG(Luong) AS LuongTrungBinh,
       MAX(Luong) AS LuongCaoNhat,
       MIN(Luong) AS LuongThapNhat
       FROM NhanVien;

SELECT COUNT(*) AS NhanVienPhongIT FROM NhanVien WHERE PhongBan = N'IT';
SELECT MAX(Luong) AS LuongCaoNhatPhongKeToan FROM NhanVien WHERE PhongBan = N'Kế toán';
SELECT * FROM NhanVien WHERE NgayVaoLam >= '2023-01-01';