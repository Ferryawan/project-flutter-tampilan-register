import 'dart:html';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:full_project/authentication/login/login.dart';

//wajib panggil file didalam folder lain
import '/authentication/register.dart';
// import 'package:full_project/main2-alternative.dart';
import 'dart:async';

import 'package:flutter/scheduler.dart';

//Eksekusi pertama kali pada program
void main() async {
  //  munculkan splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

//beri waktu splash screen 2 detik
  await Future.delayed(const Duration(seconds: 2));
// hapus splash screen dengan function remove()
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

// Akses ke halaman lain
// Panggil function SignUpApp() dari register.dart
        // home: SignUpApp());
        home: SignUpApp());
  }
}
