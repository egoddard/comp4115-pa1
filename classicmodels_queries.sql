/* Get some basic information about the employees */
select firstName, lastName, jobTitle, email from employees
    order by lastName limit 5;

select distinct jobTitle from employees;

/* Find out where each employee works */
select employees.firstName, employees.lastName, offices.addressLine1, offices.city, offices.state, offices.country 
    from employees, offices 
        where employees.officeCode = offices.officeCode;

/* List the number of employees at each office location. */
select offices.addressLine1, offices.city, count(employees.officeCode) as NumEmployees from offices, employees
    where offices.officeCode = employees.officeCode
        group by employees.officeCode
            order by numEmployees desc;

/* Find out which months have the most payments collected */
select month(paymentDate) as month, concat("$", format(sum(amount), 2)) as monthlySales
    from payments group by month(paymentDate) order by monthlySales;

/* Count the number of products in each product line */
select productLine, count(productName) as numProducts from products
    group by productLine
        order by numProducts desc;

/* Find the most popular products and the number of each that has been ordered */
select products.productName, b.numberSold from products,
    (select productCode, sum(quantityOrdered) as numberSold from orderdetails group by productCode) as b where 
        products.productCode = b.productCode
            order by b.numberSold desc limit 5;

/* Find the most popular customers and the number of orders they have placed */
select customers.customerName, count(orders.orderNumber) as orders from customers, orders
    where customers.customerNumber = orders.customerNumber
        group by orders.customerNumber
            order by orders desc limit 5;

