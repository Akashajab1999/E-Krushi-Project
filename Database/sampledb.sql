

INSERT INTO users(email,password,contactnumber) VALUES ('akashajab@gmail.com','akash@12',9089777678);
INSERT INTO users(email,password,contactnumber) VALUES ('sahil@gmail.com','sahil@12',9067894590);
INSERT INTO users(email,password,contactnumber) VALUES ('akshaytanpure@gmail.com','akshay@12',9881571271);
INSERT INTO users(email,password,contactnumber) VALUES ('vedantyadav@gmail.com','vedant@12',9089898078);
INSERT INTO users(email,password,contactnumber) VALUES ('rohitgore@gmail.com','rohit@12',9881571273);
INSERT INTO users(email,password,contactnumber) VALUES ('rushikeshchikne@gmail.com','rushikesh12',9881571274);
INSERT INTO users(email,password,contactnumber) VALUES ('shubham@gmail.com','shubham@12',9881571275);
INSERT INTO users(email,password,contactnumber) VALUES ('chetan@gmail.com','chetan@12',9081571275);
INSERT INTO users(email,password,contactnumber) VALUES ('abhishek@gmail.com','abhishek@12',9181571275);
INSERT INTO users(email,password,contactnumber) VALUES ('anil@gmail.com','anil@12',9281571275);
INSERT INTO users(email,password,contactnumber) VALUES ('rohan@gmail.com','rohan@12',9381571275);
INSERT INTO users(email,password,contactnumber) VALUES ('ajay@gmail.com','ajay@12',9481571275);
INSERT INTO users(email,password,contactnumber) VALUES ('vijay@gmail.com','vijay@12',9581571275);
INSERT INTO users(email,password,contactnumber) VALUES ('tara@gmail.com','tara@12',9181578790);
INSERT INTO users(email,password,contactnumber) VALUES ('anaya@gmail.com','anaya@12',9281404760);
INSERT INTO users(email,password,contactnumber) VALUES ('riddhi@gmail.com','riddhi@12',7498571275);
INSERT INTO users(email,password,contactnumber) VALUES ('soumya@gmail.com','soumya@12',7356771275);
INSERT INTO users(email,password,contactnumber) VALUES ('ruhi@gmail.com','ruhi@12',9581573465);
INSERT INTO users(email,password,contactnumber) VALUES ('akshita@gmail.com','akshita@12',7498012275);
INSERT INTO users(email,password,contactnumber) VALUES ('aarohi@gmail.com','aarohi@12',7356771350);
INSERT INTO users(email,password,contactnumber) VALUES ('aaradhya@gmail.com','aaradhya@12',9581573054);
INSERT INTO users(email,password,contactnumber) VALUES ('pratimapatil@gmail.com','pratima@12',7709736561);
INSERT INTO users(email,password,contactnumber) VALUES ('kiranrakshe@gmail.com','kiran@12',7709736562);
INSERT INTO users(email,password,contactnumber) VALUES ('mayurgorade@gmail.com','mayur@12',7703726563);



-- ROLE TABLE DATA
INSERT INTO roles(role) VALUES ('Admin');
INSERT INTO roles(role) VALUES ('Customer');
INSERT INTO roles(role) VALUES ('Employee');
INSERT INTO roles(role) VALUES ('Supplier');
INSERT INTO roles(role) VALUES ('Shipper');
INSERT INTO roles(role) VALUES ('SubjectMatterExpert');

select * from products;

-- CUSTOMERS DATA
INSERT INTO customers(firstname,lastname,userid) VALUES('akash','ajab',1);                       
INSERT INTO customers(firstname,lastname,userid) VALUES('sahil','mankar',2);
INSERT INTO customers(firstname,lastname,userid) VALUES('akshay','tanpure',3);             
INSERT INTO customers(firstname,lastname,userid) VALUES('vedant','yadav',4);     
INSERT INTO customers(firstname,lastname,userid) VALUES('rohit','gore',5);     
INSERT INTO customers(firstname,lastname,userid) VALUES('rushikesh','chikne',6);                       
INSERT INTO customers(firstname,lastname,userid) VALUES('shubham','teli',7);


-- CATEGORIES DATA
INSERT INTO categories(title,description,image) VALUES('seeds','crops growth fastly','/image/seeds.jpg');
INSERT INTO categories(title,description,image) VALUES('Agriculture equipments','crops growth fastly','/image/equipments.jpg');
INSERT INTO categories(title,description,image) VALUES('fertilizers','crops growth fastly','/image/fertilizers.jpg');
INSERT INTO categories(title,description,image) VALUES('pesticides','for spraying','/image/pesticide.jpg');
INSERT INTO categories(title,description,image) VALUES('Agricultural sprayers','for spraying','/image/sprayers.jpg');
INSERT INTO categories(title,description,image) VALUES('plants micronutrients','for spraying','/image/micronutrient.jpg');

