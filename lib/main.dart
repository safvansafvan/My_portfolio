import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return GetMaterialApp(
      title: 'Muhammed Safvan',
      theme: ThemeData(
        fontFamily: GoogleFonts.sora().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          titleTextStyle: TextStyle(
              fontSize: 14,
              fontFamily: GoogleFonts.sora().fontFamily,
              fontWeight: FontWeight.w600,
              color: Colors.grey[500],
              letterSpacing: 1),
        ),
      ),
      initialRoute: '/',
      routes: {'/': (_) => const HomeView()},
      debugShowCheckedModeBanner: false,
    );
  }
}
