
-- Create the guest table
CREATE TABLE Guest (
    GuestID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Address VARCHAR2(255),
    ContactNumber VARCHAR2(20)
);

-- Create the room table
CREATE TABLE Room (
    RoomNumber NUMBER PRIMARY KEY,
    RoomType VARCHAR2(50),
    RoomStatus VARCHAR2(20)
);

-- Create the reservation table
CREATE TABLE Reservation (
    ReservationID NUMBER PRIMARY KEY,
    GuestID NUMBER,
    RoomNumber NUMBER,
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID),
    FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber)
);

-- Create the room service table
CREATE TABLE RoomService (
    ServiceID NUMBER PRIMARY KEY,
    GuestID NUMBER,
    ServiceName VARCHAR2(100),
    ServiceCharge NUMBER(10, 2),
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID)
);

-- Create the billing table
CREATE TABLE Billing (
    BillID NUMBER PRIMARY KEY,
    GuestID NUMBER,
    RoomCharge NUMBER(10, 2),
    RoomServiceCharge NUMBER(10, 2),
    OtherCharges NUMBER(10, 2),
    TotalAmount NUMBER(10, 2),
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID)
);

-- Create the staff table
CREATE TABLE Staff (
    StaffID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Position VARCHAR2(100),
    ContactNumber VARCHAR2(20)
);


INSERT INTO Guest (GuestID, Name, Address, ContactNumber) VALUES
    (1, 'John Doe', '123 Main St', '555-123-4567');
INSERT INTO Guest (GuestID, Name, Address, ContactNumber) VALUES
    (2, 'Jane Smith', '456 Elm St', '555-987-6543');

INSERT INTO Room (RoomNumber, RoomType, RoomStatus) VALUES
    (101, 'Single', 'Available');
INSERT INTO Room (RoomNumber, RoomType, RoomStatus) VALUES
    (102, 'Double', 'Available');

