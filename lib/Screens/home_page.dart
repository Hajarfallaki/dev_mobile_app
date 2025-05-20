import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/imag.jpeg"),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "HAJAR ELFALLAKI-IDRISSI",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "hajarfallaki24@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text("Covid Tracker", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/pagemap');
              },
            ),
            const Divider(thickness: 2, color: Colors.cyan),
            ListTile(
              leading: const Icon(Icons.chat, color: Colors.deepOrange),
              title: const Text("ENSET Chatbot", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(thickness: 2, color: Colors.cyan),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.green),
              title: const Text("Profile", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(thickness: 2, color: Colors.cyan),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blueGrey),
              title: const Text("Settings", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(thickness: 2, color: Colors.cyan),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.purple),
              title: const Text("Logout", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(thickness: 2, color: Colors.cyan),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to the home page",
          style: TextStyle(color: Colors.purple, fontSize: 40),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
