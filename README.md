# SmartCart
A grocery management system for households.  Realtime updated grocery lists that all of your roommates can view and edit.

## Methods
###User
To create a new user - Send a post request to "/signup" with the params: email, username and password, with an optional param for name.  As always, save your access token to send back later.

To delete a user - Send a delete request to "/signup" with the params: email and password.

To login as a user - Send a post request to "/login" with the params: username and password

To logout - Send a get request to "/logout"


###Pantry


