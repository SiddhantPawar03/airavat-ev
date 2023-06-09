import 'package:ev_stations/screens/splash.dart';
import 'package:ev_stations/screens/users/connection.dart';
import 'package:ev_stations/screens/users/scan_qr_code.dart';
import 'package:ev_stations/screens/login.dart';
import 'package:ev_stations/screens/users/ev_charging_stations.dart';
import 'package:flutter/material.dart';
import 'screens/users/dashboard.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EV Stations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}
