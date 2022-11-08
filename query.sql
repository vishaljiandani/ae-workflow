/* What are the top 5 brands by receipts scanned for most recent month? */
/* Assumption: Taking "most recent month" to mean the previous month*/
/* Using Microsoft SQL Server */

with cte as (
  select b.name
        ,count(distinct r._id) as receipts_scanned
        from brands b
        join items i on i.barcode = b.barcode
        join receipts r on r._id = i.receipt_id
        where datepart(m, dateScanned) = datepart(m, dateadd(m, -1, getdate()))
        and datepart(yyyy, dateScanned) = datepart(yyyy, dateadd(m, -1, getdate()))
        group by b.name
)

select top 5 name as top_5_brands
from cte
order by receipts_scanned desc
