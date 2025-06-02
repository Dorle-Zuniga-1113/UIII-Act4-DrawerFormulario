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
            radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Dorle-Zuniga-1113/cosmeticos_imagenes_app_flutter/refs/heads/main/pinkUser.png'),
            ),
          ),
        ),
              
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Home Page"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/producto");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Mis Productos"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/empleado");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Mis Empleados "),
              ),
            ),
          ],
      ),
    ), 

    );

  }
}