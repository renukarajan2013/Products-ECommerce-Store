v1.6 Product Features:

1.  Create products and specify what type of product you are creating - Books, Games, Videos etc.  Each product carries an image of the product (implemented using carrierwave gem).
2.  Users can add items to cart, empty cart, delete items from the cart.  
3.  Users can see the total price of the items they have purchased.
4.  Users can edit products.
5.  Users will be authenticated.
6.  Users will be authorized - Implemented using the CanCan gem.  Roles supported are Admin and Supervisor (and Guest).
7.  Supports full text search using web solr
8.  Supports extra attributes for products - key value pairs
9.  Now has an rspec test for music routing



Project is implemented using Rails Single Table Inheritance given the is-a relationship among the objects in the application. The parent object - Product has several subclasses that inherit most of the features of the parent class with a few extra attributes that are specific to each subclass.  STI is the best design paradigm for this requirement as there would be a lot of repitition/redundancy if each subclass were to have its own table.

Future Releases of BookNook are expected to implement:

1.  Visitor pattern to be implemented on the cart and cart item objects. Useful in the checkout process.
2.  Polymorphic controllers to avoid redundancy of controllers for each type/subclass of Product
3.  Improved search capabilities using Facets.
4.  Improved landing page
5.  Integration with Stripe

