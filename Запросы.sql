   SELECT Name AS ProductName,
          QuantityInStock,
          Price,
          (QuantityInStock * Price) AS TotalValue
   FROM Product;
   
      SELECT FirstName,
          LastName,
          Email,
          Phone,
          Address
   FROM Customer;
   
      SELECT Name AS ProductName,
          QuantityInStock
   FROM Product
   WHERE QuantityInStock < 5; -- Пример условия недостатка товара
   
      SELECT p.Name AS ProductName,
          s.SaleDate,
          sp.Quantity,
          sp.TotalPrice
   FROM SoldProduct sp
   JOIN Sale s ON sp.SaleID = s.SaleID
   JOIN Product p ON sp.ProductID = p.ProductID
   WHERE p.ProductID = 3; 
   
      SELECT c.FirstName,
          c.LastName,
          SUM(sp.TotalPrice) AS TotalSpent
   FROM SoldProduct sp
   JOIN Sale s ON sp.SaleID = s.SaleID
   JOIN Customer c ON s.CustomerID = c.CustomerID
   GROUP BY c.CustomerID;
   
   SELECT s.FirstName,
          s.LastName,
          SUM(sp.TotalPrice) AS TotalSales
   FROM SoldProduct sp
   JOIN Sale sa ON sp.SaleID = sa.SaleID
   JOIN Seller s ON sa.SellerID = s.SellerID
   GROUP BY s.SellerID;
   
      SELECT p.Name AS ProductName,
          sp.Quantity,
          sp.TotalPrice
   FROM SoldProduct sp
   JOIN Sale sa ON sp.SaleID = sa.SaleID
   JOIN Product p ON sp.ProductID = p.ProductID
   WHERE sa.SellerID = 5;
   
      SELECT p.Name AS ProductName,
          sp.Quantity,
          sp.TotalPrice
   FROM SoldProduct sp
   JOIN Sale sa ON sp.SaleID = sa.SaleID
   JOIN Product p ON sp.ProductID = p.ProductID
   WHERE sa.SaleDate = '2024-12-02'; 
   
      SELECT p.Name AS ProductName,
          SUM(sp.Quantity) AS TotalQuantity,
          SUM(sp.TotalPrice) AS TotalValue
   FROM SoldProduct sp
   JOIN Sale sa ON sp.SaleID = sa.SaleID
   JOIN Product p ON sp.ProductID = p.ProductID
   WHERE sa.SaleDate BETWEEN '2013-05-04' AND '2020-09-09'
   GROUP BY p.ProductID;
   
       SELECT Name AS ProductName,
           Price,
           QuantityInStock AS AvailableStock
    FROM Product;
    

   

   

   

   

   

   

   

   
