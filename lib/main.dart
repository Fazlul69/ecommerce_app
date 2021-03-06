import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('ShopApp'),
        actions: <Widget> [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
                accountName: Text('Fazlul'),
                accountEmail: Text('fazlul@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

