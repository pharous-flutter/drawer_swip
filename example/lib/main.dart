import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 20,
        key: drawerKey,
        backgroundColor: Colors.grey,
        drawer: buildDrawer(),
        child: buildBody(),
      ),
    );
  }

  Column buildDrawer() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(title: Text('Title'),),
          ListTile(title: Text('Title'),),
          ListTile(title: Text('Title'),),
        ],
      );
  }

  Widget buildBody() {
    return Column(
      children: [
        AppBar(
          title: Text('AppBar title'),
          leading: InkWell(
              onTap: () {
                if (drawerKey.currentState.isOpened()) {
                  drawerKey.currentState.closeDrawer();
                } else {
                  drawerKey.currentState.openDrawer();
                }
              },
              child: Icon(Icons.menu)),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text('Home Screen'),
            ),
          ),
        ),
      ],
    );
  }
}
