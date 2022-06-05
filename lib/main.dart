import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demos/firebase_demo/add_user.dart';
//import 'package:flutter_application_demos/TestingDemos/counter_app.dart';
import 'package:flutter_application_demos/firebase_options.dart';
//import 'package:flutter_application_demos/shared_preferences/login.dart';

// 
// void main() async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// runApp(const CounterApp());
// }


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
runApp(const FBFlutterApp());
}
class FBFlutterApp extends StatelessWidget {
const FBFlutterApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text('Adding Record to Firebase DB'),
),
body: const AddUser(
userName: 'Shirisha',
password: 'Peddaboina',
emailId: 'shireeshapeddaboina@gmail.com'),
),
);
}
}
