import 'package:chatapp/ui/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';



void main() {
  runApp(
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider<WeatherBloc>(create: (context) => WeatherBloc()),
    //   ],
    //   child: MyApp(),
      MyApp());
  // ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const  FirstScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              child: const Text(
                'Chat App',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