-- PRODUCTS DATA
INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('oats',10,500,'/assets/image/oat.jfif',1);
INSERT INTO products(title,unitprice,stockavailable,image,categoryid)VALUES('wheat',14,50,'/assets/image/wheat.jpg',1);
INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('corn',1000,50,'/assets/image/corn.jfif',1);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('barley',200,50,'/image/sunflower.jpg',1);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('sorghum',2200,50,'/image/sunflower.jpg',1);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('sunflower',1200,50,'/image/sunflower.jpg',1);


INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('tractor',1400,50,'/assets/image/tractor.jfif',2);
INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('harvesters',2200,50,'/assets/image/harvestor.jfif',2);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid)values('balers',1000,50,'/image/sunflower.jpg',2);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('fertilizer spreaders',109,50,'/image/sunflower.jpg',2);

-- FERTILIZERS
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('wood ash',1200,500,'/image/woodash.jpg',3);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('bone meal',1500,500,'/image/bonemeal.jpg',3);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('blood meal',1400,500,'/image/bloodmeal.jpg',3);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('manure',2100,500,'/image/manure.jpg',3);

-- PESTISIDES
INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('karate',1100,500,'/assets/image/karate.jfif',4);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('soloman',3100,500,'/image/manure.jpg',4);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid)VALUES('wood ash',1900,500,'/image/woodash.jpg',4);

-- -- Agricultural sprayers
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('Knapsack sprayer',200,500,'/image/woodash.jpg',5);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid)VALUES('portable power sprayer',500,500,'/image/manure.jpg',5);
-- INSERT INTO products(title,unitprice,stockavailable,image,categoryid) VALUES('mist dust sprayer',800,500,'/image/woodash.jpg',5);

-- ORDERS DATA
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-12-01 12:12:12','2020-12-02 10:12:12',1,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-11-01 12:12:12','2020-11-02 10:02:12',2,800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-10-01 12:12:12','2020-10-02 10:22:12',3,700,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2021-12-01 12:10:12','2021-12-02 10:12:12',4,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2022-11-01 12:11:00','2022-11-02 10:02:12',5,1800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2023-10-01 12:13:11','2023-10-02 10:22:12',6,7100,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-05-01 12:14:13','2020-05-02 10:12:12',7,5020,'initiated');

INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-12-05 12:12:12','2020-12-02 10:12:12',1,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-11-05 12:12:12','2020-11-02 10:02:12',2,800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-10-10 12:12:12','2020-10-02 10:22:12',3,700,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-09-01 12:10:12','2021-12-02 10:12:12',4,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-08-01 12:11:00','2022-11-02 10:02:12',5,1800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-07-01 12:13:11','2023-10-02 10:22:12',6,7100,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-06-01 12:14:13','2020-05-02 10:12:12',7,5020,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-05-01 12:12:12','2020-12-02 10:12:12',1,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-04-01 12:12:12','2020-11-02 10:02:12',2,800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-03-01 12:12:12','2020-10-02 10:22:12',3,700,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-02-01 12:10:12','2020-02-02 10:12:12',4,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:11:00','2020-11-02 10:02:12',5,1800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:13:11','2023-01-02 10:22:12',6,7100,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-05-02 12:14:13','2020-05-02 10:12:12',7,5020,'initiated');

INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-02-05 12:12:12','2020-12-02 10:12:12',1,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-02-05 12:12:12','2020-11-02 10:02:12',2,800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-02-10 12:12:12','2020-10-02 10:22:12',3,700,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:10:12','2021-12-02 10:12:12',4,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:11:00','2022-11-02 10:02:12',5,1800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:13:11','2023-10-02 10:22:12',6,7100,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-01-01 12:14:13','2020-05-02 10:12:12',7,5020,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-03-01 12:12:12','2020-12-02 10:12:12',1,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-03-01 12:12:12','2020-11-02 10:02:12',2,800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-03-01 12:12:12','2020-10-02 10:22:12',3,700,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-04-01 12:10:12','2020-12-02 10:12:12',4,500,'initiated');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-04-01 12:11:00','2020-11-02 10:02:12',5,1800,'delivered');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-04-01 12:13:11','2023-10-02 10:22:12',6,7100,'cancelled');
INSERT INTO orders(orderdate,shippeddate,custid,total,status) VALUES ('2020-06-02 12:14:13','2020-06-02 10:12:12',7,5020,'initiated');

-- ORDER_DETAILS DATA
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (1,2,20);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (2,2,25);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (3,1,40);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (4,3,15);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (4,3,48);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (5,5,41);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (7,6,63);
INSERT INTO orderdetails(orderid,productid,quantity) VALUES (6,2,63);


