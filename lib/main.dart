import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:powertools_app/shop/presentation/pages/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations
            .delegate, // package:flutter_gen/gen_l10n/app_localizations.dart
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        // Locale('en', 'US'), // English
        Locale('he', 'IL'), // Hebrew
      ],
      title: 'המומלצים של קמחי!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitProject(),
    );
  }
}

class InitProject extends StatelessWidget {
  const InitProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
