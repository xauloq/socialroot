import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialroot/features/auth/bloc/auth_bloc.dart';
import 'package:socialroot/features/auth/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Névjegymegosztó App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AuthBloc(),
        child: LoginScreen(),
      ),
      routes: {
        // '/home': (context) => const HomeScreen(),
      },
    );
  }
}