import 'package:delivery_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:scoped_model/scoped_model.dart';

import 'lang/scope_model_wrapper.dart';
import 'lang/style.dart';
import 'lang/translation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
        builder: (context, child, model) => MaterialApp(
          locale: model.appLocal,
          localizationsDelegates: [
            const TranslationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('ar', ''), // Arabic
            const Locale('en', ''), // English
          ],
          debugShowCheckedModeBanner: false,

          title: "Arabic Flutter",
          home:  SplashScreen(),
        ));
  }
}