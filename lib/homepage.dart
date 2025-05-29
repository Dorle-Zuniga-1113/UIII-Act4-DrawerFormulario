import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              accountName: Text("Dorle Zuñiga 1113"),
              accountEmail: Text("dorlecreativa2608@gmail.com"),
              currentAccountPicture: GestureDetector( 
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.pink,
                  ),
                ),
              ),
              
            )
          ],
      ),
    ), 

    );

  }
}