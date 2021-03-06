create database QuanLyNhanSu
go -- quan trong de excute 1 lan
use QuanLyNhanSu
go -- quan trong de excute 1 lan
create table Staff( --nhan vien can bo(Nhân Sự)
	MaNV int identity(100,1) constraint PK_Staff not null primary key,
	Ho nvarchar(20) not null,
	Ten nvarchar(15) not null,
	Dob date check (Dob < getdate()) not null,
	Sex char(1) check (Sex in ('M','F','U') ) not null,--check M: nam, F: Nu , U : other
	CMND int not null Unique check (len(CMND)=9 or len (CMND)=12 and len(CMND)<20),--check (len CMND 9 or 12 or 16 number)
	PW varchar(50) not null,
	Status nvarchar(100), --4 Status : Nhân Viên Nghĩ Hưu, Nhân Viên Đi Làm			
)
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai Văn', N'Tú', '03/30/1821','M','197363055','123',N'SV thực tập 01/2017')-- this is a record
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Vũ Xuân', N'Quỳnh', '02/20/1997','F','193412341','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Trần', N'Thế', '09/20/1996','M','194031324','123',N'Nhân viên nghĩ hưu')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai ', N'Hồng Dương', '03/29/1997','M','175343231','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai ',N'Hợp', '03/01/1995','M','183454312','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Trần', N'Hồng Dan', '09/19/1997','F','193450341','123',N'Nhân viên nghĩ hưu')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Xuân', N'Anh', '02/20/1997','F','193411341','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Trần', N'Cường', '09/20/1996','M','194034324','123',N'Nhân viên nghĩ hưu')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai ', N'Đỗ Dương', '03/29/1997','M','115343231','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Bùi ',N'Hợp', '03/01/1995','M','183444312','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Vũ', N'Hồng Quân', '09/19/1997','F','113450341','123',N'Nhân viên nghĩ hưu')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Vũ Ánh', N'Quỳnh', '02/20/1997','F','193212341','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Trần Văn', N'Đạt', '09/20/1996','M','194035324','123',N'Nhân viên nghĩ hưu')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai ', N'Tài Dương', '03/29/1997','M','175343211','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Mai ',N'Nguyễn Anh', '03/01/1995','M','183454342','123',N'Nhân viên đi làm')
insert into Staff(Ho, Ten,Dob, Sex, CMND,PW,Status)values (N'Trần', N'Linh Dan', '09/19/1997','F','191450341','123',N'Nhân viên nghĩ hưu')

