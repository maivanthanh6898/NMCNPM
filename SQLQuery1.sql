create proc insert_nguyenlieu
@ten text,
@soluong int,
@dongia int,
@donvi int
as begin
insert into tbl_nguyen_lieu values(@ten,@soluong,@dongia,@donvi)
end;

create proc update_nguyenlieu
@ma int,
@ten text,
@soluong int,
@dongia int,
@donvi int
as begin
update tbl_nguyen_lieu set ten=@ten,so_luong=@soluong,don_gia=@dongia,don_vi=@donvi where id=@ma
end

create proc get_nguyenlieu_theoid
@ma int
as begin 
select * from tbl_nguyen_lieu where id=@ma
end

create proc get_dsnguyenlieu
as begin
select * from tbl_nguyen_lieu
end