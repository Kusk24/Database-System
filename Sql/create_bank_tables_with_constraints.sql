create table branch (
   branch_name 	char(15),
   branch_city 	char(15),
   assets 		numeric(18,2)	not null, 
   primary key (branch_name)
);

create table customer (
    customer_name	char(15),
    customer_street	char(15),
    customer_city		char(15),
    primary key (customer_name)
);

create table account (
    account_number 	char(10),
    branch_name		char(15),
    balance		numeric(18,2)	not null, 
    primary key (account_number), 
    foreign key (branch_name) references branch,
    check (balance >= 0)
);

create table depositor (
    customer_name	char(15),
    account_number 	char(10),
    primary key (customer_name, account_number),
    foreign key (customer_name) references customer,
    foreign key (account_number ) references account
);

create table loan (
    loan_number 	char(10),
    branch_name	char(15),
    amount	numeric(18,2)	not null, 
    primary key (loan_number ), 
    foreign key (branch_name) references branch,
    check (amount >= 0)
);

create table borrower (
    customer_name	char(15),
    loan_number 		char(10),
    primary key (customer_name, loan_number ),
    foreign key (customer_name) references customer,
    foreign key (loan_number ) references loan
);