-- CARTS DATA
INSERT INTO carts(custid) VALUES (1);
INSERT INTO carts(custid) VALUES (2);
INSERT INTO carts(custid) VALUES (3);
INSERT INTO carts(custid) VALUES (4);
INSERT INTO carts(custid) VALUES (5);




-- CARTS ITEMS DATA
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(1,1,20);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(2,2,40);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(2,2,40);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(3,4,10);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(3,4,50);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(3,2,260);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(4,3,200);
INSERT INTO cartitems(cartid,productid ,quantity) VALUES(4,3,201);


-- PAYMENTS DATA
INSERT INTO payments(date,mode,transactionid,userid,orderid) VALUES('2022-03-08 12:08:19','cash on delivery',1,1,1);
INSERT INTO payments(date,mode,transactionid,userid,orderid)  VALUES('2022-03-08 12:08:19','online payment',2,4,1);
INSERT INTO payments(date,mode,transactionid,userid,orderid)  VALUES('2022-03-08 12:08:19','cash on delivery',2,4,2);
INSERT INTO payments(date,mode,transactionid,userid,orderid)  VALUES('2022-03-08 12:08:19','online payment',2,4,3);
INSERT INTO payments(date,mode,transactionid,userid,orderid)  VALUES('2022-03-08 12:08:19','cash on delivery',3,2,4);
INSERT INTO payments(date,mode,transactionid,userid,orderid)  VALUES('2022-06-10 12:45:30','cash on delivery',3,2,2);


-- ADDRESS DATA
INSERT INTO addresses(custid,addressmode,housenumber,landmark,city,state,country,pincode) VALUES(1,'permanent','houseNo.32','akshara garden','pune','maharashtra','india','410503');
INSERT INTO addresses(custid,addressmode,housenumber,landmark,city,state,country,pincode) VALUES(1,'billing','houseNo.32','akshara dairy','pune','maharashtra','india','410502');
INSERT INTO addresses(custid,addressmode,housenumber,landmark,city,state,country,pincode) VALUES(2,'permanent','houseNo.32','season mall','pune','maharashtra','india','410504');
INSERT INTO addresses(custid,addressmode,housenumber,landmark,city,state,country,pincode) VALUES(3,'billing','houseNo.32','Peth-Kurwandi Road','Manchar','Maharashtra','India','410506');
INSERT INTO addresses(custid,addressmode,housenumber,landmark,city,state,country,pincode) VALUES(4,'permanent','houseNo.234','Pune-Nashik Highway','Rajgurunagar','Maharashtra','India','1213');

-- EMPLOYESS DATA
INSERT INTO employees(firstname,lastname,birthdate,hiredate,photo,reportsto,userid) VALUES('chetan','ajab','1999-09-15','2022-05-12','/image/akash.jpg',3,8);
INSERT INTO employees(firstname,lastname,birthdate,hiredate,photo,reportsto,userid) VALUES('abhishek','Bangar','2005-09-15','2022-05-12','/image/vedant.jpg',2,9);
INSERT INTO employees(firstname,lastname,birthdate,hiredate,photo,reportsto,userid) VALUES('anil','hinge','2023-09-15','2022-06-14','/image/sahil.jpg',2,10);
INSERT INTO employees(firstname,lastname,birthdate,hiredate,photo,reportsto,userid) VALUES('rohan','amate','2015-09-15','2022-07-13','/image/prakash.jpg',4,11);
INSERT INTO employees(firstname,lastname,birthdate,hiredate,photo,reportsto,userid) VALUES('ajay','lanke','1988-09-15','2022-08-11','/image/nilesh.jpg',1,12);


select * from users;
select * from users;

-- SHIPPERS DATA
INSERT INTO shippers(companyname,userid) VALUES('agrotech pvt.ltd',13);
INSERT INTO shippers(companyname,userid) VALUES('agrilens pvt.ltd',14);
INSERT INTO shippers(companyname,userid) VALUES('croproot pvt.ltd',15);
INSERT INTO shippers(companyname,userid) VALUES('greenery pvt.ltd',16);


-- SUPPLIERS DATA
INSERT INTO suppliers(companyname,suppliername,address,city,state,userid) VALUES('kaveri','abhishek bhor','pimpalgaon','pune','maharashtra',17);
INSERT INTO suppliers(companyname,suppliername,address,city,state,userid) VALUES('kalash seeds','pratik wagh','khadaki','pune','maharashtra',18);
INSERT INTO suppliers(companyname,suppliername,address,city,state,userid) VALUES('greenary','datta dhoble','manchar','pune','maharashtra',19);
INSERT INTO suppliers(companyname,suppliername,address,city,state,userid) VALUES('kavya','kavya bangar','chandoli','pune','maharashtra',20);

-- USER ROLES DATA
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);
INSERT INTO userroles(userid,roleid) VALUES (1,1);



