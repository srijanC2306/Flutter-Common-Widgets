import 'package:bloc_ux/profile/screens/profile_screen.dart';
import 'package:bloc_ux/register/bloc/register_bloc.dart';
import 'package:bloc_ux/register/screens/row_column_adjustment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RegisterBloc _registerBloc = RegisterBloc();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  ProfileScreen()


        // BlocProvider<RegisterBloc>(
        //     create: (context) => _registerBloc, child: RegisterScreen()),
        );
  }
}
