//restaurantDTO
drop table yaguyo_order;
drop table yaguyo_restaurant;
drop table yaguyo_menu;
drop table yaguyo_admin;
drop sequence res_num;


create table yaguyo_restaurant(
	res_num int(100) AUTO_INCREMENT PRIMARY KEY,
	res_qual int(10),
	res_name varchar(50),
	res_pw varchar(50),
	res_tel varchar(50),
	res_location varchar(50),
	res_type varchar(50),
	res_img varchar(100),
	res_notice varchar(100)
);




//menuDTO
create table yaguyo_menu(
   menu_res_name varchar(50),
   menu_name varchar(50),
   menu_price int(100),
   menu_img varchar(100)
)charset=utf8;

//adminDTO
create table yaguyo_admin(
	admin_id varchar(50),
	admin_pw varchar(50)
);

//orderDTO
create table yaguyo_order(
   order_res_name varchar(50),
   order_menu varchar(50),
   order_count int(100),
   order_etc varchar(100),
   order_price int(100),
   order_seat varchar(50),
   order_tel varchar(50),
   order_deli int(10),
   order_time TIMESTAMP
);




insert into yaguyo_admin values('admin','1111');


insert into yaguyo_restaurant values(1,1,'굽네치킨','1','062-123-1452','홈팀 중앙','chicken','g.JPG','튀기지 않아서 담백합니다!');
insert into yaguyo_restaurant values(2,1,'네네치킨','1','062-123-1453','홈팀 좌편','chicken','n.JPG','네네 바로 갑니다~!!');
insert into yaguyo_restaurant values(10,1,'bbq','1','062-423-1452','홈팀 우편','chicken','b.JPG','후라이드는 역시 비비큐!');
insert into yaguyo_restaurant values(4,1,'가장 맛있는 족발','1','062-743-1452','어웨이팀 중앙','etc','j.JPG','세상에서 가장 맛있는 족발!');
insert into yaguyo_restaurant values(5,1,'원할머니보쌈','1','062-14-1332','어웨이팀 좌편','etc','y.JPG','보쌈은 역시 원할머니!');
insert into yaguyo_restaurant values(6,1,'피자헛','1','062-323-1152','어웨이팀 우편','etc','p.JPG','야구관람엔 역시 피자!');
insert into yaguyo_restaurant values(7,1,'국산맥주','1','062-553-5552','홈팀 좌편','drinking','bear.png','맥주도 애국이다!');
insert into yaguyo_restaurant values(8,1,'수입맥주','1','062-423-7355','어웨이팀 좌편','drinking','s.png','맥주의 고장은 한국이 아니다!');
insert into yaguyo_restaurant values(9,1,'음료수','1','062-883-4452','홈팀 중앙','drinking','be.png','시원하고 청량하게!');


insert into yaguyo_menu values('원할머니보쌈','모둠보쌈',29000,'1.jpg');
insert into yaguyo_menu values('원할머니보쌈','보족원쌈',39000,'2.jpg');
insert into yaguyo_menu values('원할머니보쌈','솜씨보쌈',39000,'3.jpg');
insert into yaguyo_menu values('가장 맛있는 족발','흑마늘 족발',39000,'4.jpg');
insert into yaguyo_menu values('가장 맛있는 족발','허니마늘 족발',39000,'5.jpg');
insert into yaguyo_menu values('가장 맛있는 족발','바베큐마늘 족발',39000,'6.jpg');
insert into yaguyo_menu values('피자헛','콤비네이션피자',39000,'7.jpg');
insert into yaguyo_menu values('피자헛','치즈가득피자',39000,'8.jpg');
insert into yaguyo_menu values('피자헛','페퍼로니피자',39000,'9.jpg');
insert into yaguyo_menu values('bbq','양념간장치킨',19000,'c_g1.png');
insert into yaguyo_menu values('bbq','후레이크치킨',19000,'c_g2.png');
insert into yaguyo_menu values('bbq','양념치킨',16000,'c_g3.png');



select * from yaguyo_menu;
select * from yaguyo_restaurant;
select * from yaguyo_order;


