CREATE DATABASE bank_ops;
USE bank_ops;

CREATE TABLE complaints (
    Ticket_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID VARCHAR(20),
    Issue_Type VARCHAR(50),
    Priority VARCHAR(10),
    SLA_Hours INT,
    Ticket_Open_Date DATETIME,
    Ticket_Close_Date DATETIME NULL,
    Status VARCHAR(20),
    Agent_Name VARCHAR(50),
    Resolution_Time_Hours DECIMAL(5,2) NULL,
    SLA_Breached VARCHAR(5) NULL
);
