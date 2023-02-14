import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: ProfilRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfilRoute extends StatelessWidget {
  const ProfilRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Center(
          child: ListView(children: [
// PROFIL ROUTE
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Home'),
        ),
        Container(
          constraints: BoxConstraints.expand(
            height:
                Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 +
                    200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Color.fromARGB(255, 79, 154, 221),
          alignment: Alignment.center,
          child: Text('Bonjour Morgan',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white)),
        )
      ])),
    );
  }
}
