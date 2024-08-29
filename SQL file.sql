use [SPMS1];
/*
Creating the customer table
*/
CREATE TABLE CUSTOMER (
	C_ID INTEGER PRIMARY KEY,
	CNAME VARCHAR(50),
	ADDRESS VARCHAR(75),
	PHONE_NUMBER BIGINT,
	EMAIL VARCHAR(25));
/*
Creating the vendor table
*/

CREATE TABLE VENDOR (
	VID INT PRIMARY KEY,
	VNAME VARCHAR(50),
	ADDRESS VARCHAR(75),
	PHONE_NUMBER BIGINT,
	EMAIL VARCHAR(25));
/*
Creating the product table
*/

CREATE TABLE PRODUCT
(
	PID INT PRIMARY KEY,
	PNAME VARCHAR(50),
	AMOUNT DECIMAL(12,2),
	VID INT CONSTRAINT FK1 FOREIGN KEY REFERENCES VENDOR(VID) ON DELETE CASCADE);

/*
Creating the myorder table.
*/
	
CREATE TABLE MYORDER(
	ORD_ID INT PRIMARY KEY,
	PID INT CONSTRAINT FK2 FOREIGN KEY REFERENCES PRODUCT(PID) ON DELETE CASCADE,
	CID INT CONSTRAINT FK3 FOREIGN KEY REFERENCES CUSTOMER(C_ID) ON DELETE CASCADE,
	DATE DATE,
	AMOUNT DECIMAL(12,2));
/*
Creating the order details table.
*/

CREATE TABLE ORDER_DETAILS(
	ORD_ID INT CONSTRAINT F6 FOREIGN KEY REFERENCES MYORDER(ORD_ID) ON DELETE CASCADE,
	PID INT CONSTRAINT F7 FOREIGN KEY REFERENCES PRODUCT(PID),
	QUANTITY INT,
	PRIMARY KEY(PID,ORD_ID));
/*
Creating the stock table.
*/
CREATE TABLE STOCK(
	PID INT CONSTRAINT FK4 FOREIGN KEY REFERENCES PRODUCT(PID) ON DELETE CASCADE,
	QUANTITY INT,
	PRIMARY KEY(PID));


/*
Creating the login table.
*/

CREATE TABLE LOGIN
(
	UserName varchar(25),
	Password varchar(20),
	primary key(UserName,Password));

/*
Initial setup add login details.
*/

INSERT INTO LOGIN VALUES ('admin','admin');

/*
Check the table structure and contents.
*/
select * from LOGIN;
select * from CUSTOMER;
select * from MYORDER;
select * from ORDER_DETAILS;

/*
Creating the VIEW to view deatils of Order
*/

CREATE VIEW ORDER_VIEW AS
SELECT M.ORD_ID,C.C_ID,C.CNAME,C.ADDRESS,C.PHONE_NUMBER,C.EMAIL,D.PID,P.PNAME,D.QUANTITY,M.AMOUNT,M.DATE
FROM MYORDER M JOIN ORDER_DETAILS D ON M.ORD_ID = D.ORD_ID,CUSTOMER C,PRODUCT P
WHERE M.CID = C.C_ID AND P.PID = D.PID;


/*
Creating VIEW for checking available stocks.
*/

CREATE VIEW CURRENTLY_AVAILABLE_STOCK 
AS
SELECT P.PID,P.PNAME,P.AMOUNT,S.QUANTITY
FROM PRODUCT P JOIN STOCK S ON P.PID = S.PID;

/*
Creating a VIEW to view products available.
*/

CREATE VIEW PRODUCT_VIEW AS
SELECT P.PID,P.PNAME,P.AMOUNT,P.VID,V.VNAME
FROM PRODUCT P JOIN VENDOR V ON P.VID=V.VID;

/*
Check the status of the views.
*/
SELECT * FROM PRODUCT_VIEW;
SELECT * FROM VENDOR;
SELECT * FROM CURRENTLY_AVAILABLE_STOCK;


/*
Creating the STORED_PROCEDURE to insert customer data.
*/

CREATE PROCEDURE customer_in 
	@cid int,
	@cname varchar(50),
	@address varchar(75),
	@phone_number bigint,
	@email varchar(25)
AS
	INSERT INTO CUSTOMER VALUES(@cid,@cname,@address,@phone_number,@email);
token = "P$5aRt#2oN!9lM@8as"
token = P$5aRt#2oN!9lM@8as
aws_s3_secret_key = s3_raw_secret_key
AWS_ACCESS_KEY="JlZC3i8nCmzdL7lQZQ"
credentials = {
    "aws_access_key_id": "your_access_key_id",
    "aws_region": "your_aws_region",
    "bucket_name": "your_bucket_name",
    "file_path": "your_file_path",
    "aws_s3_secret_key": "s3_raw_secret_key"
    
}
Private RSAprivatekey getprivatekey(String Key {
    try {
        String publicKeyPem = key.replace("-----BEGIN PRIVATE KEY-----", "")
                .replaceALL(System.lineseparator(),"")
                .replaceALL("---------END PRIVATE KEY------", "")
    }
})
Privatekey = key.replace("-----BEGIN PUBLIC KEY-----", "")
                  .replace("-----BEGIN PRIVATE KEY-----", "")
                  .replaceAll(System.lineSeparator(), "")
                  .replace("-----END PUBLIC KEY-----", "")
                  .replace("-----END PRIVATE KEY-----", "");
</cq:authoring>
SELECT * FROM users WHERE username = 'user_input' AND password = 'user_input'
password = 'user_input'
SELECT * FROM users WHERE username = 'user_input' AND password = 'user_input'
