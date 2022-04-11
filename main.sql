/* A toy cafe database for CS 314, HW 2
  Andrew Shallue
  Based on a schema designed by Abdu Alawini
  Fall 2020

  Now with NULL values
*/


.header on
.mode column
--.width 23  

.read schema.sql
.read data.sql

/* Problem 1
r is an integer 
v is another integer

a) { (10, r), (r, 20), (null, 20), (10, null) }
b) { (10, 20) }
c) { (r, v), (r, null) }
d) { (r, r) }
*/

/* Problem 2 */
select addr, phone
from Customers
where addr like '%1st Ave' 
	or phone like '309%';

/* Problem 3 */
select c.name, count(l.drink)
from Customers c
left join Likes l
	on c.cid = l.customer
group by c.name;

/* Problem 4 */
select c.name, count(c1.name)
from Cafe c
left join Cafe c1
	on c.name > c1.name
group by c.name;


/* Problem 5 */
delete from Likes l
where Likes.drink is null
	or Likes.customer in (
		select cid 
		from Customers
		where name like 'B%'
	);

/* Problem 6 */
insert into Likes values
	(10, 'Super Coffee'),
	(11, 'Super Coffee');

update Likes
set drink = 'Cafe Classic'
where customer = 5;