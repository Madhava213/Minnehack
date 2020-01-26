import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:minnehack_app/widgets/category_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Login", "/login"),
      getNavItem(Icons.home, "Home", "/home"),
      getNavItem(Icons.account_box, "List", "/list"),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }
  onScroll() {}

  Widget _buildCard() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "What type of volunteering\nare you looking for?",
                style: TextStyle(
                  fontSize: 30,
                  height: 0.9,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 40),
            CategoryList(),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        elevation: 10.0,
        gradient: LinearGradient(colors: [Colors.teal, Colors.blue]),
        title: Text('DECIDE APP NAME YOU NOOBS'),
      ),
      backgroundColor: Color(0xFF3EB489),
      body: Column(
        children: <Widget>[
          _buildCard(),
        ],
      ),
    );
  }
}
