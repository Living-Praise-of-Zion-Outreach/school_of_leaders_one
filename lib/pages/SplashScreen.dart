import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:school_of_leaders_one/pages/MainPage.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late String colorTheme = clsApp.defaultColorThemes;

  void loadThemeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    loadThemeData();

    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
    }
    );

  }
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.top,SystemUiOverlay.bottom]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(height: 10,)
              ),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: ClipOval(
                        child: Image.asset('assets/images/app_logo.png'),
                      ),
                    ),
                    Text('SCHOOL OF LEADERS I',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color:Colors.black,fontStyle: FontStyle.normal),),
                    Text('Pastored In His Love | The Power Of Vision',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal,color:Colors.black,fontStyle: FontStyle.italic),),
                  ]
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(children: [
                  Text('All rights reserved \u00a9 2024',style: TextStyle(fontSize: 13),),
                  Text('CESAR CASTELLANOS D.',style: TextStyle(fontWeight: FontWeight.bold),),
                ],),
              ),
            ]

          )),
    );
  }
}
