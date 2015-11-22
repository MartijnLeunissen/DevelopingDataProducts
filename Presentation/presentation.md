Shiny App: Amsterdam Hotel Info
========================================================
author: Martijn Leunissen
date: 22 Nov 2015
width: 1600
height: 900

Created for the course developing data products

Providing insight into Hotel Capacity and Stars

Data obtained from the Amsterdam open data initiative

Overview
========================================================

In order to easily get an overview of hotels in Amsterdam, filtered by the amount of stars, a small shiny app was created. 

The app provides an overview of the follow aspects of hotels in amsterdam:

+ Amount of Stars
+ Amount of Rooms
+ Amount of Beds
+ The location
  - Postal Code
  - House Number
  - Location on the Map

Source Data
========================================================

The dataset was obtained from:

http://www.amsterdamopendata.nl/web/guest/data/?dataset=hotels_in_metropoolregio_amsterdam

More specific the Hotels MRA 2014 dataset

The following data was added based on the postal codes provided:

+ Longitude
+ Latitude
+ Geolocation 
  + Longitude+Latitude
  + In a format supported by Google VIS

Raw Data Exploration
========================================================


```
                Name Stars Rooms Beds Postcal.Code    Nr       Location
4 BARBIZON PALACE,NH     5   274  544       1012AD 59-72 52.3765:4.9005
5    DOELEN HOTEL,NH     4    85  162       1012CP    24  52.368:4.8949
```

Screenshot
========================================================

![screenshot][42]

[42]: screenshot.png "Screenshot"
