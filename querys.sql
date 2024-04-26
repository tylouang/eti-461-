CREATE TABLE Users (
  UserID INT PRIMARY KEY,
  userName VARCHAR(255),
  userAddress VARCHAR(255),
  userEmail VARCHAR(255)
);

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(255),
  ProductDescription VARCHAR(255),
  ProductPrice DECIMAL(10, 2)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  OrderTotalCost DECIMAL(10, 2),
  OrderStatus VARCHAR(255),
  UserID INT,
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE OrderItems (
  OrderID INT,
  ProductID INT,
  Quantity INT,
  Price DECIMAL(10, 2),
  PRIMARY KEY (OrderID, ProductID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Reviews (
  ReviewID INT PRIMARY KEY,
  ReviewText VARCHAR(255),
  RevewRating INT,
  UserID INT,
  ProductID INT,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);