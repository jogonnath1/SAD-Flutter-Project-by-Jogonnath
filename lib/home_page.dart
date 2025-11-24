import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(212, 94, 162, 195),
        foregroundColor: Colors.black,
        title: Text("HomePage"),
        // leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.red),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(onTap: () {}, title: Text("HomePage")),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to JDT homepage!!!", style: TextStyle(fontSize: 20)),

            Image.asset('assets/images/front.jpg'),
          ],
        ),
      ),
    );
  }
}
