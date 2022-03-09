import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/src/pages/detail_page.dart';
import 'package:provider_state/src/pages/home_page.dart';
import 'package:provider_state/src/providers/user_provider.dart';

void main() {
  runApp(const MyAppState());
}

class MyAppState extends StatelessWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (_) => const HomePage(),
        '/detail': (_) => const DetailPage(),
      },
    );
  }
}
