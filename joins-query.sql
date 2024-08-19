use realestatedb;

-- Ticket 2:inner join
select firstname,lastname,city,state from agents inner join properties using(agentid);

select transactionid,address,city,state from transactions inner join properties using(propertyid);

select address,city,state,listingprice from properties inner join agents using (agentid) where agentid=3;

select firstname,lastname,email,address,city,state from clients 
inner join transactions using(clientid) 
inner join properties using(propertyid);


-- Ticket 3:left join
select firstname,lastname,email,phonenumber,address,city,state from agents
left join properties using(agentid);

select address,city,state,listingprice,transactionid,saleprice from properties p left join transactions t on p.propertyid=t.propertyid;

select firstname,lastname,email,phonenumber,address,city,state from clients left join transactions using(clientid)
left join properties using(propertyid);

-- Ticket 4:right join
select
Address,
City,
State,
ListingPrice,
FirstName,
LastName,
Email
from
agents
right join
properties
using(AgentID);

select TransactionID,
SalePrice,
SaleDate,
FirstName,
LastName,
Email,
PhoneNumber
from
clients
right join
transactions
using(clientid);

select 
TypeName,
Address,
City,
State
from 
properties
right join
propertytypes
using(TypeID);

select
FirstName,
LastName,
Email,
PhoneNumber,
TransactionID,
SaleDate
from
transactions t
right join
clients c
on t.ClientID=c.ClientID;

-- Ticket :5 cross join

select
FirstName,
LastName,
Email,
Address,
City,
State
from
agents
cross join
properties;

select 
FirstName,
LastName,
Email,
Address,
City,
State,
ListingPrice
from
clients
cross join
properties;


select
TypeName,
Address,
City,
State,
ListingPrice
from
propertytypes
cross join
properties;

select 
a.FirstName as AgentsFirstName,
a.LastName as AgentsLastName,
a.Email as AgentsEmail,
c.FirstName as ClientsFirstName,
c.LastName as ClientsLastName,
c.email as ClientsEmail
from
agents a
cross join
clients c;





