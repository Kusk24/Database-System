/*Insert customer's records*/
insert into Customer values ('Adams', 'Spring', 'Pittsfield');
insert into Customer values ('Brooks', 'Senator', 'Brooklyn');
insert into Customer values ('Curry', 'North', 'Rye');
insert into Customer values ('Glenn', 'Sand Hill', 'Woodside');
insert into Customer values ('Green', 'Walnut', 'Stamford');
insert into Customer values ('Hayes', 'Main', 'Harrison');
insert into Customer values ('Johnson', 'Alma', 'Palo Alto');
insert into Customer values ('Jones', 'Main', 'Harrison');
insert into Customer values ('Lindsay', 'Park', 'Pittsfield');
insert into Customer values ('Smith', 'North', 'Rye');
insert into Customer values ('Turner', 'Putnam', 'Stamford');
insert into Customer values ('Williams', 'Nassau', 'Princeton');
insert into Customer values ('Jackson', 'Nassau', 'Princeton');
/*select * from customer;*/

/*delete from customer;*/
/*drop table customer;*/

/*Insert branch's records*/
insert into branch values ('Brighton', 'Brooklyn', 7100000);
insert into branch values ('Downtown', 'Brooklyn', 9000000);
insert into branch values ('Mianus', 'Horseneck', 400000);
insert into branch values ('North Town', 'Rye', 3700000);
insert into branch values ('Perryridge', 'Horseneck', 1700000);
insert into branch values ('Pownal', 'Bennington', 300000);
insert into branch values ('Redwood', 'Palo Alto', 2100000);
insert into branch values ('Round Hill', 'Horseneck', 8000000);

/*select * from branch;*/

/*delete from branch;*/
/*drop table branch;*/

/*Insert account's records*/
insert into account values ('A-101', 'Downtown', 500);
insert into account values ('A-102', 'Perryridge', 400);
insert into account values ('A-201', 'Brighton', 900);
insert into account values ('A-215', 'Mianus', 700);
insert into account values ('A-217', 'Brighton', 750);
insert into account values ('A-222', 'Redwood', 700);
insert into account values ('A-305', 'Round Hill', 350);

/*select * from account;*/

/*delete from account;*/
/*drop table account;*/

/*Insert depositor's records*/
insert into depositor values ('Hayes', 'A-102');
insert into depositor values ('Johnson', 'A-101');
insert into depositor values ('Johnson', 'A-201');
insert into depositor values ('Jones', 'A-217');
insert into depositor values ('Lindsay', 'A-222');
insert into depositor values ('Smith', 'A-215');
insert into depositor values ('Turner', 'A-305');

/*select * from depositor;*/

/*delete from depositor;*/
/*drop table depositor;*/

/*Insert loan's records*/
insert into loan values ('L-11', 'Round Hill', 900);
insert into loan values ('L-14', 'Downtown', 1500);
insert into loan values ('L-15', 'Perryridge', 1500);
insert into loan values ('L-16', 'Perryridge', 1300);
insert into loan values ('L-17', 'Downtown', 1000);
insert into loan values ('L-23', 'Redwood', 2000);
insert into loan values ('L-93', 'Mianus', 500);

/*select * from loan;*/

/*delete from loan;*/
/*drop table loan;*/

/*Insert borrower's records*/
insert into borrower values ('Adams', 'L-16');
insert into borrower values ('Curry', 'L-93');
insert into borrower values ('Hayes', 'L-15');
insert into borrower values ('Jackson', 'L-14');
insert into borrower values ('Jones', 'L-17');
insert into borrower values ('Smith', 'L-11');
insert into borrower values ('Smith', 'L-23');
insert into borrower values ('Williams', 'L-17');

/*select * from borrower;*/

/*delete from borrower;*/
/*drop table borrower;*/


