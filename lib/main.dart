import 'package:firebase_core/firebase_core.dart';
import 'package:firedart/firestore/firestore.dart';
import 'package:flutter/material.dart';
import 'next.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.initialize("shopping-zone-36ab7");
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyBffSa7lO32t3LcB20r4Xu7W6_AEsQBF9I",
    appId: "1:269036190878:web:50a36cd90e67e8b9fd8f8f",
    messagingSenderId: "269036190878",
    storageBucket: "e-com-app-1e9de.appspot.com",
    //databaseURL: "https://pharmacy-app-decf9-default-rtdb.firebaseio.com",
    projectId: "e-com-app-1e9de",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RealtimeDatabaseInsert(),
      debugShowCheckedModeBanner: false,
    );
  }
}
