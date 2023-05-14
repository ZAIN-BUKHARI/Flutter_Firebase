import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta/responsive/mobile_screen_layout.dart';
import 'package:insta/responsive/responsive_layout_screen.dart';
import 'package:insta/responsive/web_screen_layout.dart';
import 'package:insta/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyCbms59LHUczoNKGOcdWomlNH8_zqyCIHw", appId: "1:309528405078:web:4da8f7e233975264acc7f7", messagingSenderId: "309528405078", projectId: "instagram-539c7",
    storageBucket: "instagram-539c7.appspot.com")
  );

  }else{

  await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(
          webScreenLayout: WebScreen(), mobscreen: MobileScreen()),
    );
  }
}
