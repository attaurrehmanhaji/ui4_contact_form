import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/profilePhoto.jpg'),
            ),
            const Text(
              'Attaur Rehman',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, letterSpacing: 6.0),
            ),
            const Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '030090xxxxx',
                            style: TextStyle(
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.mail,
                            color: Colors.teal,
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Example@gmail.com',
                              style: TextStyle(color: Colors.teal),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
