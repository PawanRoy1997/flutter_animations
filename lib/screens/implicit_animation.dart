import 'package:flutter/material.dart';

class ImplicitAnimationScreen extends StatefulWidget {
  static const String route = "ExplictAnimationRoute";

  const ImplicitAnimationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImplicitAnimationScreenState();
  }
}

class _ImplicitAnimationScreenState extends State<ImplicitAnimationScreen> {
  double _margin = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          color: Colors.blue,
          margin: EdgeInsets.all(_margin),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            MaterialButton(
              child: const Text("Animate Margin", textAlign: TextAlign.center),
              onPressed: () => setState(() => _margin = 40),
            ),
          ])),
    );
  }
}