-- FEEDBACKS DATA
INSERT INTO feedbacks(description,custid) VALUES ('very good facilitities',1);
INSERT INTO feedbacks(description,custid) VALUES ('good quality of products',2);
INSERT INTO feedbacks(description,custid) VALUES ('very good for farmers ',3);
INSERT INTO feedbacks(description,custid) VALUES ('farmers are protected from frauds',4);

INSERT INTO questioncategories(category) VALUES('crop related questions');
INSERT INTO questioncategories(category) VALUES('soil related questions');
INSERT INTO questioncategories(category) VALUES('weather releted questions');


INSERT INTO questions(description,categoryid) VALUES('How can I increase crop yield?',1);
INSERT INTO questions(description,categoryid) VALUES('How can I prevent crop damage from pests and diseases?',1);
INSERT INTO questions(description,categoryid) VALUES('How can I improve soil fertility? ',2);
INSERT INTO questions(description,categoryid) VALUES('How can I improve soil structure? ',2);
INSERT INTO questions(description,categoryid)VALUES('How can I prevent soil erosion? ',2);
INSERT INTO questions(description,categoryid) VALUES('What should I do if there is a drought?',3);
INSERT INTO questions(description,categoryid) VALUES('What should I do if there is heavy rainfall? ',3);
INSERT INTO questions(description,categoryid) VALUES('What should I do if there is extreme heat?',3);


INSERT INTO answers(description,questionid) VALUES('Soil health: Ensure the soil is healthy by adding organic matter and nutrients, improving drainage and water retention, and avoiding soil erosion.',1);
INSERT INTO answers(description,questionid) VALUES('Monitor crops regularly for signs of pests and diseases and take appropriate measures to prevent and control them.
                                          Use resistant crop varieties.',1);
INSERT INTO answers(description,questionid)VALUES('Consider local weather patterns and the plants growth requirements.',2);
INSERT INTO answers(description,questionid) VALUES('Soil testing: Perform soil tests to determine nutrient deficiencies and pH levels.
                                           Fertilizer: Apply appropriate amounts of fertilizers to address nutrient deficiencies.',2);
INSERT INTO answers(description,questionid) VALUES('Reduce soil compaction: Avoid excessive tillage, limit heavy machinery use, and avoid working on wet soil.',2);
INSERT INTO answers(description,questionid) VALUES('Cover crops: Plant cover crops to help prevent soil erosion by reducing runoff and increasing soil structure.',3);
INSERT INTO answers(description,questionid) VALUES('Irrigation: Use irrigation techniques to provide plants with the necessary water.
                                          Crop selection: Choose crops that are drought-tolerant.',3);
INSERT INTO answers(description,questionid) VALUES('Soil erosion prevention: Implement soil erosion prevention practices, such as planting cover crops, to help protect soil from being washed away.
										  Crop selection: Choose crops that are better suited to wet conditions.',3);

INSERT INTO subjectmatterexperts(name,expertise,userid) VALUES('pratima patil','crop related information',22);
INSERT INTO subjectmatterexperts(name,expertise,userid) VALUES('kiran rakshe','soil related information',23);
INSERT INTO subjectmatterexperts(name,expertise,userid) VALUES('mayur gorade','Weather related information',24);

INSERT INTO smeanswers(answerid,questionid,answerdate,smeid) VALUES (1,1,'2023-04-05 12:08:06',1);
INSERT INTO smeanswers(answerid,questionid,answerdate,smeid) VALUES (1,1,'2023-06-05 12:20:19',1);
INSERT INTO smeanswers(answerid,questionid,answerdate,smeid) VALUES (2,1,'2023-07-10 12:23:08',2);
INSERT INTO smeanswers(answerid,questionid,answerdate,smeid) VALUES (2,1,'2023-08-25 12:34:20',2);
INSERT INTO smeanswers(answerid,questionid,answerdate,smeid) VALUES (3,1,'2023-09-15 12:40:30',3);



INSERT INTO customerquestions(custid,questionid,questiondate) VALUES (1,1,'2022-01-15');
INSERT INTO customerquestions(custid,questionid,questiondate) VALUES (2,2,'2023-02-15');
INSERT INTO customerquestions(custid,questionid,questiondate) VALUES (2,4,'2023-01-15');
INSERT INTO customerquestions(custid,questionid,questiondate) VALUES (3,3,'2022-05-15');
INSERT INTO customerquestions(custid,questionid,questiondate) VALUES (4,2,'2022-08-15');


INSERT INTO billing(custid,productid,quantity,discount,date) VALUES (2,1,100,0,'2022-02-12 00:00:00');
INSERT INTO billing(custid,productid,quantity,discount,date) VALUES (3,4,400,0,'2022-02-12 00:00:00');
INSERT INTO billing(custid,productid,quantity,discount,date) VALUES (1,3,1200,0,'2022-02-12 00:00:00');
