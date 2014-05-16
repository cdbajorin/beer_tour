## Beer Tour

A site to allow a user to find local breweries and plan a brewery tour. You can search for specific beer types and find the local breweries that produce that style, allowing you to taste what you like! Create a profile, create a tour, find tours planned by other users. Going on vacation? Create a tour around your destination!


## Milestones

* databases set up correctly
* seed file of user profiles
* user CRUD
* API call for tour data
* tour CRD
* favorite/likes
* search for tours

#### Potential additions
* specific directions/suggested route
* additional search options
* update tours


------------------------

http://beermapping.com/api/
3db61fc530feba1c6ee56c8030681c50


-----------

http://openbeerdatabase.com/users/1200
pub: c7ce5669db088b157a4aca447aea870ad5e358a8fd9233a36b1da348f3611831
priv: 4ad1d124283ff19c8fd618ccaaee2d8c8be6be3646c1919ece1f7c8008fc87b0


------------

http://www.brewerydb.com/developers/
26f66fc43cc1993e96da0d91327578ee


USAGE

### Brewery search when inspecting brewery

* **brewery id** http://api.brewerydb.com/v2/brewery/wroV30/locations?key=26f66fc43cc1993e96da0d91327578ee
    * ["data"][x]["isClosed"]
    * ["data"][x]["openToPublic"]
    * ["data"][x]["latitude/longitude"]
    * ["data"][x]["phone"]
    * ["data"][x]["brewery"]["website"]
    * ["data"][x]["brewery"]["images"]["icon/medium/large"]
    * ["data"][x]["brewery"]["id"]
    * ["data"][x]["brewery"]["name"]
    * ["data"][x]["streetAddress"]
    * ["data"][x]["locality(city)"]
    * ["data"][x]["region(state)"]
    * ["data"][x]["postalCode"]
    * ["data"][x]["distance"]


### Search results for tour creation
* **location** http://api.brewerydb.com/v2/search/geo/point?key=26f66fc43cc1993e96da0d91327578ee&lat=28.5&lng=-81.5
    * ["totalResults"]
    * ["data"][x]["brewery"]["id"] -- save ID, recall in brewery page.
    * ["data"][x]["brewery"]["name"] -- puts
    * ["data"][x]["streetAddress"] -- puts
    * ["data"][x]["locality"] -- puts
    * ["data"][x]["region"] -puts
    * ["data"][x]["postalCode"] -- puts
    * ["data"][x]["latitude/longitude"] -- possibly save for future reference?
    * ["data"][x]["isClosed"] -- parameter
    * ["data"][x]["openToPublic"] -- parameter (should be opposite of isclosed, use for error validation)


### Call for beers available
* **beers at brewery**



google geo-coding

AIzaSyCNoNOBhstdI696ugJL_abjABgXTs_VXsQ

https://developers.google.com/maps/documentation/geocoding/?csw=1
