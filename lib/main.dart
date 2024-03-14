
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:school_of_leaders_one/pages/Copyright.dart';
import 'package:school_of_leaders_one/pages/FontSettings.dart';
import 'package:school_of_leaders_one/pages/SplashScreen.dart';
import 'package:school_of_leaders_one/pages/MainPage.dart';
import 'package:school_of_leaders_one/pages/LessonDetails.dart';
import 'package:school_of_leaders_one/pages/dailyverse/DailyDevotionalDetails.dart';
import 'package:school_of_leaders_one/pages/dailyverse/DailyVerseDetails.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love01Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love02Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love03Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love04Questionaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love05Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love06Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love07Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love08Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love09Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/love/eng/Love10Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision01Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision02Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision03Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision04Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision05Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision06Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision07Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision08Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision09Questionnaire.dart';
import 'package:school_of_leaders_one/pages/lessons/vision/eng/Vision10Questionnaire.dart';

import 'package:school_of_leaders_one/classes/sql/sqlHelper.dart';
import 'package:firebase_core/firebase_core.dart';

  void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  sqlHelper.initDefaultDB;
  sqlHelper.initNivDB;
  sqlHelper.initAsndDB;
  sqlHelper.initRcpvDB;
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true
  );
  //THIS IS TO INITIALIZE FIRST DB DURING FIRST INSTALLATION//

  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/home': (context) => const MainPage(),
            '/lesson_details': (context) => const LessonDetails(),
            '/font_settings': (context) => const FontSettings(),
            '/copyright': (context) => const Copyright(),
            '/DailyVerseDetails': (context) => const DailyVerseDetails(),
            '/DailyDevotionalDetails': (context) => const DailyDevotionalDetails(),

            '/Love01Questionnaire': (context) => const Love01Questionnaire(),
            '/Love02Questionnaire': (context) => const Love02Questionnaire(),
            '/Love03Questionnaire': (context) => const Love03Questionnaire(),
            '/Love04Questionnaire': (context) => const Love04Questionnaire(),
            '/Love05Questionnaire': (context) => const Love05Questionnaire(),
            '/Love06Questionnaire': (context) => const Love06Questionnaire(),
            '/Love07Questionnaire': (context) => const Love07Questionnaire(),
            '/Love08Questionnaire': (context) => const Love08Questionnaire(),
            '/Love09Questionnaire': (context) => const Love09Questionnaire(),
            '/Love10Questionnaire': (context) => const Love10Questionnaire(),
            '/Vision01Questionnaire': (context) => const Vision01Questionnaire(),
            '/Vision02Questionnaire': (context) => const Vision02Questionnaire(),
            '/Vision03Questionnaire': (context) => const Vision03Questionnaire(),
            '/Vision04Questionnaire': (context) => const Vision04Questionnaire(),
            '/Vision05Questionnaire': (context) => const Vision05Questionnaire(),
            '/Vision06Questionnaire': (context) => const Vision06Questionnaire(),
            '/Vision07Questionnaire': (context) => const Vision07Questionnaire(),
            '/Vision08Questionnaire': (context) => const Vision08Questionnaire(),
            '/Vision09Questionnaire': (context) => const Vision09Questionnaire(),
            '/Vision10Questionnaire': (context) => const Vision10Questionnaire(),
          }
      ));
}






