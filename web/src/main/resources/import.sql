SET FOREIGN_KEY_CHECKS=0;

insert into locations(id, formatted, latitude, longitude, city, region, oblast, custom) values('ChIJBUVa4U7P1EAR_kYBF9IxSXY', 'Київ, Україна', '50.4501', '30.5234', 'Київ', 'місто Київ', 'місто Київ', false);
insert into locations(id, formatted, latitude, longitude, city, region, oblast, custom) values('ChIJV5oQCXzdOkcR4ngjARfFI0I', 'Львів, Львівська область, Україна',  '49.839683', '24.029717', 'Львів', 'Львівська область', null, false);


insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email0@gmail.com', 1, 0, 'Andy', 'Wick', 'ТЧ 938232', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809966847', '/resources/users/photos/email0@gmail.com.png', 4, 'ADMIN');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email1@gmail.com', 1, 0, 'Nancy', 'Wick', 'РС 012980', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3805085894', '/resources/users/photos/email1@gmail.com.png', 5, 'MODERATOR');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email2@gmail.com', 1, 0, 'Mary', 'Shelly', 'КТ 882383', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3800522314', '/resources/users/photos/email2@gmail.com.png', 3, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email3@gmail.com', 1, 0, 'Andy', 'Jefferson', 'ЧШ 825147', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3800569576', '/resources/users/photos/email3@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email4@gmail.com', 1, 0, 'Ann', 'Jackson', 'ЖЧ 099523', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3800342842', '/resources/users/photos/email4@gmail.com.png', 5, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email5@gmail.com', 1, 0, 'John', 'Wollowitz', 'ИП 873783', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3807638284', '/resources/users/photos/email5@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email6@gmail.com', 1, 0, 'Andy', 'Hatthaway', 'ФЗ 658567', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3805226116', '/resources/users/photos/email6@gmail.com.png', 5, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email7@gmail.com', 1, 0, 'Thomas', 'White', 'ЖВ 547461', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3803488968', '/resources/users/photos/email7@gmail.com.png', 3, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email8@gmail.com', 1, 0, 'Robert', 'Wollowitz', 'ЧЩ 994078', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802301126', '/resources/users/photos/email8@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email9@gmail.com', 1, 0, 'Samuel', 'Jackson', 'ВА 536532', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809556342', '/resources/users/photos/email9@gmail.com.png', 5, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email16@gmail.com', 1, 0, 'Mary', 'John', 'ВА 136532', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809656342', '/resources/users/photos/email16@gmail.com.png', 4, 'DRIVER');

insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email10@gmail.com', 1, 0, 'Ann', 'Hackson', 'ЖЛ 099523', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3800342842', '/resources/users/photos/email10@gmail.com.png', 5, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email11@gmail.com', 1, 0, 'Dan', 'Wollowitz', 'ИВ 873783', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3807638284', '/resources/users/photos/email11@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email12@gmail.com', 1, 0, 'Tom', 'Hatthaway', 'ФР 658567', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3805226116', '/resources/users/photos/email12@gmail.com.png', 3, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email13@gmail.com', 1, 0, 'Sam', 'White', 'ЗВ 547461', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3803488968', '/resources/users/photos/email13@gmail.com.png', 3, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email14@gmail.com', 1, 0, 'Ann', 'Wollowitz', 'КЩ 994078', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802301126', '/resources/users/photos/email14@gmail.com.png', 2, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email15@gmail.com', 1, 0, 'Doroty', 'Jackson', 'ВЦ 536532', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809556342', '/resources/users/photos/email15@gmail.com.png', 3, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email17@gmail.com', 1, 0, 'Max', 'Wollowitz', 'ЧЧ 994078', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802301126', '/resources/users/photos/email17@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email18@gmail.com', 1, 0, 'Samuel', 'Daniel', 'ТА 536532', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809556342', '/resources/users/photos/email18@gmail.com.png', 4, 'DRIVER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email19@gmail.com', 1, 0, 'Sam', 'Andry', 'КА 136532', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3809656342', '/resources/users/photos/email19@gmail.com.png', 4, 'DRIVER');


insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email21@gmail.com', 1, 0, 'Ann', 'Shelly', 'ГМ 465160', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802420498', '/resources/users/photos/email21@gmail.com.png', 5, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email22@gmail.com', 1, 0, 'Thomas', 'Wollowitz', 'ЗЙ 664936', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3806615850', '/resources/users/photos/email22@gmail.com.png', 5, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email23@gmail.com', 1, 0, 'Ann', 'Hatthaway', 'ЦТ 350484', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3803082695', '/resources/users/photos/email23@gmail.com.png', 4, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email24@gmail.com', 1, 0, 'Samuel', 'Jackson', 'ВО 781392', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3804993541', '/resources/users/photos/email24@gmail.com.png', 4, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email25@gmail.com', 0, 1, 'Ann', 'Shelly', 'НЕ 453327', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802436042', '/resources/users/photos/email25@gmail.com.png', 3, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email26@gmail.com', 1, 0, 'John', 'Shelly', 'ЙН 069135', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3800632159', '/resources/users/photos/email26@gmail.com.png', 3, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email27@gmail.com', 1, 0, 'Ann', 'Jefferson', 'ХМ 375924', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802154942', '/resources/users/photos/email27@gmail.com.png', 2, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email28@gmail.com', 0, 1, 'Andy', 'Hatthaway', 'ЛС 432382', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3802326950', '/resources/users/photos/email28@gmail.com.png', 4, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email29@gmail.com', 1, 0, 'Samuel', 'Wick', 'НХ 048021', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3805257202', '/resources/users/photos/email29@gmail.com.png', 1, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email30@gmail.com', 1, 0, 'Andy', 'Clayborn', 'ХЖ 081313', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3807493590', '/resources/users/photos/email30@gmail.com.png', 4, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('email31@gmail.com', 1, 0, 'Ann', 'Garcia', 'ЕП 524550', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3806648954', '/resources/users/photos/email31@gmail.com.png', 5, 'CUSTOMER');
insert into users (email, approved, blocked, first_name, last_name, passport, password, phone, photo_url, rate, user_role) VALUES ('martin@gmail.com', 1, 0, 'Martin', 'Oderky', 'ЕП 524550', '$2a$10$d2HsbmeXA6x6hz7Wm.3RG.4ZFaZYW95i0ieKN.RItNnrt5sVykGr6', '+3806648951', '/resources/users/photos/email31@gmail.com.png', 5, 'CUSTOMER');


insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (1, '/resources/cars/photos/0_back_photo.png', '/resources/cars/photos/0_front_photo.png', 1.5500712722022927, 1.9375890902528659, 0.9687945451264329, 119.5101383369773, 'Toyota Corolla', 'GE 8385 QS', '8T3T1E9M3D5M1Q6I1', 'email2@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (2, '/resources/cars/photos/1_back_photo.png', '/resources/cars/photos/1_front_photo.png', 0.8080390344564858, 1.0100487930706072, 0.5050243965353036, 415.7865796729437, 'Toyota Corolla', 'WE 5793 HJ', '1D8B2N5Q0U0X8C6R5', 'email3@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (3, '/resources/cars/photos/2_back_photo.png', '/resources/cars/photos/2_front_photo.png', 0.957943440266158, 1.1974293003326975, 0.5987146501663487, 442.88949488521115, 'Honda Accord', 'TI 7964 SS', '6I2Z3Q2W1E5A3G8P0', 'email4@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES  (4, '/resources/cars/photos/3_back_photo.png', '/resources/cars/photos/3_front_photo.png', 1.0201986360234054, 1.2752482950292567, 0.6376241475146284, 284.1200178885863, 'Hyundai Accent', 'YZ 9629 VQ', '7A0T9E1O2M4F0O4W8', 'email5@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (5, '/resources/cars/photos/4_back_photo.png', '/resources/cars/photos/4_front_photo.png', 1.3182691383724967, 1.6478364229656208, 0.8239182114828104, 247.05648966018066, 'Nissan Micra', 'GJ 2599 IW', '5Y5Y7L8G3X0X8E2B3', 'email6@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES  (6, '/resources/cars/photos/5_back_photo.png', '/resources/cars/photos/5_front_photo.png', 1.5366646124795462, 1.9208307655994328, 0.9604153827997164, 117.42434129855887, 'Hyundai Accent', 'TJ 8243 LH', '2M4M4J5O8Q9N6H7O0', 'email7@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (7, '/resources/cars/photos/6_back_photo.png', '/resources/cars/photos/6_front_photo.png', 1.5876634510550929, 1.984579313818866, 0.992289656909433, 201.85722973183184, 'Kia Ceed', 'TQ 0435 VH', '4O5S2R7F8V2H2P2M3', 'email8@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (8, '/resources/cars/photos/7_back_photo.png', '/resources/cars/photos/7_front_photo.png', 1.4351783762566452, 1.7939729703208065, 0.8969864851604032, 360.0958847899743, 'Nissan Micra', 'CG 6444 UG', '6U5A7O3G5K1Z0C0F1', 'email9@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (9, '/resources/cars/photos/8_back_photo.png', '/resources/cars/photos/8_front_photo.png', 0.9874580090622121, 1.2343225113277652, 0.6171612556638826, 192.502680340209, 'Hyundai Accent', 'GF 6275 RQ', '8D7U2B8Y7D9Y1F1E3', 'email10@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (10, '/resources/cars/photos/9_back_photo.png', '/resources/cars/photos/9_front_photo.png', 1.3086004034709848, 1.635750504338731, 0.8178752521693655, 373.4775641620177, 'Nissan Micra', 'XJ 1521 NW', '1U2D8R4Y7X9B4Q4Y1', 'email11@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (11, '/resources/cars/photos/10_back_photo.png', '/resources/cars/photos/10_front_photo.png', 1.3121352199027518, 1.6401690248784397, 0.8200845124392199, 305.44239878314846, 'Scoda Octavia', 'FG 0292 VV', '8U4O6J3Q6U2C2A5N9', 'email12@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (12, '/resources/cars/photos/11_back_photo.png', '/resources/cars/photos/11_front_photo.png', 0.9882125638331378, 1.2352657047914222, 0.6176328523957111, 311.5183776968188, 'Opel Meriva', 'OP 4013 NP', '1W6K8F5O0G5S5P0I0', 'email13@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (13, '/resources/cars/photos/12_back_photo.png', '/resources/cars/photos/12_front_photo.png', 1.4792178148406585, 1.849022268550823, 0.9245111342754115, 487.85273070726487, 'Hyundai Accent', 'TZ 0163 HK', '2C5D0C6D9R8G8M1Y2', 'email14@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (14, '/resources/cars/photos/13_back_photo.png', '/resources/cars/photos/13_front_photo.png', 1.1569132562724835, 1.4461415703406044, 0.7230707851703022, 98.75828870157592, 'Opel Meriva', 'OQ 8674 JE', '7L1T7A6Y9O1D5D2L1', 'email15@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES  (15, '/resources/cars/photos/14_back_photo.png', '/resources/cars/photos/14_front_photo.png', 1.2674880687471415, 1.5843600859339266, 0.7921800429669633, 519.4113604205183, 'Opel Meriva', 'FH 0044 RK', '1I8Q5W5S5V3G0C6H8', 'email16@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES  (16, '/resources/cars/photos/15_back_photo.png', '/resources/cars/photos/15_front_photo.png', 1.0991799287133348, 1.3739749108916683, 0.6869874554458342, 211.81043000031562, 'Nissan Micra', 'MV 4868 RV', '4B0U5O8R9U6L1K4C1', 'email17@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (17, '/resources/cars/photos/16_back_photo.png', '/resources/cars/photos/16_front_photo.png', 0.9904125184747156, 1.2380156480933944, 0.6190078240466972, 60.03018321310003, 'Scoda Octavia', 'QU 4599 TH', '9N8U9B5Q8L5D5F4W1', 'email18@gmail.com');
insert into cars (car_id, vehicle_back_photourl, vehicle_front_photourl, vehicle_height, vehicle_length, vehicle_width, vehicle_weight, vehicle_name, vehicle_number, vehiclevin, driver_id) VALUES (18, '/resources/cars/photos/17_back_photo.png', '/resources/cars/photos/17_front_photo.png', 1.0346744217266206, 1.2933430271582758, 0.6466715135791379, 90.51255086457314, 'Honda Accord', 'VD 7939 NY', '6W8E4F0K6I6U6I2Q4', 'email19@gmail.com');

insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (1, '2016-12-02 00:00:00', 'Glass', 2.00, 6.00, 'OPEN', NULL, '2016-11-28 00:45:40', 5.00, 0.8, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (2, '2016-12-02 00:00:00', 'Tools', 15.00, 3.00, 'OPEN', NULL, '2016-11-28 00:45:40', 2.00, 4.00, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (3, '2016-12-02 00:00:00', 'Potatoes', 18.00, 2.00, 'OPEN', NULL, '2016-11-28 00:45:40', 5.50, 0.44, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (4, '2016-12-02 00:00:00', 'Clothing', 18.00, 2.00, 'IN_PROGRESS', NULL, '2016-11-28 00:45:40', 5.50, 0.44, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (5, '2016-12-02 00:00:00', 'Stuff', 18.00, 2.00, 'CLOSED', NULL, '2016-11-28 00:45:40', 5.50, 0.44, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (6, '2016-12-02 00:00:00', 'Glass', 18.00, 2.00, 'OPEN', NULL, '2016-11-28 00:45:40', 5.50, 0.44, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');
insert into orders(id, arrival_date, description, height, length, order_status, price, registration_date, weight, width, customer_user_id, location_from_id, location_to_id) values (7, '2016-12-02 00:00:00', 'Glass', 18.00, 2.00, 'APPROVED', NULL, '2016-11-28 00:45:40', 5.50, 0.44, 'martin@gmail.com', 'ChIJV5oQCXzdOkcR4ngjARfFI0I', 'ChIJBUVa4U7P1EAR_kYBF9IxSXY');


insert into offers (offer_id, approved, car_id, order_id) VALUES (1, false, 1, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (2, false, 1, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (3, false, 1, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (4, false, 3, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (5, false, 3, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (6, false, 4, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (7, false, 4, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (8, false, 5, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (9, false, 5, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (10, false, 5, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (11, false, 6, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (12, false, 6, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (13, false, 7, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (14, false, 7, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (15, false, 9, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (16, false, 9, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (17, false, 9, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (18, false, 10, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (19, false, 10, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (20, false, 11, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (21, false, 11, 2);
insert into offers (offer_id, approved, car_id, order_id) VALUES (22, false, 11, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (23, false, 12, 3);
insert into offers (offer_id, approved, car_id, order_id) VALUES (24, false, 13, 1);
insert into offers (offer_id, approved, car_id, order_id) VALUES (25, true, 2, 4);
insert into offers (offer_id, approved, car_id, order_id) VALUES (26, true, 15, 5);
insert into offers (offer_id, approved, car_id, order_id) VALUES (27, true, 15, 7);



insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-11 17:16:27.218', 5, 'Shoddy packaging. Horrendous delivery.', 6,  'email25@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-19 03:50:40.973', 4, 'item arrived as advertised TRANSPORTER not especially helpful.', 7,  'email26@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-11 05:53:06.59', 5, 'Excellent service. Delivered exactly as promised, Thank you much...', 137,  'email76@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-29 00:25:03.822', 4, 'Nice JOB, expensive shipping', 10,  'email29@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-06 00:46:19.874', 5, 'Shoddy packaging. Horrendous delivery.', 138,  'email77@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-15 23:45:34.027', 4, 'Dishonest. Will give run around. Knowledge and communicative skills of a two year old.', 11,  'email30@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-04 06:26:28.07', 5, 'Excellent service. Delivered exactly as promised, Thank you much...', 139,  'email78@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-30 00:19:06.9', 5, 'Nice JOB, expensive shipping', 12,  'email31@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-16 07:39:22.189', 3, 'Exceptionally typical delivery. Passable packaging.', 140,  'email79@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-10-01 01:48:51.92', 4, 'Nice JOB, expensive shipping', 141,  'email80@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-19 15:11:40.064', 4, 'Excellent service. Delivered exactly as promised, Thank you much...', 144,  'email83@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-29 22:27:55.369', 3, 'Shoddy packaging. Horrendous delivery.', 146,  'email85@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-03 00:06:03.213', 4, 'item arrived as advertised TRANSPORTER not especially helpful.', 19,  'email38@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-04 06:32:53.948', 4, 'Excellent service. Delivered exactly as promised, Thank you much...', 147,  'email86@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-22 07:04:03.104', 5, 'Dishonest. Will give run around. Knowledge and communicative skills of a two year old.', 148,  'email87@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-09 15:15:33.023', 5, 'Excellent service. Delivered exactly as promised, Thank you much...', 23,  'email42@gmail.com');
insert into feedbacks (approved, created_on, rate, text, order_id, email) VALUES  (1, '2016-09-06 06:59:56.84', 5, 'Exceptionally typical delivery. Passable packaging.', 151,  'email90@gmail.com');
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE hour_dimension (hour INT NOT NULL, PRIMARY KEY (hour));

CREATE TABLE day_dimension (day INT NOT NULL, PRIMARY KEY (day));

CREATE TABLE month_dimension (month_id INT NOT NULL, month VARCHAR(10) NULL, PRIMARY KEY (month_id));

INSERT INTO hour_dimension (hour) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11);
INSERT INTO hour_dimension (hour) VALUES (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23);

INSERT INTO day_dimension (day) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15);
INSERT INTO day_dimension (day) VALUES (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);

INSERT INTO month_dimension (month_id, month) VALUES (1, 'January');
INSERT INTO month_dimension (month_id, month) VALUES (2, 'February');
INSERT INTO month_dimension (month_id, month) VALUES (3, 'March');
INSERT INTO month_dimension (month_id, month) VALUES (4, 'April');
INSERT INTO month_dimension (month_id, month) VALUES (5, 'May');
INSERT INTO month_dimension (month_id, month) VALUES (6, 'June');
INSERT INTO month_dimension (month_id, month) VALUES (7, 'July');
INSERT INTO month_dimension (month_id, month) VALUES (8, 'August ');
INSERT INTO month_dimension (month_id, month) VALUES (9, 'September');
INSERT INTO month_dimension (month_id, month) VALUES (10, 'October');
INSERT INTO month_dimension (month_id, month) VALUES (11, 'November');
INSERT INTO month_dimension (month_id, month) VALUES (12, 'December');

INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 49.866071, 23.957118, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 49.9602678,24.5536551, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.0711054,25.1656323, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.379910, 25.707483, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.602637, 26.519247, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.602061, 27.016033, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.615450, 27.251681, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.581687, 27.688400, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.356229, 28.317024, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.389874, 29.491531, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.425987, 29.961527, 1);
INSERT INTO route_city (visit_date, x, y, order_id) VALUES ('2016-09-11 17:16:27.218', 50.456188, 30.436237, 1);