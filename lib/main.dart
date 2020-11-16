import 'package:audio_story/widgets/home/detail1_screen.dart';
import 'package:audio_story/widgets/home/detail2_screen.dart';
import 'package:audio_story/widgets/home/detail_screen.dart';
import 'package:audio_story/widgets/home/home_screen.dart';
import 'package:audio_story/widgets/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';


// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ValidateAddButton()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialRoute: LoginScreen.routeName,
//       routes: {
//         LoginScreen.routeName: (context) => LoginScreen(),
//         HomeScreen.routeName: (context) => HomeScreen(),
//         DetailScreen.routeName: (context) => DetailScreen(),
//       },
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//         providers: [
//           BlocProvider<Validator>(
//               create: (BuildContext context) => Validator()
//           )
//         ],
//         child: MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             visualDensity: VisualDensity.adaptivePlatformDensity,
//           ),
//           initialRoute: LoginScreen.routeName,
//           routes: {
//             LoginScreen.routeName: (context) => LoginScreen(),
//             HomeScreen.routeName: (context) => HomeScreen(),
//             DetailScreen.routeName: (context) => DetailScreen(),
//           },
//         )
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}


