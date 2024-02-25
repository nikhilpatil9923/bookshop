// using btp.j as bj from '../db/schema';

// service EmployeeServices {
//     entity Employees as select from bj.EMPLOYEE_REGESTRY;
//     entity DEPARTMENT as select from bj.DEPARTMENT;
//     }
using my.MyDemoApp as my from '../db/schema';
service CatalogService {
    
    //@readonly entity Books as projection on my.Books;//@readonly
    //@Capabilities: {Insertable: false, Deletable: true} //inserting capabillities to entity
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity orders as projection on my.orders;
}
