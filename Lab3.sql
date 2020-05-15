--------------------------Task 1
select * from guest;
select * from hotel;
select * from room;
select * from booking;
----1
select h.hotelname,r.price,r.type from hotel h,room r where h.hotelno=r.hotelno;
----2
select g.guestname,h.hotelname,b.datefrom,b.dateto 
from guest g,hotel h,booking b
where g.guestno=b.guestno and h.hotelno=b.hotelno;
--------------------------Task 2
