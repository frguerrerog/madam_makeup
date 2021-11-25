import 'package:flutter/material.dart';
import 'package:madam_makeup/ui/pages/authentication/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
      },
    );
  }
}
