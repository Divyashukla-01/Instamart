
DROP TABLE IF EXISTS schedule_pickup;
DROP TABLE IF EXISTS rental_agreement;
DROP TABLE IF EXISTS order_detail_rental_package;
DROP TABLE IF EXISTS order_detail_product;
DROP TABLE IF EXISTS order_detail;
DROP TABLE IF EXISTS discount;
DROP TABLE IF EXISTS rental_package_rate;
DROP TABLE IF EXISTS rental_package_product;
DROP TABLE IF EXISTS rental_package;
DROP TABLE IF EXISTS product_rate;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS product_type;
DROP TABLE IF EXISTS product_category;
DROP TABLE IF EXISTS catalog_service_area;
DROP TABLE IF EXISTS catalog_service_sector;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS role;

CREATE TABLE role(
id int(11) NOT NULL AUTO_INCREMENT,
name varchar(255) not NULL,
active bit(1) not NULL,
PRIMARY KEY (id));

insert into role(id,name,active)values(1,'Manager',b'1');
insert into role(id,name,active)values(2,'Customer',b'1');


create table user
(
id int(10) auto_increment,
first_name varchar(30),
last_name varchar(30),
dob date,
age int(10),
contact_no varchar(15),
email varchar(30),
username  varchar(50),
password varchar(50),
role_id int(10),
primary key(id),
foreign key(role_id)
references role(id)
);

insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(1,"David","Ross","1985-02-24",34,"9535476863","david12@gmail.com","david12@gmail.com","david12@gmail.com",1);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(2,"Tina","Foster","1973-06-08",46,"7845547896","tina7@gmail.com","tina7@gmail.com","tina7@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(3,"Andy","Myers","1978-02-24",41,"8974563214","andy@redif.com","andy@redif.com","andy@redif.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(4,"Edward","Sanders","1975-03-19",44,"9874563214","edward123@gmail.com","edward123@gmail.com","edward123@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(5,"Jasmin","Castillo","1988-12-12",31,"7845412365","jasmin45@yahoo.com","jasmin45@yahoo.com","jasmin45@yahoo.com",1);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(6,"Eliphaz","Alvarez","1984-01-14",35,"8523563214","eliphaz96@gmail.com","eliphaz96@gmail.com","eliphaz96@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(7,"Dylan","Ruiz","1970-08-06",49,"7525412365","dylan@gmail.com","dylan@gmail.com","dylan@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(8,"Sean","Mendoza","1968-11-11",51,"6589563214","sean45@gmail.com","sean45@gmail.com","sean45@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(9,"Vincent","Gray","1969-05-19",50,"7865412365","gray@gmail.com","gray@gmail.com","gray@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(10,"Xavier","Bennet","1994-12-31",25,"9876544381","bennet@redif.com","bennet@redif.com","bennet@redif.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(11,"Aana","James","1988-01-17",31,"8976544381","james@gmail.com","james@gmail.com","james@gmail.com",2);
insert into user(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(12,"Eadmer","Wood","1993-02-15",26,"7896544381","wood@gmail.com","wood@gmail.com","wood@gmail.com",2);

create table address(
id int(11) not null AUTO_INCREMENT,
user_id int(10),
street varchar(45) not null,
city varchar(45) not null,
state varchar(45) not null,
country varchar(45) not null,
pincode int(11) not null,
primary key(id),
foreign key(user_id) references user(id));

INSERT INTO `address` VALUES (1,1,'1st main','Bangalore','Karnataka','India',577221),(2,2,'2nd main','Chennai','Tamilnadu','India',577001),(3,3,'3rd main','Trivindrum','Kerala','India',597201),(4,4,'4th main','Chennai','Karnataka','India',517208),(5,5,'5th main','Bihar','Patna','India',377201),(6,6,'6th main','Bangalore','Karnataka','India',587201),(7,7,'7th main','Bangalore','Karnataka','India',176201),(8,8,'8th main','Hydrabad','AndraPradesh','India',174201),(9,9,'9th main','Bangalore','Karnataka','India',677201),(10,10,'10th main','Bangalore','Karnataka','India',577201),(11,11,'12st main','Belguam','Karnataka','India',575631),(12,12,'41nd main','Chennai','Tamilnadu','India',582501),(13,2,'15 Main','Chennai','TamilNadu','India',577001),(14,3,'15 Main','Chennai','TamilNadu','India',577001);

CREATE TABLE brand (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO brand (id,name) VALUES (1,'Bosch');
INSERT INTO brand (id,name) VALUES (2,'Samsung');
INSERT INTO brand (id,name) VALUES (3,'LG');
INSERT INTO brand (id,name) VALUES (4,'Whirlpool');
INSERT INTO brand (id,name) VALUES (5,'Onida');
INSERT INTO brand (id,name) VALUES (6,'Stanley');
INSERT INTO brand (id,name) VALUES (7,'Mintwud');
INSERT INTO brand (id,name) VALUES (8,'Philips');

CREATE TABLE material (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO material (id,name) VALUES (1,'Wood');
INSERT INTO material (id,name) VALUES (2,'Steel');
INSERT INTO material (id,name) VALUES (3,'Leather');
INSERT INTO material (id,name) VALUES (4,'Metal');
INSERT INTO material (id,name) VALUES (5,'Ceramic');
INSERT INTO material (id,name) VALUES (6,'Glass');

CREATE TABLE company (
  id int(11) NOT NULL AUTO_INCREMENT,
  address varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO company (id,address,name) VALUES (1,'H-9, Block B-1, Tughlaqabad Extension, Mohan Cooperative Industrial Estate, Tughlakabad, New Delhi, Delhi 110044','Cloudtail Pvt. Ltd.');
INSERT INTO company (id,address,name) VALUES (2,'Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Maark Grand');
INSERT INTO company (id,address,name) VALUES (3,'290, Bharathiyar Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Marvel Furniture / Interiors');
INSERT INTO company (id,address,name) VALUES (4,'Shop No.24, Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Modern Commercial Kitchen Equipments');
INSERT INTO company (id,address,name) VALUES (5,'700, Avinashi Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Royal Agencies');
INSERT INTO company (id,address,name) VALUES (6,'No. 150-151, Bharathiyar Rd, NG Narayanasamy St, Siddhapudur, New Siddhapudur, Coimbatore, Tamil Nadu 641044','Bloom Electronics Private Limited');
INSERT INTO company (id,address,name) VALUES (7,'10, Sathy Rd, C.K.Colony, B.K.R Nagar, Gandhipuram, Coimbatore, Tamil Nadu 641012','Securico Electronics I Ltd');
INSERT INTO company (id,address,name) VALUES (8,'S-26, 2nd Floor, No 61-71, Brooke Fields Plaza, Dr Krishnasamy Mudaliyar Rd, Coimbatore, Tamil Nadu 641001','Reliance Digital');

CREATE TABLE catalog_service_sector (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO catalog_service_sector (id,name) VALUES (1,'Home');
INSERT INTO catalog_service_sector (id,name) VALUES (2,'Office');

CREATE TABLE catalog_service_area (
  id int(11) NOT NULL AUTO_INCREMENT,
  category varchar(255) DEFAULT NULL,
  catalog_service_sector_id int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector (id)
);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (1,'Living Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (2,'Conference Room',2);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (3,'Private Office',2);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (4,'Dining Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (5,'Laundry Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (6,'Bed Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (7,'Kitchen',1);

CREATE TABLE product_category(
id int(11) NOT NULL AUTO_INCREMENT,
category varchar(255) Not NULL,
catalog_service_area_id int(11) NOT NULL,
PRIMARY KEY(id),
foreign key(catalog_service_area_id) references catalog_service_area(id));

insert into product_category(id,category,catalog_service_area_id)values(1,'Furniture',1);
insert into product_category(id,category,catalog_service_area_id)values(2,'Electronics',1);
insert into product_category(id,category,catalog_service_area_id)values(3,'Furniture',4);
insert into product_category(id,category,catalog_service_area_id)values(4,'Electronics',7);
insert into product_category(id,category,catalog_service_area_id)values(5,'Furniture',7);
insert into product_category(id,category,catalog_service_area_id)values(6,'Electronics',2);
insert into product_category(id,category,catalog_service_area_id)values(7,'Furniture',2);
insert into product_category(id,category,catalog_service_area_id)values(8,'Electronics',6);
insert into product_category(id,category,catalog_service_area_id)values(9,'Furniture',6);
INSERT INTO product_category (id,category,catalog_service_area_id) VALUES (10,'Appliances',1);
INSERT INTO product_category (id,category,catalog_service_area_id) VALUES (11,'Appliances',4);
INSERT INTO product_category (id,category,catalog_service_area_id) VALUES (12,'Appliances',7);
INSERT INTO product_category (id,category,catalog_service_area_id) VALUES (13,'Appliances',2);
insert into product_category(id,category,catalog_service_area_id)values(15,'Appliances',6);
insert into product_category(id,category,catalog_service_area_id)values(16,'Appliances',6);

CREATE TABLE product_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  type varchar(255) DEFAULT NULL,
  product_category_id int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_category_id) REFERENCES product_category (id)
);
INSERT INTO product_type (id,type,product_category_id) VALUES (1,'Chair',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (2,'TV',2);
INSERT INTO product_type (id,type,product_category_id) VALUES (3,'Sofa',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (4,'Washing Machine',16);
INSERT INTO product_type (id,type,product_category_id) VALUES (5,'Table',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (6,'Bed',9);
INSERT INTO product_type (id,type,product_category_id) VALUES (7,'Oven',12);
INSERT INTO product_type (id,type,product_category_id) VALUES (8,'Desk',7);
INSERT INTO product_type (id,type,product_category_id) VALUES (9,'Mic',6);
INSERT INTO product_type (id,type,product_category_id) VALUES (10,'Laptop',6);
INSERT INTO product_type (id,type,product_category_id) VALUES (11,'Dinning Table',3);

CREATE TABLE product (
  id int(11) NOT NULL AUTO_INCREMENT,
  color varchar(255) DEFAULT NULL,
  dimensions varchar(255) DEFAULT NULL,
  is_available bit(1) DEFAULT NULL,
  is_visible bit(1) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  brand_id int(11) DEFAULT NULL,
  catalog_service_area_id int(11) DEFAULT NULL,
  catalog_service_sector_id int(11) DEFAULT NULL,
  company_id int(11) DEFAULT NULL,
  material_id int(11) DEFAULT NULL,
  product_category_id int(11) DEFAULT NULL,
  product_type_id int(11) DEFAULT NULL,
  city varchar(255) DEFAULT NULL,
  image_url varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (catalog_service_area_id) REFERENCES catalog_service_area (id),
  FOREIGN KEY (brand_id) REFERENCES brand (id),
  FOREIGN KEY (product_category_id) REFERENCES product_category (id),
  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector (id),
  FOREIGN KEY (product_type_id) REFERENCES product_type (id),
  FOREIGN KEY (material_id) REFERENCES material (id)
);		
	

INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (1,'Brown','121 X 121',b'1',b'1','Designer chair',1,1,1,1,1,1,1,'Bangalore','resources/images/products/p1.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (2,'Red','121 X 121',b'1',b'1','Recliner',1,1,1,5,1,1,1,'Coimbatore','resources/images/products/p2.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (3,'Blue','90 X 60 cm',b'1',b'1','Bosch 6.5Kg Washing Machines',1,5,1,2,2,16,4,'Chennai','resources/images/products/p3.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (4,'Dark Brown','H 29 x W 57 x D 33',b'1',b'1','Momoko 6 Seater Dining Set',6,4,1,6,2,3,11,'Trivindrum','resources/images/products/p4.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (5,'white','60 x 78',b'1',b'1','Takai Queen Size Beds',2,6,1,4,2,9,6,'Hydrabad','resources/images/products/p5.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (6,'Black','52 x 40.2 x 35.6 cm',b'1',b'1','Philips 25-Litre Digital Oven',8,7,1,4,2,12,7,'Chennai','resources/images/products/p6.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (7,'Brown','80 cm (w)  x 192 cm (h)',b'1',b'0','Ebony Wardrobe',8,6,1,3,1,9,6,'Chennai','resources/images/products/p7.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (8,'Black','14 inch',b'0',b'1','Lenovo Ideapad Core i3',8,2,2,8,2,6,10,'Chennai','resources/images/products/p8.png');

CREATE TABLE product_rate (
  id int(11) NOT NULL AUTO_INCREMENT,
  end_date datetime DEFAULT NULL,
  rate varchar(255) DEFAULT NULL,
  start_date datetime DEFAULT NULL,
  product_id int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES product (id)
);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (1,NULL,'1500','2019-10-22 09:37:36',1);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (2,NULL,'1540','2019-10-22 11:11:11',2);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (3,NULL,'15000.0','2019-10-22 12:13:45',3);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (4,NULL,'28000.0','2019-10-22 12:20:34',4);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (5,NULL,'12500.0','2019-10-22 12:27:58',5);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (6,NULL,'6000.0','2019-10-22 12:35:30',6);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (7,NULL,'7000.0','2019-10-22 12:35:30',7);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (8,NULL,'27000.0','2019-10-22 12:35:30',8);

CREATE TABLE rental_package (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(25) DEFAULT NULL,
  is_visible bit(1) not NULL,
  is_available bit(1) not NULL,
  created_date date not NULL,
  city varchar(50) not null,
  image_url varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(1,'Pacakge1',1,1,"2018-11-11",'Bengaluru','resources/images/packages/r1.png');
insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(2,'Pacakge2',1,1,"2018-08-25",'Chennai','resources/images/packages/r2.png');
insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(3,'Pacakge3',1,1,"2018-08-25",'Chennai','resources/images/packages/r3.png');

CREATE TABLE rental_package_rate (
  id int(11) NOT NULL AUTO_INCREMENT,
  rental_package_id int(11) NOT NULL,
  rate int(11) NOT NULL,
  start_date date not NULL,
  end_date date NULL,
  PRIMARY KEY (id),
  foreign key(rental_package_id) references rental_package(id));

insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(1,1,'2016-12-12',NULL,22500);
insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(2,2,'2018-09-10',NULL,42040);
insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(3,3,'2018-10-10',NULL,32040);


CREATE TABLE rental_package_product (
  id int(11) NOT NULL AUTO_INCREMENT,
  package_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  PRIMARY KEY (id),
  foreign key(package_id) references rental_package(id),
  foreign key(product_id) references product(id));
insert into rental_package_product(id,package_id,product_id)values(1,1,1);
insert into rental_package_product(id,package_id,product_id)values(2,1,3);
insert into rental_package_product(id,package_id,product_id)values(3,1,6);
insert into rental_package_product(id,package_id,product_id)values(4,2,2);
insert into rental_package_product(id,package_id,product_id)values(5,2,4);
insert into rental_package_product(id,package_id,product_id)values(6,2,5);
insert into rental_package_product(id,package_id,product_id)values(7,3,7);
insert into rental_package_product(id,package_id,product_id)values(8,3,8);

CREATE TABLE order_detail
(
id int(11) NOT NULL AUTO_INCREMENT,
user_id int(11) Not NULL,
name varchar(255) Not NULL,
contact_no varchar(255) Not NULL,
ordered_date date Not NULL,
delivery_date date Not NULL,
delivery_time varchar(255) Not NULL,
address_id int(11) Not NULL,
cost_per_month int(11) Not NULL,
PRIMARY KEY(id),
foreign key (user_id) references user(id),
foreign key (address_id) references address(id));

INSERT INTO `order_detail` VALUES (1,2,'Tina','7845547896','2020-03-20','2020-03-31','10.00 AM',2,2000),
(2,3,'Andy','8974563214','2020-04-16','2020-04-21','12.30 PM',2,3000),
(3,5,'Jasmin','7845412365','2020-03-02','2020-03-11','6.00 PM',5,2500),
(4,4,'Edward','9874563214','2019-11-10','2020-03-18','4.50 PM',4,5000),
(5,2,'kiran','2589631470','2019-08-14','2019-08-17','2:45 PM',2,74080),
(6,2,'Harry','5896471230','2019-05-12','2019-05-13','10:45 PM',13,15000),
(7,3,'Kiran','8796543210','2019-08-12','2019-08-13','10:45 PM',14,74080),
(8,3,'Jeeva','9876543210','2019-06-13','2019-06-13','6:00 PM',14,21000);

CREATE TABLE order_detail_product
(
id int(11) NOT NULL AUTO_INCREMENT,
order_detail_id int(11) NOT NULL,
product_id int(11) NOT NULL,
PRIMARY KEY(id),
foreign key (order_detail_id) references order_detail(id),
foreign key (product_id) references product(id));

INSERT INTO order_detail_product VALUES (1,1,3),(2,3,5),(3,6,3),(4,8,3),(5,8,6);

CREATE TABLE order_detail_rental_package
(
id int(11) NOT NULL AUTO_INCREMENT,
order_detail_id int(11) NOT NULL,
package_id int(11) NOT NULL,
PRIMARY KEY(id),
foreign key (order_detail_id) references order_detail(id),
foreign key (package_id) references rental_package(id));

INSERT INTO order_detail_rental_package VALUES (1,2,1),( 2,4,2),(3,5,2),(4,5,3),(5,7,2),(6,7,3);

CREATE TABLE discount
(
id int(11) NOT NULL AUTO_INCREMENT,
tenure int(11) NOT NULL,
percentage int(11) NOT NULL,
PRIMARY KEY(id));
insert into discount(id,tenure,percentage)values(1,6,4);
insert into discount(id,tenure,percentage)values(2,9,6);
insert into discount(id,tenure,percentage)values(3,12,10);

CREATE TABLE rental_agreement
(
id int(11) NOT NULL AUTO_INCREMENT,
order_detail_id int(11) Not NULL,
agreement_number varchar(255) Not NULL,
company_id int(11) Not NULL,
tenure int(11) Not NULL,
booked_date date Not NULL,
delivery_date date Not NULL,
renewal_date date Not NULL,
expiry_date date Not NULL,
discount_id int(11) Not NULL,
total_cost int(11) Not NULL,
PRIMARY KEY(id),
foreign key (order_detail_id) references order_detail(id),
foreign key (discount_id) references discount(id),
foreign key (company_id) references company(id));

INSERT INTO rental_agreement VALUES 
(1,5,'INS5U2V0',1,9,'2019-08-14','2019-08-17','2020-05-18','2020-05-17',2,626717),
(2,6,'INS6U2V0',1,6,'2019-05-12','2019-05-13','2019-11-14','2019-11-13',1,86400),
(3,7,'INS7U3V0',1,12,'2019-08-12','2019-08-13','2020-08-14','2020-08-13',3,800064),
(4,8,'INS8U3V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,177660),
(5,1,'INS1U2V0',1,6,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,157660),
(6,2,'INS2U3V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,167660),
(7,3,'INS3U5V0',1,12,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,147660),
(8,4,'INS4U4V0',1,9,'2019-06-13','2019-06-13','2020-03-14','2020-03-13',2,189000);

CREATE TABLE schedule_pickup
(
id int(11) NOT NULL AUTO_INCREMENT,
rental_agreement_id int(11) Not NULL,
pickup_date date Not NULL,
pickup_time varchar(45) Not NULL,
PRIMARY KEY(id),
foreign key (rental_agreement_id) references rental_agreement(id));
