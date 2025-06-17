-- Mô hình quan hệ thực thể

-- Tạo cơ sở dữ liệu
CREATE database LibraryManagement;
USE LibraryManagement;

-- Tạo bảng Book (Sách)
create table Book(
	BookId int primary key auto_increment,
    Title varchar(200) NOT NULL,
    Author varchar(100),
    Year int,
    Category varchar(100)
);

-- Tạo bảng Reader (Độc giả)
create table Reader(
	ReaderId int primary key auto_increment,
    Name varchar(100) NOT NULL,
    DOB date,
    Address varchar(200),
    Phone varchar(20)
);

-- Tạo bảng Borrow (Mượn sách)
create table Borrow(
	BorrowId int primary key auto_increment,
    ReaderId int,
    BookId int,
    BorrowData date,
    ReturnDate date,
    foreign key (ReaderId) references Reader(ReaderId),
    foreign key (BookId) references Book(BookId)
);