import 'package:flutter/material.dart';
import 'package:nibras_test/features_ui/login/login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:nibras_test/routes/pageRoute.dart'; // Import the get package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GetMaterialApp(
        initialRoute: '/',
        getPages: AppPages.routes,
        supportedLocales: const [
          Locale('ar'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
          textTheme: TextTheme(
            displaySmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
            titleSmall: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
            headlineSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
          ),
        ),
        locale: Locale('ar'),
        home: const Login(),
      ),
    );
  }
}
