--We need to group the data based on columns Category & Price into Different Categories i.e affordable and premium

select
*,
 case 
    when Category ='Electronic' then 
	    case when price>=300 then 'Premium Electronic'
		else 'Affordable Electronic '
		end
		
	when Category ='Furniture' then 
	    case when price>=250 then 'Premium Category'
		else 'Affordable Quantity'
		end
 else 
        case when price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end as [Groups]
from product

------------------------------------------(or)-------------------------------

select 
*,
 case 
     when Category='Electronic' then 
	    case when price>=300 then 'Premium Electronic'
	    else 'Affordable Electronic'
	    end
     when Category='Furniture' then 
	    case when price>=250 then 'Premium Furniture'
	    else 'Affordable Furniture'
		end 
     when Category='Accessories' then 
	    case when price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end 
end as ['Group']
from product

-----------------------------------(or)----------------------------------------
select 
*,
 case 
     when Category='Electronic' then 
	    case when price>=300 then 'Premium Electronic'
	    else 'Affordable Electronic'
	    end
     when Category='Furniture' then 
	    case when price>=250 then 'Premium Furniture'
	    else 'Affordable Furniture'
		end 
     when Category in ('Accessories') then 
	    case when price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end 
end as ['Group']
from product