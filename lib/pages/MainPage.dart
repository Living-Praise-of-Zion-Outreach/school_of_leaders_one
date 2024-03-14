import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:school_of_leaders_one/pages/SettingsStateless.dart';
import 'package:school_of_leaders_one/pages/BookLesson.dart';
import 'package:school_of_leaders_one/defaults/defaults.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';

var indexClicked = 0;
var appBarTitle = 'SOL1: School of Leaders';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  late List<Widget> pages = [];
  late String colorTheme = clsApp.defaultColorThemes;
  late int currentTabIndex = 0;
  late String bibleVersion = clsApp.defaultBibleVersion;
  late String language = clsApp.defaultLanguage;
  late bool isOnline=false;

  @override
  void initState() {
    initTheme();

    pages = [
      BookLesson(),
      Container(child: SettingsStateless(colorTheme: colorTheme, bibleVersion: bibleVersion,selectedLanguage: loadLanguageData,selectedBibleVersion: loadBibleVersionData, selectedColor: loadThemeData,appMode: 'full',hasNetwork: isOnline,language: language),
      ),
    ];
    super.initState();
  }

  void initTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isOnline = await hasNetwork();
    setState(() {
      colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
      bibleVersion = prefs.getString('bibleVersion') ?? clsApp.defaultBibleVersion;
      language = prefs.getString('language') ?? clsApp.defaultLanguage;
    });
  }

  Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }


  void loadThemeData(String selectedColor) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('colorThemes', selectedColor);
    colorTheme = selectedColor;
    isOnline = await hasNetwork();
    pages = [
      BookLesson(),
      Container(child: SettingsStateless(colorTheme: colorTheme,bibleVersion: bibleVersion,selectedLanguage: loadLanguageData,selectedBibleVersion: loadBibleVersionData,  selectedColor: loadThemeData,appMode:'full',hasNetwork: isOnline,language: language,),
      ),
    ];
    setState(() {
    });
  }
  void loadBibleVersionData(String _bibleVersion) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('bibleVersion', _bibleVersion);
    bibleVersion = _bibleVersion;
    isOnline = await hasNetwork();
    print('->changed'+ bibleVersion);
    pages = [
      BookLesson(),
      Container(child: SettingsStateless(colorTheme: colorTheme,bibleVersion: bibleVersion,selectedLanguage: loadLanguageData,selectedBibleVersion: loadBibleVersionData,  selectedColor: loadThemeData,appMode:'full',hasNetwork: isOnline,language: language,),
      ),
    ];
    setState(() {
    });
  }
  void loadLanguageData(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', value);
    language = value;
    isOnline = await hasNetwork();
    print('->languagechanged'+ language);
    pages = [
      BookLesson(),
      Container(child: SettingsStateless(colorTheme: colorTheme,bibleVersion: bibleVersion,selectedLanguage: loadLanguageData,selectedBibleVersion: loadBibleVersionData,  selectedColor: loadThemeData,appMode:'full',hasNetwork: isOnline,language: language,),
      ),
    ];
    setState(() {
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    VoidCallback clickDrawer(int index){
      return () {
        setState((){
          initTheme();
          indexClicked=index;
          pages = [
          BookLesson(),
          Container(child: SettingsStateless(colorTheme: colorTheme,bibleVersion:bibleVersion,selectedLanguage: loadLanguageData,selectedBibleVersion: loadBibleVersionData,  selectedColor: loadThemeData,appMode:'full',hasNetwork: isOnline,language: language),
          )];
          Navigator.pop(context);
          if(index==0)
            appBarTitle = 'SOL1: School of Leaders';
          else
            appBarTitle = 'Settings';
        });
      };
    }

    Future<bool> _onBackPressed() async{
      return (await showDialog(
          context: context,
          builder: (context)=> AlertDialog(
            title: const Text('Do you really want to exit the app?',style: TextStyle(fontSize: 16.0),),
            actions: <Widget>[
              TextButton(
                  onPressed: ()=>Navigator.pop(context,false),
                  child:  Text('No',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
              TextButton(
                  onPressed: ()=>Navigator.pop(context,true),
                  child:  Text('Yes',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
            ],
          )
      )
      );
    }

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: myThemes.getColor(colorTheme),
          actions: indexClicked==0 ?  [
            IconButton(icon: Icon(Icons.info), onPressed: () {
              Navigator.pushNamed(context, '/copyright');
            },),
          ] : null,
        ),
        body: pages[indexClicked],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('School Of Leaders I',style: (TextStyle(fontWeight: FontWeight.bold)),),
                accountEmail: const Text('Pastored In His Love | The Power Of Vision',overflow: TextOverflow.ellipsis, style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12),),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/images/raw_icon.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: myThemes.getColor(colorTheme),
                    image: DecorationImage(
                        image: AssetImage(''),
                        fit: BoxFit.cover)
                ),
              ),
              ListTile(
                  leading: Icon(
                      Defaults.drawerItemIcon[0],
                      color: indexClicked ==0 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),
                  title: Text(
                    Defaults.drawerItemText[0],
                    style: TextStyle(color: indexClicked ==0 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),),
                  onTap: clickDrawer(0)
              ),
              ListTile(
                  leading: Icon(
                      Defaults.drawerItemIcon[1],
                      color: indexClicked ==1 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),
                  title: Text(
                    Defaults.drawerItemText[1],
                    style: TextStyle(color: indexClicked ==1 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),),
                  onTap: clickDrawer(1)
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                    Defaults.drawerItemIcon[2],
                    color: indexClicked ==2 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),
                title: Text(
                  Defaults.drawerItemText[2],
                  style: TextStyle(color: indexClicked ==2 ? myThemes.getColor(colorTheme) : Defaults.drawerItemColor),),
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context)=> AlertDialog(
                          title: const Text('Do you really want to exit the app?',style: TextStyle(fontSize: 16.0),),
                          actions: <Widget>[
                            TextButton(
                                onPressed: ()=>Navigator.pop(context,false),
                                child:  Text('No',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                            TextButton(
                                onPressed: ()=>Navigator.pop(context,true),
                                child:  Text('Yes',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                          ],
                        )
                    );
                  });
                },
              )
            ],
          ),
        ),
      ),
    );

  }
}