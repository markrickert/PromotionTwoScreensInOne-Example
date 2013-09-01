PromotionTwoScreensInOne-Example
===

Summary
---

An example Promotion (RubyMotion) application that shows how to use two PM::Screen instances in a master screen and communicate between them.

More in depth
---

This example uses [ProMotion 1.0.0](https://github.com/clearsightstudio/ProMotion). We create one [PM::Screen](https://github.com/clearsightstudio/ProMotion/wiki/API-Reference:-ProMotion::Screen) and initialize two other PM::Screen subclasses and set all their attributes. Then when we lay out the the main view controller, we add the two PM::Screen's respective views to the main screen.

This app is a map with a tableview under it that lists out all the states. You can tap a state and the map will animate and zoom to encompass the entire state. This app also showcases Apple's reverse geocoding api very nicely since I'll I'm doing to get the map coordinates and region is asking Apple where "State, USA" is and it returns back all the relevant data for me to use.

Making the screens talk to each other
---

You can see how I'm passing messages from the [PM::TableScreen](https://github.com/clearsightstudio/ProMotion/wiki/API-Reference:-ProMotion::TableScreen) to the [PM::MapScreen](https://github.com/clearsightstudio/ProMotion/wiki/API-Reference:-ProMotion::MapScreen) using the `attr_accessor :container` to pass in `self` and therefore allow messages to be easily sent to the main view controller to manupilate both screens.

Screenshots
---

![Screenshot 1](http://i.imgur.com/adV1Zm3.png)

![Screenshot 2](http://i.imgur.com/eeAgpLt.png)
