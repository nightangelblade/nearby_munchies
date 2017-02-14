#Nearby Munchies!

Ever gone out for drinks, partying, or just hanging out with friends. Then all of a sudden you get the craving for food? Congrats, you've got the munchies! Use this app to find nearby restaurants, bars, and other eateries that are open for at least an hour from the current time, that way you get enough leeway to get there, order, and get your hunger satisfied!

#Interface

- Searching past locations  
When you first visit the Heroku site you will see a list of the five most recent searches performed by the app. 
!(/Home.png "Home")
If you have searched before, you can click on the "All Searches" button in the navigation which will give you all of the past searches made with the app.
!(/All.png "Past Searches")

- Searching a new location  
If you wish to perform a new search, you can click on the "Find Muncheries" button on the navigation bar. 
!(/Search.png "Dynamic")
Depending on if you have JavaScript enabled on your browser, the input form will appear either on the same page, or you will be directed to the page containing it.
!(/Search2.png "Static")

You can enter either your current address, or if you happen to know the coordinates of your location, the latitude and longitude. From there you will be directed to a new page with a Google Maps that will show you the closest restaurants that are current open.
!(/Location.png "Result")
Note: In the background, the Geocoder gem will determine the closest coordinates or address to your location, then turn that into a search string which is then passed to the Google Maps Embed API. This is what returns back the information you see on the new page.