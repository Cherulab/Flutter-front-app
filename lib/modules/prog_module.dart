import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: ProgRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProgRoute extends StatelessWidget {
  const ProgRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programmes'),
      ),
      body: Center(
          child: ListView(children: [
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
          child: Text('Nos Programmes',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white)),
        ),
        Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Color.fromARGB(255, 55, 132, 241),
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 128, 189, 255),
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://static.latribune.fr/full_width/771192/logement-appartement.jpg"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Le havre',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ), //Textstyle
                  ),
                  const Text(
                    '385,000 €',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 128, 207, 253))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.touch_app),
                            Text('Visit')
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Color.fromARGB(255, 55, 132, 241),
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 128, 189, 255),
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://static.latribune.fr/full_width/771192/logement-appartement.jpg"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'Immo Neuf',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ), //Textstyle
                  ),
                  const Text(
                    '250,000 €',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 128, 207, 253))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.touch_app),
                            Text('Visit'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
