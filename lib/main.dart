import 'package:flutter/material.dart';

void main() {
  // Running the app
  runApp(
    const EnhancedCounterApp(),
  );
}

class EnhancedCounterApp extends StatelessWidget{
  const EnhancedCounterApp({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppBody(),
      // Hiding the debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}


