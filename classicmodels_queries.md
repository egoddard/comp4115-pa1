## Query: 
```sql
select firstName, lastName, jobTitle, email from employees order by lastName limit 5;
```
This query gets some basic information about the employees in the employees
table, orders it by employee last name and limits it to 5 rows. This is an 
exploratory query to get some info about the values in the table.

## Query: 
```sql
select distinct jobTitle from employees;
```
This is another simple query that expands on the previous query and gives
additional information about the sort of employees stored in the database based
on their titles.

## Query: 
```sql
select employees.firstName, employees.lastName, offices.addressLine1, offices.city, offices.state, offices.country 
    from employees, offices 
        where employees.officeCode = offices.officeCode;
```
This query performs a join on the employees and offices tables to show the location where each employee works.

## Query: 
```sql
select offices.addressLine1, offices.city, count(employees.officeCode) as NumEmployees from offices, employees
    where offices.officeCode = employees.officeCode
        group by employees.officeCode
            order by numEmployees desc;
```
This query performs a join between offices and employees and counts the number
of employees at each office location.

## Query: 
```sql
select month(paymentDate) as month, concat("$", format(sum(amount), 2)) as monthlySales
    from payments group by month(paymentDate) order by monthlySales;
```
This query orders the months based on the sum of the payments made in each
month to determine the most popular months for sales and places the results in
descending order.

## Query: 
```sql
select productLine, count(productName) as numProducts from products
    group by productLine
        order by numProducts desc;
```
This query counts the number of products that are in each product line and
displays them in descending order.

## Query: 
```sql
select a.productName, sum(b.quantityOrdered) as numberSold from products as a 
    join orderdetails as b on a.productCode = b.productCode 
        group by b.productCode 
            order by numberSold desc limit 5;
```
This query finds the 5 most popular products and the number of each that has been
sold by using a join the JOIN...ON syntax between the products and orderdetails tables.

## Query:
```sql
 select customers.customerName, count(orders.orderNumber) as orders from customers, orders
    where customers.customerNumber = orders.customerNumber
        group by orders.customerNumber
            order by orders desc limit 5;
```
This query performs a join on the customer and orders tables and displays the
5 customers with the most orders in descending order.