select * from Staff
create table Departmant( -- bo phan, don vi
	MaDV int identity(1000,1) constraint PK_Departmant not null primary key,
	TenDV nvarchar(50) not null,
	Tel varchar(12) not null check (Tel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' or Tel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' 
	or Tel like '[0-9]%-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ) ,-- 11 or 12 number, have character " - "
	Email varchar(50) check (Email like '[a-z]%@[a-z]%.[a-z]%') not null-- %@%.%
)
insert into Departmant(TenDV, Tel, Email) values (N'Đảng Ủy','0236-3896399','danguy@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Ban Giám Hiệu','0234-6443321','bangiamhieu@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Hội Đồng Khoa Học & Đào Tạo','0234-2333141','hoidongkhoahocvadaotao@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Phòng Tổ Chức Hành Chính','0256-3123417','phongtochuchanhchinh@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Phòng Đào Tạo','0290-8567745','phongdaotao@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Phòng Kế Hoạch Tài Chính','0216-9362745','phongkethoachtaichinh@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Phòng Công Tác Học Sinh, Sinh Viên','0245-9262846','phongcongtachocsinhsinhvien@gmail.com')
insert into Departmant(TenDV, Tel, Email) values (N'Khoa Điện','0289-3856384','khoadien@gmail.com')
select * from Departmant
create table DSNV( --  nhan vien can bo list
	MaNV int  constraint FK1_DSNV foreign key references Staff(MaNV),
	MaDV int  constraint FK2_DSNV foreign key references Departmant(MaDV),
	ChucVu nvarchar(30),
	CapNhat date default getdate(),
	GhiChu nvarchar(150),
	constraint PK_DSNV primary key(MaNV,MaDV)
)
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('100','1000',N'Bí thư',getdate(),N'Ghi chú 1')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('101','1000',N'Phó Trưởng phòng',getdate(),N'Ghi chú 2')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('102','1000',N'Nhân viên',getdate(),N'Ghi chú 3')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('103','1001',N'Trưởng phòng',getdate(),N'Ghi chú 4')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('104','1001',N'Nhân viên',getdate(),N'Ghi chú 5')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('105','1001',N'Nhân viên',getdate(),N'Ghi chú 6')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('106','1002',N'Nhân viên',getdate(),N'Ghi chú 7')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('107','1002',N'Nhân viên',getdate(),N'Ghi chú 8')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('108','1002',N'Nhân viên',getdate(),N'Ghi chú 9')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('109','1003',N'Nhân viên',getdate(),N'Ghi chú 10')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('110','1003',N'Nhân viên',getdate(),N'Ghi chú 11')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('111','1004',N'Nhân viên',getdate(),N'Ghi chú 12')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('112','1004',N'Nhân viên',getdate(),N'Ghi chú 13')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('113','1004',N'Nhân viên',getdate(),N'Ghi chú 14')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('114','1005',N'Nhân viên',getdate(),N'Ghi chú 15')
insert into DSNV(MaNV,MaDV, ChucVu,CapNhat,GhiChu) values ('115','1005',N'Nhân viên',getdate(),N'Ghi chú 16')
select * from DSNV
create table SuKien(		
	MaSK int identity(10000,1) primary key not null, -- F doi K
	TenSK nvarchar(200) not null,
	MoTa nvarchar(200),	
)
insert into SuKien (TenSK, MoTa) values (N'Cập nhật tuyển dụng ',N'Quản lý về quá trình tuyển dụng')
insert into SuKien (TenSK, MoTa) values (N'Cập nhật hồ sơ nhân viên',N'Quản lý hồ sơ nhân viên')
insert into SuKien (TenSK, MoTa) values (N'Cập nhật quá trình công tác',N'Quản lý quá trình công tác')
insert into SuKien (TenSK, MoTa) values (N'Cập nhật thông tin lương',N'Quản lý thông tin lương')
insert into SuKien (TenSK, MoTa) values (N'Cập nhật phúc lợi nhân viên',N'Quản lý về các chế độ phúc lợi của nhân viên')
insert into SuKien (TenSK, MoTa) values (N'Cập nhật định kỳ',N'Báo cáo khi ban lãnh đạo yêu cầu, định kỳ')
select * from SuKien
create table NhatKy(
	MaNV int  constraint FK1_NhatKy foreign key references Staff(MaNV) not null, 
	MaSK int constraint FK2_NhatKy foreign key references SuKien(MaSK) not null,
	NoiDung nvarchar(200),
	NgayHieuLuc date default getdate(),
	QDSo varchar(20),
	LogID int identity (100000,1) not null constraint PK_NhatKy primary key,	
)
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('100','10000',N'Quản lý nhật xuất nhân viên từ excel và nhân viên đã thôi việc','QD So 1')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('100','10000',N'Quản lý cập nhật lương nhân viên nghĩ hưu 2','QD So 1')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('100','10000',N'Quản lý cập nhật lương nhân viên nghĩ hưu 3','QD So 1')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('100','10000',N'Quản lý cập nhật lương nhân viên nghĩ hưu 4','QD So 1')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('101','10001',N'Quản lý danh mục bảng lượng và báo cáo theo tháng','QD So 2')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('102','10002',N'Quản lý danh mục chấm công khấu trừ','QD So 3')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('103','10003',N'Quản lý nhật xuất nhân viên ứng lương','QD So 4')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('104','10004',N'Quản lý nhật xuất nhân viên tăng ca','QD So 5')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('105','10005',N'Quản lý nhật xuất nhân viên bảng công','QD So 6')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('105','10004',N'Quản lý nhật xuất nhân viên bảng công','QD So 6')
insert into NhatKy(MaNV, MaSK, NoiDung, QDSo) values ('105','10003',N'Quản lý nhật xuất nhân viên bảng công','QD So 6')
select * from NhatKy
/*
-- xem nhật ký của 1 nhân viên:
select * from NhatKy,Staff,SuKien 
where
NhatKy.MaSK = SuKien.MaSK and
NhatKy.MaNV = Staff.MaNV and 
NhatKy.MaNV='105'
select * from NhatKy
--Complier and Excute: 
drop database QuanLyNhanSu -- Off then open SQL up.

----Note: 
--- Matter about inset data: 
	--name departmants, staff manager for college or university


*/