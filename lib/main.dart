import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/implicit_animation.dart';

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
      routes: {
        MyHomePage.route: (context) =>
            const MyHomePage(title: 'Flutter Demo Home Page'),
        ImplicitAnimationScreen.route: (context) =>
            const ImplicitAnimationScreen()
      },
      initialRoute: MyHomePage.route,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  static const String route = "homeScreenRoute";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              elevation: 10,
              color: Theme.of(context).colorScheme.inversePrimary,
              padding: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text("Explicit Animation",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pushNamed(ImplicitAnimationScreen.route);
              },
            )
          ],
        ),
      ),
    );
  }
}
