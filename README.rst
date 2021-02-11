###################################################
Wetterdienst-UI - Broswer for DWD open weather data
###################################################

Introduction
************
Welcome to Wetterdienst-UI, your friendly GUI for the wetterdienst weather service library for Python.
You can self host this


Features
********

Coverage
========
The wetterdiens-ui currently covers access to:

- Weather observation data.
  Both historical, recent and near real time.


Run UI
========
Run the wetterdienst user interface from the project directory by these commands:

* CLI: `python3 ui/app.py`

Access via: http://127.0.0.1:8050/
Don't forget to set the `PYTHONPATH`

Issues
========
* Add a loader icon while data will be downloaded
* Support run in Docker
* Implement different figure types for different data types
* Provide more information for weather station (location, avail.) on the front-end
* Display extremes of actual visualisation
* Support overlays
* Zoom map to selected station
* enable select station by click on an icon on map (requires ipyleaflet)
