
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'bloc/firstbloc.dart';
import 'bloc/regbloc.dart';
import 'ui/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<AuthBloc>(
            create: (context) => AuthBloc()),



        BlocProvider<RegBloc>(
            create: (context) => RegBloc()),
      ],

      child: MaterialApp(
        title: 'Flutter Demo',
        darkTheme: ThemeData(

          primarySwatch: Colors.blue,

        ),

        home: const HomePage(),
      ),
    );
  }
}

