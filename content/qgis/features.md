---
title: " Features of QGIS "
date: "2018-12-23"
description: "Features of QGIS"
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
draft: false
mathjax: true # Optional, enable MathJax for specific post
categories:
  - ""
tags:
  - "QGIS"
---
## View and Explore Data

View Vector Data, which constists of points, lines, polygones shapes.

Use `Layer >> Add Layer >> Add Vector Layer` to add Vector Layer

![Picture of Vector data ](/files/qgis/images/vectorDataView.png)

Data Source : https://mapcruzin.com/free-maharashtra-country-city-place-gis-shapefiles.htm

View Raster Data which consistes of matrix of cells (or pixels) organized into rows and columns (or a grid) where each cell contains a value representing information

Use `Layer >> Add Layer >> Add Raster Layer` to add Raster Layer

![Picture of Raster Data](/files/qgis/images/rasterdata.png)

Data Source : https://www.naturalearthdata.com/downloads/10m-raster-data/10m-natural-earth-1/


<b>View Dada from A Web Map Service (WMS)</b>

WMS is a standard protocol developed by the Open Geospatial Consortium

Following three images showns layers from the Geonode. GeoNode is a web-based application and platform for developing GIS system and for deploying spatial data infrastructures (SDI)

Use `Layer >> Data Source Manager >> WMS/WMTS >> New Connection >> Connect >> Select Layers` to add the WMS data

<b>Add Connection Details </b>
You can add the connect from http://68.183.128.28/geoserver/wms You dont need to login if the layer has is public access

![ WMS 1 ](/files/qgis/images/wms1.png)

<b>Select Layers </b>

![ WMS 2 ](/files/qgis/images/wms2.png)


<b> Later Added to the QGIS </b>

![ WMS 3 ](/files/qgis/images/wms3.png)


<b>View Data from the Sqlight </b>

Use `Layer >> Data Source >> spatiaLight >> New >> Select Sqlight File >> Connect >> Add`

![ spatiaLight ](/files/qgis/images/spatiaLight.png)

## Compose/Create Map for Sharing/Printing

[DBIT Tree Plantation Program ](/files/qgis/DBITLayout.pdf)

## Create, Edit, Manage and Export Data
+ Editing tools for Vector and Raster data
+ Georeferencer to geocode images
+ GPS tools to import and export GPX format, and convertion tools
+ Visualizing and editing OpenStreetMap data
+ Create spatial database tables from files
+ Managing vector attribute tables

## Analysis of the data
+ Vector analysis
+ Sampling
+ Geoprocessing
+ Geometry and database management tools

## Publishing Maps on the Web
QGIS can be used as a client for

`WMS` : A Web Map Service is a standard protocol developed by the Open Geospatial Consortium in 1999 for serving georeferenced map images over the Internet

`WMTS` : A Web Map Tile Service is a standard protocol for serving pre-rendered or run-time computed georeferenced map tiles over the Internet

`WMS-C` : Web Mapping Service - Cached permits servers to optimize their image generation, and allows tiles to be cached at intermediate points. A WMS-C service would likely only deliver images for bounding boxes aligned to a given rectangular origin and grid, and only at particular scale levels.

`WFS` : Open Geospatial Consortium Web Feature Service (WFS) Interface Standard provides an interface allowing requests for geographical features across the web using platform-independent calls

`WFS-T client` : Web Feature Service (WFS) with transactions

`WMS, WCS or WFS server` : QGIS can server as a server for WMS,WCS ot WFS services

## QGIS Plugins

You can create new plugin or use existing developed by community

![ qgisplugin ](/files/qgis/images/qgisplugin.png)


## QGIS Python console for scripting
![ qgispython ](/files/qgis/images/qgispython.png)
