module.exports = srv => {

    console.log(`Service name: ${srv.name} is served at ${srv.path}`);
    //console.log("nikhil")
    srv.after ('READ', 'Books', XS => {
        console.log(XS);
    const newBooks = [];
     XS.forEach(x => {
        if (x.stock > 500) {
         x.title = '10% off' + 'x.title'
        }
        newBooks.push(x);
     });
     console.log(newBooks);
     return newBooks;
     

        });
};
// console.log("hello World");
