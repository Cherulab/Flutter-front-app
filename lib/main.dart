import 'package:flutter/material.dart';
import 'modules/map_module.dart';
import './modules/prog_module.dart';
import './modules/profile_module.dart';
import './sign/sign.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

// HOME PAGE
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ListView(
          children: [
            // GO TO PROFIL PAGE
            // GO TO LOTS PAGE
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilRoute()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 128, 207, 253))),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: const [Icon(Icons.people), Text('Profil')],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapRoute()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 128, 207, 253))),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: const [Icon(Icons.map), Text('Map')],
                ),
              ),
            ),
            // GO TO PROGRAMMES PAGE

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProgRoute()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 128, 207, 253))),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: const [Icon(Icons.folder), Text('Programmes')],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage2()),
                );
              },
              child: const Text('Sign'),
            )
          ],
        ),
      ),
    );
  }
}
