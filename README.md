# SmartCart
A grocery management system for households.  Realtime updated grocery lists that all of your roommates can view and edit.

####[URL  -  http://intense-refuge-9476.herokuapp.com](http://intense-refuge-9476.herokuapp.com/signup)

## Methods
###User
To create a new user - Send a post request to "/signup" with the params: email, username and password, with an optional param for name.  As always, save your access token to send back later

To delete a user - Send a delete request to "/signup" with the params: email and password

To login as a user - Send a post request to "/login" with the params: username and password

To logout - Send a get request to "/logout"

###House
To create a house - Send a post request to "/house" with the params: name and address.  Will return Json with both values.


###Edible (any food in your pantry)
To create a new edible - Send a post request to "/house" with the params: item, quantity, prefered and category

To edit an edible - 
1st Send a get request to "/edible/:id/edit".  You will get back json with the item's title, brand, quantity, prefered, category and whether or not it's a necessity.  You'll also receive the house_id.
2nd Send a post request to "/edible/:id/edit" with the same params that you just receieved.

###Groceries (any food on your list)
Same as edible.

