//using my.MyDemoApp as my from '../db/schema'; //if we are not using this my will thorow error because my.orders will not have any reference
//cds namespace we remove alias my also 
using my.MyDemoApp from '../db/schema'; 
service stats {
    @readonly entity OrderInfo as projection on MyDemoApp.orders excluding { //removed my scope 
   // @readonly entity OrderInfo as projection on my.orders excluding { //excludind few properties
    createdAt
    
    }
}