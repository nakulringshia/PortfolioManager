Select 
EquityName
, Sum(CASE Type When 'Buy' THEN 1 * Units ELse 0 END) [Total Units Purchased]
, Sum(CASE Type When 'Sell' THEN 1 * Units ELse 0 END) [Total Units Sold]
, Sum(CASE Type When 'Sell' THEN -1 * Units ELse Units END) [Available Units]
, 7500 as [Total Buy (COGS)] -- COGS
,  Sum(CASE Type When 'Sell' THEN 1 * TotalAmount ELse 0 END) as [Total Sell]
, 0 as [Gain/Loss] --Total Sell - COGS
From
Holdings
--Where [Date] < '1/4/2017'
Group By 
EquityName