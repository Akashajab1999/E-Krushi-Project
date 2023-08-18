-- drop database ekrushi;
 CREATE DATABASE ekrushi;
USE ekrushi;



CREATE TABLE roles(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, role varchar(250));
              
CREATE TABLE customers(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,firstname VARCHAR(255),lastname VARCHAR(25),userid INT NOT NULL);
CREATE TABLE categories(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,title varchar(255),description varchar(255),image varchar(255));
                        
CREATE TABLE products(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,title varchar(255),unitprice double,stockavailable INT,image varchar(255),
categoryid INT NOT NULL, CONSTRAINT fkcategoryid FOREIGN KEY (categoryid) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE);
 
CREATE TABLE orders(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,orderdate DATETIME NOT NULL ,shippeddate DATETIME NOT NULL,custid INT NOT NULL,
CONSTRAINT fk_cust_id_11 FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE, 
total DOUBLE ,status ENUM('approved','initiated','cancelled','delivered','inprogress') NOT NULL);

CREATE TABLE orderdetails(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,orderid INT NOT NULL,
CONSTRAINT fkorder FOREIGN KEY (orderid) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE ,
productid INT NOT NULL ,CONSTRAINT fkproduct FOREIGN KEY (productid) REFERENCES products(id)ON UPDATE CASCADE ON DELETE CASCADE,
quantity INT NOT NULL,discount DOUBLE DEFAULT 0);  

CREATE TABLE carts(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,custid INT NOT NULL,
CONSTRAINT fk_1 FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE addresses(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,custid INT NOT NULL,
CONSTRAINT fkcustid FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE,
addressmode ENUM('permanent','billing') NOT NULL,
housenumber varchar(255),landmark VARCHAR(255),city VARCHAR(255) NOT NULL,state VARCHAR(255) NOT NULL,country VARCHAR(255) NOT NULL,pincode VARCHAR(255) NOT NULL);

CREATE TABLE cartitems(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,cartid INT NOT NULL,
CONSTRAINT fk02 FOREIGN KEY (cartid) REFERENCES carts(id)ON UPDATE CASCADE ON DELETE CASCADE,
productid INT NOT NULL,CONSTRAINT fk03 FOREIGN KEY (productid) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,quantity INT NOT NULL ); 

CREATE TABLE payments(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,date DATETIME NOT NULL , 
mode ENUM('cash on delivery','online payment'),transactionid INT NOT NULL,userid INT NOT NULL,
orderid INT NOT NULL,CONSTRAINT fkorderid FOREIGN KEY (orderid) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE seller(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,firstname VARCHAR(255),lastname VARCHAR(250),birthdate DATE ,
hiredate DATE,photo VARCHAR(250),reportsto INT NOT NULL,userid INT NOT NULL);

CREATE TABLE shippers(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,companyname VARCHAR(255),
userid INT NOT NULL);

CREATE TABLE suppliers(id INT NOT NULL AUTO_iNCREMENT PRIMARY KEY, companyname varchar(50),suppliername varchar(50),
address varchar(50),city VARCHAR(50),state VARCHAR(40),
userid INT NOT NULL);



CREATE TABLE userroles(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,userid INT NOT NULL,roleid INT NOT NULL,CONSTRAINT fkroleid FOREIGN KEY(roleid) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE);
  
CREATE TABLE feedbacks(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,description VARCHAR(255),custid INT NOT NULL ,
CONSTRAINT fk_022 FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE questioncategories(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,category varchar(255));

CREATE TABLE questions(id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY, description VARCHAR(255),
categoryid INT NOT NULL,CONSTRAINT fkcategory1 FOREIGN KEY (categoryid) REFERENCES questioncategories(id) ON DELETE CASCADE ON UPDATE CASCADE);
-- customer questions table required   auto  id pri , cust id fr key ,fr ques id ,date 

CREATE TABLE answers(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,description VARCHAR(255), 
questionid INT NOT NULL,CONSTRAINT fkcategory12 FOREIGN KEY (questionid) REFERENCES questions(id) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE subjectmatterexperts(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,name VARCHAR(40),expertise VARCHAR(40),userid INT NOT NULL);

CREATE TABLE smeanswers(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,answerid INT NOT NULL,CONSTRAINT fkuser21 FOREIGN KEY (answerid) REFERENCES answers(id)ON UPDATE CASCADE ON DELETE CASCADE,
questionid INT NOT NULL,CONSTRAINT fkusen21 FOREIGN KEY (questionid) REFERENCES questions(id) ON UPDATE CASCADE ON DELETE CASCADE,answerdate datetime not null,smeid INT NOT NULL,
CONSTRAINT fkuser22 FOREIGN KEY (smeid) REFERENCES subjectmatterexperts(id));

CREATE TABLE customerquestions(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,questionid INT NOT NULL ,CONSTRAINT fkques FOREIGN KEY(questionid) REFERENCES questions(id) ON UPDATE CASCADE ON DELETE CASCADE,
custid INT NOT NULL,CONSTRAINT fk_cust_11 FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE, questiondate datetime not null);


CREATE TABLE billing(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,custid INT NOT NULL,CONSTRAINT fk_cust31 FOREIGN KEY (custid) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE,
orderid INT NOT NULL ,CONSTRAINT fkp1 FOREIGN KEY (orderid) REFERENCES orderdetails(orderid)ON UPDATE CASCADE ON DELETE CASCADE,
total double,date DATETIME NOT NULL);


