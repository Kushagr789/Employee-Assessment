import 'package:employee/view/home.dart';
import 'package:employee/viewModel/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDIWtBFhEcgWf7lsgzJlLyB9FOEEnrR0uA", appId: "1:1072824105903:android:320cc7645dac0f0f0e4d5a", messagingSenderId: "1072824105903", projectId: "employee-e727e"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmployeeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Employee App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}


