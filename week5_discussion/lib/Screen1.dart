import 'package:flutter/material.dart';
import 'top.dart';
import 'HomePage.dart';
import 'screen2.dart';


class Component1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Info'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
        actions: [
          IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Sewe Mjano'),
              accountEmail: const Text('smjano@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: const NetworkImage(
                    'https://images.pexels.com/photos/773371/pexels-photo-773371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text('Home')),
            ),
                //ElevatedButton(onPressed: () => {}, child: child),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton.icon(onPressed: () => {}, icon: Icon(Icons.settings), label: Text("Settings")),
                ),

                Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                  onPressed: () => {},
                  icon: Icon(Icons.logout),
                  label: Text("Log Out")),
            )
            // ListTile(
            //   title: const Text('Home Page'),
            // )
          ],
        ),
      ),
      body: TopApp(), 
    );
  }
}
