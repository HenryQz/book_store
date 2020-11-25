import 'package:audio_story/presentation/home/detail_screen.dart';
import 'package:audio_story/presentation/home/home_screen.dart';
import 'package:audio_story/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: LoginScreen.routeName,
          routes: {
            LoginScreen.routeName: (context) => LoginScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            DetailScreen.routeName: (context) => DetailScreen(),
          },
        ));
  }
}
