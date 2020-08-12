create database VEGEFOODS
GO
use VEGEFOODS
go 

create table GroupProduct
(
	GroupId varchar(20) primary key,
	GroupName nvarchar(50),
	ImageLink varchar(100),
	Descriptions ntext,
	groupStatus bit -- 1 là hiển thị 0 là 0 hiển thị
)
go

create table Orders
(
	OrderId int identity(1,1) primary key,
	Amount float,
	Quantity int,
	NameCustomer nvarchar(200),
	Addresss nvarchar(200),
	Email varchar(20),
	Phone varchar(11),
	OrderDate DATE,
	OrderStatus bit --đây chính là trạng thái của đơn hàng,
	--và trạng thái này cho chúng ta biết sản phẩm của đơn hàng này đã được gửi cho khách chưa,
	--ví dụ status = 1 là đã gửi,status = 0 là chưa gửi hàng cho khách
)
go 
create table Product
(
	ProductId varchar(50) primary key not null,
	NameProduct nvarchar(50),
	Price float,
	GroupProduct_Id varchar(20) foreign key references GroupProduct(GroupId),
	ImageLink varchar(100),
	Descriptions ntext,
	Quantity int,
	proStatus bit
)
go
create table OrderDetail
(
	OrderId int foreign key references Orders(OrderId),
	ProductId varchar(50) foreign key references Product(ProductId) ,
	Amount float,
	OrderDetailStatus bit, -- lưu trạng thái của giao dịch,
	--dựa vào trạng thái này để biết giao dịch đã thanh toán thành công chưa,ví dụ 1 là thành công,0 là chưa thanh toán
	primary key (OrderId,ProductID)
)
go
create table Users
(
	UserId int  identity(1,1) primary key not null,
	UserName nvarchar(50),
	passW varchar(20),
	Email varchar(20),
	Addresss nvarchar(200),
	Phone varchar(11),
	UserStatus bit --1 là quản trị viên 0 là người dùng 
)
go

go
--Insert to GROUPPRODUCT
insert into GroupProduct values('GR01',N'Rau củ đậu',NULL,N'Các loại rau củ quả',1)
insert into GroupProduct values('GR02',N'Trái cây',NULL,N'Các loại trái cây',1)
insert into GroupProduct values('GR03',N'Nước ép',NULL,N'Nước ép',1)
go
--Insert to PRODUCT
--Rau củ đậu
insert into Product values('P001',N'Bắp cải tím',38000,'GR01','../user/images/bapcaitim.jpg',N'Đây là bắp cải tím',15,1)
insert into Product values('P002',N'Đậu xanh',38000,'GR01','../user/images/dauxanh.jpg',N'Đây là đậu xanh',15,1)
insert into Product values('P003',N'Ớt chuông',38000,'GR01','../user/images/otchuong.jpg',N'Đây là ớt chuông',15,1)
insert into Product values('P004',N'Xúp lơ',38000,'GR01','../user/images/xuplo.jpg',N'Đây là xúp lơ',15,1)
insert into Product values('P005',N'Cà rốt',38000,'GR01','../user/images/carot.jpg',N'Đây là cà rốt',15,1)
insert into Product values('P006',N'Củ tỏi',38000,'GR01','../user/images/toi.jpg',N'Đây là củ tỏi',15,1)
insert into Product values('P007',N'Củ hành tím',38000,'GR01','../user/images/hanhtim.jpg',N'Đây là củ hành tím',15,1)
insert into Product values('P008',N'Cà chua',38000,'GR01','../user/images/cachua.jpg',N'Đây là cà chua',15,1)
insert into Product values('P009',N'Quả ớt',38000,'GR01','../user/images/ot.jpg',N'Đây là quả ớt',15,1)
go

--Trái cây
insert into Product values('P010',N'Táo',38000,'GR02','../user/images/tao.jpg',N'Đây là quả táo',15,1)
insert into Product values('P011',N'Dâu tây',38000,'GR02','../user/images/dautay.jpg',N'Đây là quả dâu tây',15,1)
go
--Nước ép
insert into Product values('P012',N'Nước ép tổng hợp',38000,'GR03','../user/images/nuocep.jpg',N'Đây là nước ép',15,1)



--Insert to USER
insert into Users values(N'Đức','1','duc@gmail.com',N'Hà Nội','0123456789',1)
---đâsd
