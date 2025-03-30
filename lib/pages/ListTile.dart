import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("1st Page")),
        backgroundColor: Colors.amber[300],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            //! common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite, // logo
                size: 48,
              )
            ),

            //? home page list tile

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // pop out drawer first
                Navigator.pop(context);
                Navigator.pushNamed(context, ("/home"));
              },
            ),

            //? settings page list tile

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                // pop out drawer first
                Navigator.pop(context);
                Navigator.pushNamed(context, ("/settings"));
              }
                
            )

          ],
        ),
      ),
      /*body: Center(
        child: ElevatedButton(
          child: Text("Go to 2nd Page"),
          onPressed: () => {
            //! navigate to 2nd page
            Navigator.pushNamed(context, '/secondpage')
          },
        ),
      )*/
    );
  }
}