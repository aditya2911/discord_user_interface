import 'package:discord_ui/screens/watch_screen/watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return Theme(
              data: ThemeData(
                  scaffoldBackgroundColor: AppColors.primary.black,
                  elevatedButtonTheme: ElevatedButtonThemeData(
                      style:
                          ElevatedButton.styleFrom(padding: EdgeInsets.zero)),
                  appBarTheme: AppBarTheme(
                      iconTheme: IconThemeData(
                        color: AppColors.secondary.white,
                      ),
                      color: Colors.transparent,
                      elevation: 0),
                  textTheme: TextTheme(
                    bodyText1: GoogleFonts.poppins(),
                    bodyText2: GoogleFonts.poppins(),
                  )),
              child: const SafeArea(child: WatchScreen()));
        });
  }
}
