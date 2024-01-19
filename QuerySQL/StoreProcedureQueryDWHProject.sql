Create Procedure summary_order_status @StatusID int AS
Begin
 Select 
   fso.OrderID,
   dc.CustomerName,
   dp.ProductName,
   fso.Quantity,
   dso.StatusOrder
 from 
   FactSalesOrder as fso
 join
   DimCustomer as dc
   on fso.CustomerID = dc.CustomerID
 join
   DimProduct as dp
   on fso.ProductID = dp.ProductID
 join
   DimStatusOrder as dso
   on fso.StatusID = dso.StatusID
 Where dso.StatusID = @StatusID
End;