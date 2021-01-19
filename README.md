

#  DrawerSwipe

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://www.pharous.com/) 

A Swipe Drawer Library for Easy and Quick Usage.
* Checkout the Original Author : [![GitHub followers])](https://github.com/ahmedelsayed96)


The source code is **100% Dart**, and everything resides in the [/lib](https://github.com/pharous-flutter/drawer_swip/tree/master/lib) folder.


### Show some :heart: and star the repo to support the project



[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/pharous-flutter/drawer_swip/tree/master/LICENSE)


### GIF
<img src="https://github.com/pharous-flutter/drawer_swip/raw/master/assets/example.gif" height="400" alt="GIF"/>

## 💻 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:



```
drawer_swipe: <latest_version>
```

## ❔ Usage

### Import this class
```dart
import 'package:drawer_swipe/drawer_swipe.dart';
```

### Use SwipeDrawer

```dart
  @override
  Widget build(BuildContext context) {
  return Scaffold(  
    // add this line so you can add your appBar in Body  
    extendBodyBehindAppBar: true,  
    body: SwipeDrawer(  
      radius: 20,  
    key: drawerKey,  
    bodyBackgroundPeekSize: 30,  
    backgroundColor: Colors.red,  
    // pass drawer widget  
    drawer: buildDrawer(),  
    // pass body widget  
    child: buildBody(),  
    ),  
  );
  }
```

## 🎨 Customization and Attributes

#### SwipeDrawer attributes
<table>
    <th>Attribute Name</th>
    <th>Example Value</th>
    <th>Description</th>
    <tr>
        <td>child</td>
        <td>BodyWidget()</td>
        <td>Screen Body Widget </td>
    </tr>
    <tr>
        <td>drawer</td>
        <td> DrawerWidget()</td>
        <td>Drawer Body Widget </td>
    </tr>
    <tr>
        <td>radius</td>
        <td>20.0</td>
        <td>body radius value the default value is 0.0 </td>
    </tr>
    <tr>
        <td>bodyBackgroundPeekSize</td>
        <td>30.0</td>
        <td>the distance between the main body and the faded one the default value is 50.0</td>
    </tr>
    <tr>
        <td>backgroundColor</td>
        <td>Colors.red</td>
        <td>background color the default value is Colors.black</td>
    </tr>
   <tr>
        <td>bodySize</td>
        <td>70.0</td>
        <td>body width when opening the drawer the default value is 80.0</td>
    </tr>
    <tr>
        <td>curve</td>
        <td>Curves.easeOut</td>
        <td>animation curve default value is Curves.easeIn</td>
    </tr>

</table>

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<table>
  <tr>
   <td align="center"><a href="https://github.com/ahmedelsayed96"><img src="https://avatars1.githubusercontent.com/u/18017854?s=100" width="100px;" alt=""/><br /><sub><b>Ahmed Eslayed</b></sub></a><br /><a href="https://github.com/ahmedelsayed96" title="Coding">💻</a></td>
</table>

# 📃 License

    Copyright (c) 2012 Pharous

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
