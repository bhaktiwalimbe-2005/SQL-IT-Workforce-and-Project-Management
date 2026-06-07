-- IT Project & Workforce Management System
create database it_project;
use it_project;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    role VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50),
    country VARCHAR(50),
    industry VARCHAR(50)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    client_id INT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

CREATE TABLE Work_Assignments (
    assignment_id INT PRIMARY KEY,
    emp_id INT,
    project_id INT,
    hours_worked INT,
    performance_rating DECIMAL(3,1),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employees VALUES
(1,'Amit Kulkarni','Data Analyst','Analytics',60000,'2022-01-10'),
(2,'Sneha Joshi','Software Engineer','Development',80000,'2021-07-15'),
(3,'Rahul Mehta','Project Manager','Management',120000,'2020-03-20'),
(4,'Neha Patil','Data Scientist','AI',95000,'2022-05-18'),
(5,'Rohit Shah','Backend Dev','Development',85000,'2021-11-11'),
(6,'Anjali Verma','HR Manager','HR',70000,'2019-09-25'),
(7,'Karan Singh','Frontend Dev','Development',75000,'2023-02-14'),
(8,'Pooja Nair','ML Engineer','AI',98000,'2022-08-08'),
(9,'Vikas Rao','DevOps Engineer','Cloud',90000,'2021-06-10'),
(10,'Neha Gupta','QA Engineer','Testing',65000,'2022-04-12'),
(11,'Arjun Das','System Admin','IT',70000,'2020-10-05'),
(12,'Priya Mehta','Business Analyst','Analytics',72000,'2021-03-18'),
(13,'Ravi Kumar','Backend Dev','Development',87000,'2022-07-21'),
(14,'Simran Kaur','Frontend Dev','Development',76000,'2023-01-09'),
(15,'Manish Jain','Data Engineer','AI',92000,'2021-12-11'),
(16,'Nikita Singh','HR Executive','HR',50000,'2023-05-02'),
(17,'Aakash Patel','Cloud Engineer','Cloud',88000,'2022-02-19'),
(18,'Divya Sharma','QA Engineer','Testing',67000,'2021-08-25'),
(19,'Harsh Verma','Security Analyst','IT',95000,'2020-06-17'),
(20,'Tanya Kapoor','Product Manager','Management',110000,'2019-11-11'),
(21,'Deepak Yadav','Backend Dev','Development',83000,'2022-09-09'),
(22,'Megha Iyer','Data Analyst','Analytics',62000,'2023-04-01'),
(23,'Sahil Khan','Frontend Dev','Development',74000,'2022-03-22'),
(24,'Ritika Shah','ML Engineer','AI',99000,'2021-05-05'),
(25,'Aditya Roy','DevOps Engineer','Cloud',91000,'2020-12-15'),
(26,'Kavya Nair','QA Engineer','Testing',68000,'2023-06-10'),
(27,'Varun Gupta','System Admin','IT',72000,'2022-01-25'),
(28,'Pallavi Joshi','HR Executive','HR',52000,'2023-02-18'),
(29,'Mohit Agarwal','Data Scientist','AI',97000,'2021-09-29'),
(30,'Snehal Patil','Business Analyst','Analytics',73000,'2022-10-12'),
(31,'Yash Desai','Backend Dev','Development',86000,'2023-01-01'),
(32,'Komal Shah','Frontend Dev','Development',75000,'2022-11-11'),
(33,'Raj Malhotra','Security Analyst','IT',94000,'2020-08-08'),
(34,'Isha Jain','Cloud Engineer','Cloud',89000,'2021-04-14'),
(35,'Nikhil Verma','QA Engineer','Testing',66000,'2023-03-03'),
(36,'Aarti Singh','Data Engineer','AI',93000,'2022-06-06'),
(37,'Rohan Kapoor','Product Manager','Management',115000,'2019-07-07'),
(38,'Sanya Mehta','HR Manager','HR',75000,'2020-02-20'),
(39,'Tarun Bansal','DevOps Engineer','Cloud',90500,'2021-01-15'),
(40,'Alok Sharma','System Admin','IT',71000,'2022-12-12');

INSERT INTO Clients VALUES
(101,'Google','USA','Technology'),
(102,'Amazon','USA','E-commerce'),
(103,'Flipkart','India','E-commerce'),
(104,'HDFC Bank','India','Finance'),
(105,'Microsoft','USA','Technology'),
(106,'Infosys','India','IT'),
(107,'Wipro','India','IT'),
(108,'TCS','India','IT'),
(109,'IBM','USA','Technology'),
(110,'Accenture','Ireland','Consulting'),
(111,'Deloitte','USA','Consulting'),
(112,'Capgemini','France','IT'),
(113,'Oracle','USA','Technology'),
(114,'SAP','Germany','Technology'),
(115,'Adobe','USA','Technology'),
(116,'Netflix','USA','Entertainment'),
(117,'Uber','USA','Transport'),
(118,'Airbnb','USA','Hospitality'),
(119,'Paytm','India','Finance'),
(120,'PhonePe','India','Finance'),
(121,'Zomato','India','Food'),
(122,'Swiggy','India','Food'),
(123,'Tesla','USA','Automobile'),
(124,'Meta','USA','Technology'),
(125,'Twitter','USA','Technology'),
(126,'Byju''s','India','EdTech'),
(127,'Unacademy','India','EdTech'),
(128,'Coursera','USA','EdTech'),
(129,'Udemy','USA','EdTech'),
(130,'Sony','Japan','Electronics'),
(131,'Samsung','South Korea','Electronics'),
(132,'LG','South Korea','Electronics'),
(133,'Panasonic','Japan','Electronics'),
(134,'Intel','USA','Technology'),
(135,'AMD','USA','Technology'),
(136,'Cisco','USA','Networking'),
(137,'Zoom','USA','Software'),
(138,'Slack','USA','Software'),
(139,'Shopify','Canada','E-commerce'),
(140,'Stripe','USA','Finance');

INSERT INTO Projects VALUES
(201,'AI Chatbot',101,'2025-01-01','2025-06-30',500000),
(202,'E-commerce App',102,'2025-02-01','2025-08-15',800000),
(203,'Analytics Dashboard',103,'2025-03-10','2025-07-20',300000),
(204,'Bank Security System',104,'2025-01-15','2025-09-30',900000),
(205,'Cloud Migration',105,'2025-04-01','2025-10-01',700000),
(206,'HR Automation',106,'2025-02-15','2025-06-30',250000),
(207,'Inventory System',107,'2025-03-01','2025-09-01',400000),
(208,'CRM System',108,'2025-01-20','2025-08-20',600000),
(209,'AI Recommendation',109,'2025-05-01','2025-11-01',750000),
(210,'Consulting Portal',110,'2025-02-10','2025-07-10',350000),
(211,'Audit Automation',111,'2025-03-05','2025-09-15',450000),
(212,'ERP System',112,'2025-01-25','2025-10-25',850000),
(213,'Database Upgrade',113,'2025-04-12','2025-08-30',300000),
(214,'SAP Integration',114,'2025-02-18','2025-09-10',650000),
(215,'Creative Cloud Tool',115,'2025-03-20','2025-07-25',500000),
(216,'Streaming Platform',116,'2025-01-10','2025-12-01',1000000),
(217,'Ride Optimization',117,'2025-05-15','2025-11-20',600000),
(218,'Booking System',118,'2025-02-05','2025-08-05',450000),
(219,'Payment Gateway',119,'2025-01-18','2025-06-18',550000),
(220,'UPI System',120,'2025-03-22','2025-09-22',650000),
(221,'Food Delivery App',121,'2025-02-01','2025-07-01',500000),
(222,'Restaurant AI',122,'2025-04-05','2025-10-05',700000),
(223,'Autonomous System',123,'2025-01-01','2025-12-31',1200000),
(224,'Social Media AI',124,'2025-03-01','2025-09-01',800000),
(225,'Ad Engine',125,'2025-02-12','2025-08-12',600000),
(226,'EdTech Platform',126,'2025-01-10','2025-07-10',550000),
(227,'Learning App',127,'2025-03-15','2025-09-15',500000),
(228,'Course Platform',128,'2025-04-01','2025-10-01',650000),
(229,'Training Portal',129,'2025-02-20','2025-08-20',450000),
(230,'TV Software',130,'2025-01-05','2025-07-05',400000),
(231,'Mobile OS',131,'2025-03-01','2025-11-01',900000),
(232,'Smart Devices',132,'2025-04-10','2025-10-10',700000),
(233,'Home Automation',133,'2025-02-28','2025-08-28',600000),
(234,'Chip Design',134,'2025-01-15','2025-12-15',1100000),
(235,'GPU System',135,'2025-03-25','2025-09-25',850000),
(236,'Network Security',136,'2025-02-10','2025-08-10',750000),
(237,'Video Conferencing',137,'2025-01-20','2025-07-20',500000),
(238,'Collaboration Tool',138,'2025-03-05','2025-09-05',550000),
(239,'E-commerce Platform',139,'2025-04-01','2025-10-01',800000),
(240,'Payment API',140,'2025-02-14','2025-08-14',600000);

INSERT INTO Work_Assignments VALUES
(1,1,201,120,4.5),(2,2,202,200,4.2),(3,3,203,150,4.8),
(4,4,204,180,4.7),(5,5,205,160,4.1),(6,6,206,100,4.0),
(7,7,207,140,4.3),(8,8,208,170,4.6),(9,9,209,150,4.4),
(10,10,210,130,4.2),(11,11,211,110,4.1),(12,12,212,160,4.5),
(13,13,213,140,4.3),(14,14,214,135,4.2),(15,15,215,180,4.6),
(16,16,216,100,4.0),(17,17,217,155,4.4),(18,18,218,145,4.2),
(19,19,219,165,4.5),(20,20,220,170,4.6),(21,21,221,150,4.3),
(22,22,222,140,4.1),(23,23,223,200,4.8),(24,24,224,175,4.7),
(25,25,225,160,4.4),(26,26,226,120,4.0),(27,27,227,135,4.2),
(28,28,228,125,4.1),(29,29,229,180,4.6),(30,30,230,140,4.3),
(31,31,231,160,4.5),(32,32,232,150,4.4),(33,33,233,170,4.6),
(34,34,234,190,4.7),(35,35,235,145,4.2),(36,36,236,155,4.4),
(37,37,237,165,4.5),(38,38,238,130,4.1),(39,39,239,175,4.6),
(40,40,240,160,4.3);

-- Total Hours Worked Per Employee (Employee workload Distributiom)
SELECT e.emp_name,SUM(w.hours_worked) AS total_hours
FROM Employees e
JOIN Work_Assignments w 
ON e.emp_id = w.emp_id
GROUP BY e.emp_name
ORDER BY total_hours DESC;

-- Project with Highest Budget (project budjet analysis)
SELECT project_name, budget
FROM Projects
ORDER BY budget DESC
LIMIT 5;

-- Employees Working on AI Projects
SELECT DISTINCT e.emp_name, p.project_name
FROM Employees e
JOIN Work_Assignments w ON e.emp_id = w.emp_id
JOIN Projects p ON w.project_id = p.project_id
WHERE p.project_name LIKE '%AI%';

-- Client-wise Total Project Budget ( Client Contribution)
SELECT c.client_name,
       SUM(p.budget) AS total_budget
FROM Clients c
JOIN Projects p ON c.client_id = p.client_id
GROUP BY c.client_name;

-- top rated employees
SELECT e.emp_name, AVG(wa.performance_rating) AS avg_rating
FROM Employees e
JOIN Work_Assignments wa ON e.emp_id = wa.emp_id
GROUP BY e.emp_name
ORDER BY avg_rating DESC
LIMIT 5;

-- Department wise work hours ( Department-wise workload)
SELECT e.department, SUM(wa.hours_worked) AS total_hours
FROM Employees e
JOIN Work_Assignments wa ON e.emp_id = wa.emp_id
GROUP BY e.department
ORDER BY total_hours DESC;

SELECT e.emp_name,wa.hours_worked
from Employees e join Work_Assignments
on e.emp_id=wa.emp_id
where wa.hours_worked>180;


