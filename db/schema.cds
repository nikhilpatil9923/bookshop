// namespace btp.j;
// using { cuid, managed } from '@sap/cds/common';
// entity EMPLOYEE_REGESTRY: cuid, managed {
//     NAME: String(255);
//     EMAIL_ID: String(255);
//     DEPARTMENT: Association to one DEPARTMENT;
// }

// entity DEPARTMENT: cuid {
//     NAME: String(255);
//     Employees : Association to many EMPLOYEE_REGESTRY on Employees.DEPARTMENT = $self;
// }

namespace my.MyDemoApp;

using { cuid, managed } from '@sap/cds/common'; //importing aspects cuid and managed, details of this aspects will be stored in modules cds filecommon.cds
entity Books {
    key ID    : Integer;
        title : String(255);
        stock : Integer;
        author: Association to Authors;
}
entity Authors {
    key ID    : Integer;
        name : String(255);
        books : Association to many Books on books.author = $self;
        
}
 entity orders : cuid, managed {
    key ID : UUID; //uniqe ID 
    books : Association to Books;
    quantity : Integer;
 }
