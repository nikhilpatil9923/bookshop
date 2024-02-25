//sap.ui.define is used to define SAPUI5 modules and their dependencies
//(ac => ...): The callback function is executed when all dependencies are loaded. Here, ac is the reference to the 'sap/fe/core/AppComponent' module.
sap.ui.define(
    ['sap/fe/core/AppComponent'],
    ac => ac.extend('bookshop.Component', {
        metadata: {
            manifest: 'json'
        }
    })
)