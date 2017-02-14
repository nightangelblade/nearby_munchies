#Nearby Munchies!

Ever gone out for drinks, partying, or just hanging out with friends. Then all of a sudden you get the craving for food? Congrats, you've got the munchies! Use this app to find nearby restaurants, bars, and other eateries that are open for at least an hour from the current time, that way you get enough leeway to get there, order, and get your hunger satisfied!

#Live Site
Hosted on Heroku  
[Nearby Munchies](https://nearbymunchies.herokuapp.com/ "Nearby Munchies")

#Interface

- Searching past locations  
When you first visit the Heroku site you will see a list of the five most recent searches performed by the app. 
![Home Screenshot](/Home.png "Home")  
If you have searched before, you can click on the "All Searches" button in the navigation which will give you all of the past searches made with the app.
![All Screenshot](/All.png "Past Searches")  

- Searching a new location  
If you wish to perform a new search, you can click on the "Find Muncheries" button on the navigation bar. 
![Search Screenshot](/Search.png "Dynamic")  
Depending on if you have JavaScript enabled on your browser, the input form will appear either on the same page, or you will be directed to the page containing it.
![Search2 Screenshot](/Search2.png "Static")  

You can enter either your current address, or if you happen to know the coordinates of your location, the latitude and longitude. From there you will be directed to a new page with a Google Maps that will show you the closest restaurants that are currently open.
![Result Screenshot](/Location.png "Result")  
Note: In the background, the Geocoder gem will determine the closest coordinates or address to your location, then turn that into a search string which is then passed to the Google Maps Embed API. This is what returns back the information you see on the new page.

#Issues

Currently since this app was built in Sinatra, the Geocoder gem wasn't included in a proper fashion, as I believe the instructions were intended for a Rails based application. I needed to create a couple of workaround methods within the Location model because Geocoder's built in methods were not capable of being called. In the future, or if I rebuild this app in Rails, I'll be sure to look into this issue.