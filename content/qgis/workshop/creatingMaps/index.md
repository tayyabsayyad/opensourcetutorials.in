---
title: " Creating Maps"
date: "2018-12-23"
description: "Creating Maps"
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
draft: false
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "GIS"
tags:
  - "QGIS"
---

In this Post we will learn to use the QGIS print layout to create a basic map with all the required settings.

## Layout Manager

1. Go to `Project >> Layout Manager `

  ![Layout](layout.png)

2. Create New Layout and click Ok It will look like following

  ![](layoutwindow.png)

3. You can now access layouts from, `Project >> Layouts `
4. Under `Layout` >> `Page Setup ` Set A4, Landscape and Set margins

  ![](pagesetting.png)

5. Under Add Item, click in Add Map and Select the area on the layout to render the Map, you can Adjust the map in the page.


![AddMap.png](AddMap.png)

`Add Label` from the `Add Item` in the bottom of the page, and Change Items properties from right panel

![AddLabel](AddLabel.png)

6. Set Font Apperence, Alignment and Color

7. Add Legend Similarly and set its propertes, You can rename the layer names by double click on the layer name

![Final Map ](PrintLayout.png)

8. Finally Export to Pdf from `Layout Menu `

File Looks like [riverexport.pdf](riverexport.pdf)
