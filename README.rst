**Note:** Wetterdienst-UI has been relocated_ into Wetterdienst_ itself and was renamed to `Wetterdienst Explorer`_.

.. _relocated: https://github.com/earthobservations/wetterdienst/tree/main/wetterdienst/ui/explorer
.. _Wetterdienst: https://github.com/earthobservations/wetterdienst
.. _Wetterdienst Explorer: https://wetterdienst.readthedocs.io/en/latest/usage/explorer.html

----


###################################################
Wetterdienst-UI - Browser for DWD open weather data
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
Don't forget to set the `PYTHONPATH` and install all dependencies.

Using Docker
____________

First you have to build the image by calling:

.. code-block:: bash

    docker build -t "wetterdienst_ui" .

And then run the app:

.. code-block:: bash

    docker run -ti --rm -p 8050:8050 -v $(pwd):/app wetterdienst_ui:latest


Please note the import `-p` tag which enables the port forwarding.

Issues
========
* Implement different figure types for different data types
* Provide more information for weather station (location, avail.) on the front-end
* Display extremes of actual visualisation
* Support overlays
* Zoom map to selected station
* enable select station by click on an icon on map (requires ipyleaflet)

Known Bugs
==========

* `_gdbm.error: [Errno 11] Resource temporarily unavailable: '/root/.cache/wetterdienst/metaindex.dbm'`
    Sometimes there are problems with a wetterdienst cache. You can work around this bug by switching between sudo and not sudo call
