import 'package:flutter/material.dart';
import './utils/colors.dart';
import './utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColor.backgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.backgroundColor
          ),
          fontFamily: "Poppins",
          primaryColor: AppColor.primaryColor,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: AppColor.primaryTextColor),
            bodySmall: TextStyle(color: AppColor.primaryTextColor),
          )
          // useMaterial3: true,
          ),
      routerConfig: router,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
