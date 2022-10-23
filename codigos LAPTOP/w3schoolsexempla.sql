use w3schools;

select p.OrderID, c.CustomerName, e.LastName, e.FirstName, h.ShipperName
	from orders p
    inner join customers c
    on p.CustomerID = c.CustomerID
    inner join employees e
    on p.EmployeeID = e.EmployeeID
    inner join shippers h
    on p.ShipperID = h.ShipperID
