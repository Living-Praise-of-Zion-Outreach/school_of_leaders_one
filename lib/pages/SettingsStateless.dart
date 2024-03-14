import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/clsSetting.dart';
import 'package:school_of_leaders_one/classes/sql/sqlHelper.dart';
import 'package:school_of_leaders_one/pages/report/Reports.dart';
import 'package:school_of_leaders_one/widgets/BibleVersionSwitcher.dart';
import 'package:school_of_leaders_one/widgets/LanguageSwitcher.dart';
import 'package:url_launcher/url_launcher.dart';
import '../classes/clsThemeColor.dart';
import '../classes/sql/clsSqlLesson.dart';
import '../models/modelDailyVerse.dart';
import '../widgets/ColorThemeSwitcher.dart';
import '../widgets/SettingsCardTemplate.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/services/OnlineDB.dart';

class SettingsStateless extends StatelessWidget {
  final String colorTheme;
  final String bibleVersion;
  final String language;
  final Function selectedColor;
  final Function selectedBibleVersion;
  final Function selectedLanguage;
  final String appMode;
  final bool hasNetwork;


  const SettingsStateless({super.key,required this.colorTheme,required this.bibleVersion,required this.selectedColor,required this.selectedBibleVersion,required this.selectedLanguage, required this.appMode,required this.hasNetwork,required this.language});

  @override
  Widget build(BuildContext context) {
    Timer? countdownTimer;
    late String AutogenID = '-';
    late bool readyBackup = true;
    late bool isOnline;

    Future<void> _launchUrl(String url) async {
      final Uri _url = Uri.parse(url);
      if (!await launchUrl(_url,mode: LaunchMode.inAppWebView)) {
        throw Exception('Could not launch $_url');
      }
    }

    Future<List<clsSqlLesson>> getLessonData({required int startIndex,required int type}) async{
      List<clsSqlLesson> lesson = [];
      final List<PrintChoices> choice_data=[
        PrintChoices(type: 'love',
            isSelected: true,
            data: [true, true, true, true, true, true, true, true, true, true]),
        PrintChoices(type: 'vision',
            isSelected: true,
            data: [true, true, true, true, true, true, true, true, true, true]),
        PrintChoices(type: 'daily verses',
            isSelected: true,
            data: [true,true,true,true,true,true,true,true,true,true]),
      ];
      late bool blnLoveFound = false;
      late String whereLoveStringArguments='';
      late List<int> whereLoveValueArguments=[];
      for(int a=0;a<choice_data[type].data.length;a++){
        if(choice_data[type].data[a]){
          blnLoveFound = true;
          whereLoveStringArguments += whereLoveStringArguments==''? ' lessonID=? ': ' or lessonID=? ';
          whereLoveValueArguments.add(a+startIndex);
        }
      }
      if(blnLoveFound){
        lesson = await sqlHelper().getAllLessonsOnlySelectedID(whereLoveStringArguments, whereLoveValueArguments);
      }else{lesson=[];}
      return lesson;
    }
    Future<List<modelDailyVerse>> getDailyVerseData({required int startIndex,required int type}) async{
      List<modelDailyVerse> dailyVerse = [];
      final List<PrintChoices> choice_data=[
        PrintChoices(type: 'love',
            isSelected: true,
            data: [true, true, true, true, true, true, true, true, true, true]),
        PrintChoices(type: 'vision',
            isSelected: true,
            data: [true, true, true, true, true, true, true, true, true, true]),
        PrintChoices(type: 'daily verses',
            isSelected: true,
            data: [true,true,true,true,true,true,true,true,true,true]),

      ];
      late bool blnDailyVerseFound = false;
      late String whereLoveStringArguments='';
      late List<int> whereLoveValueArguments=[];
      for(int a=0;a<choice_data[type].data.length;a++){
        if(choice_data[type].data[a]){
          int starter = a*7;
          blnDailyVerseFound = true;
          for(int b=0;b<7;b++){
            whereLoveStringArguments += whereLoveStringArguments==''? ' dailyVerseID=? ': ' or dailyVerseID=? ';
            whereLoveValueArguments.add(startIndex +(b+starter));
          }
        }
      }
      if(blnDailyVerseFound){
        print('?->result->' + whereLoveStringArguments);
        for(int i=0;i<whereLoveValueArguments.length;i++){
          print(whereLoveValueArguments[i].toString() + ',');
        }
        dailyVerse = await sqlHelper().getAllDailyVerseOnlySelectedID(whereLoveStringArguments, whereLoveValueArguments);
      }else{dailyVerse=[];}
      return dailyVerse;
    }
    void showBottomDialog(BuildContext context, String id) {
      TextEditingController txt_id = TextEditingController();
      txt_id.text = id;
      showGeneralDialog(
        barrierLabel: "showGeneralDialog",
        barrierDismissible: false,
        barrierColor: Colors.black.withOpacity(0.6),
        transitionDuration: const Duration(milliseconds: 400),
        context: context,
        pageBuilder: (context, _, __) {
          return Align(
            alignment: Alignment.bottomCenter,
            child:
            IntrinsicHeight(
              child: Container(
                width: double.maxFinite,
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Material(
                  child: Column(
                    children: [
                      TextField(
                        controller: txt_id,
                        cursorColor: myThemes.getColor(colorTheme),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: myThemes.getColor(colorTheme),width: 3)),
                          hintText: '',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: () async{
                            await Clipboard.setData(ClipboardData(text: id));
                            var snackBar = SnackBar(content: Text('You successfully copied into your clipboard!'));
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          }, child: Text('Copy'),style: ElevatedButton.styleFrom(backgroundColor: myThemes.getColor(colorTheme))),
                          OutlinedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        transitionBuilder: (_, animation1, __, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ).animate(animation1),
            child: child,
          );
        },
      );
    }

    void showBottomDialogForBackupData(BuildContext context, String id) async{
      TextEditingController txt_id = TextEditingController();
      txt_id.text = id;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              elevation: 0.0,
              // title: Center(child: Text("Evaluation our APP")),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: txt_id,
                            cursorColor: myThemes.getColor(colorTheme),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                              focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: myThemes.getColor(colorTheme),width: 3)),
                              hintText: '',
                            ),
                          ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(onPressed: () async{
                              await Clipboard.setData(ClipboardData(text: id));
                              var snackBar = SnackBar(content: Text('You successfully copied into your clipboard!'));
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }, child: Text('Copy'),style: ElevatedButton.styleFrom(backgroundColor: myThemes.getColor(colorTheme))),
                            OutlinedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                          ],
                        ),
                      ]),
                    )
                  ),
                ],
              ));
        },
      );
    }
    void showBottomDialogForImportData(BuildContext context, String id) async{
      TextEditingController txt_id = TextEditingController();
      txt_id.text = '';
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              elevation: 0.0,
              // title: Center(child: Text("Evaluation our APP")),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                              TextField(
                                controller: txt_id,
                                cursorColor: myThemes.getColor(colorTheme),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                  focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: myThemes.getColor(colorTheme),width: 3)),
                                  hintText: '',
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: () async{
                                    bool response = await OnlineDB().importData(txt_id.text);
                                    if(response){
                                      Navigator.of(context).pop();
                                      var snackBar = SnackBar(content: Text('You have successfully imported the data!'));
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }else{
                                      Navigator.of(context).pop();
                                      var snackBar = SnackBar(content: Text('Error: Invalid Code ID or Empty Data. Please check the code or try another.'));
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }

                                    //var snackBar = SnackBar(content: Text('You successfully copied into your clipboard!'));
                                    //Navigator.of(context).pop();
                                    //ScaffoldMessenger.of(context).showSnackBar(snackBar);


                                  }, child: Text('Copy'),style: ElevatedButton.styleFrom(backgroundColor: myThemes.getColor(colorTheme))),
                                  OutlinedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                                ],
                              ),
                            ]),
                      )
                  ),
                ],
              ));
        },
      );
    }
    Future<String> backupData() async {

      //String AutoGeneratedID = randomAlphaNumeric(20);
      String AutoGeneratedID = await OnlineDB().addUsers();

      List<clsSqlLesson> _love = await getLessonData(startIndex: 1, type: 0);
      for(int a=0;a<_love.length;a++) {
        Map<String,dynamic> lessonMap={
          'id': AutoGeneratedID,
          'lessonID':_love[a].lessonID,
          'lessonNo':_love[a].lessonNo,
          'bookType':_love[a].bookType,
          'answer_1':_love[a].answer_1,
          'answer_2':_love[a].answer_2,
          'answer_3':_love[a].answer_3,
          'answer_4':_love[a].answer_4,
          'answer_5':_love[a].answer_5,
          'answer_6':_love[a].answer_6,
          'answer_7':_love[a].answer_7,
          'answer_8':_love[a].answer_8,
          'answer_9':_love[a].answer_9,
          'answer_10':_love[a].answer_10,
          'createdAt':_love[a].createdAt,
          'updatedAt':_love[a].updatedAt,
          'maxAnswers':_love[a].maxAnswers,
          'completionRate':_love[a].completionRate,
        };
        if(_love[a].completionRate>0)  await OnlineDB().addLessons(lessonMap, AutoGeneratedID);
      }

      List<clsSqlLesson> _vision = await getLessonData(startIndex: 11, type: 1);
      for(int a=0;a<_vision.length;a++) {
        Map<String,dynamic> lessonMap={
          'lessonID':_vision[a].lessonID,
          'lessonNo':_vision[a].lessonNo,
          'bookType':_vision[a].bookType,
          'answer_1':_vision[a].answer_1,
          'answer_2':_vision[a].answer_2,
          'answer_3':_vision[a].answer_3,
          'answer_4':_vision[a].answer_4,
          'answer_5':_vision[a].answer_5,
          'answer_6':_vision[a].answer_6,
          'answer_7':_vision[a].answer_7,
          'answer_8':_vision[a].answer_8,
          'answer_9':_vision[a].answer_9,
          'answer_10':_vision[a].answer_10,
          'createdAt':_vision[a].createdAt,
          'updatedAt':_vision[a].updatedAt,
          'maxAnswers':_vision[a].maxAnswers,
          'completionRate':_vision[a].completionRate,
        };
        if(_vision[a].completionRate>0) await OnlineDB().addLessons(lessonMap, AutoGeneratedID);
      }

      List<modelDailyVerse> _dailyVerse = await getDailyVerseData(startIndex: 1,type: 2);
      for(int a=0;a<_dailyVerse.length;a++) {
        Map<String,dynamic> verseMap={
          'dailyVerseID':_dailyVerse[a].dailyVerseID,
          'weekNo':_dailyVerse[a].weekNo,
          'dayNo':_dailyVerse[a].dayNo,
          'content':_dailyVerse[a].content,
          'content_description':_dailyVerse[a].content_description,
          'status':_dailyVerse[a].status,
          'max_verse':_dailyVerse[a].max_verse,
          'devo_rhema':_dailyVerse[a].devo_rhema,
          'devo_commands':_dailyVerse[a].devo_commands,
          'devo_warnings':_dailyVerse[a].devo_warnings,
          'devo_promises':_dailyVerse[a].devo_promises,
          'devo_application':_dailyVerse[a].devo_application,
          'completion_rate':_dailyVerse[a].completion_rate,
          'createdDt':_dailyVerse[a].createdDt,
          'updateDt':_dailyVerse[a].updateDt,
          'marker':_dailyVerse[a].marker
        };
        if(_dailyVerse[a].completion_rate>0) await OnlineDB().addDailyVerses(verseMap, AutoGeneratedID);
      }

      return AutoGeneratedID;
    }


    void buyAction() async{
      print('buy');
    }
    void restoreAction(){
      print('restore');
    }

    List<String> options = ['Gray','Black', 'Green', 'Blue', 'Orange', 'Pink', 'Red', 'Purple', 'Teal','Amber','Indigo','Cyan','Lime'];
    List<clsSetting> clsSettings = [];

    if(appMode=='trial'){
      clsSettings = [
        clsSetting(icon: 'language',title: 'Language', rightBox: language,color: colorTheme),
        clsSetting(icon: 'theme',title: 'Theme:', rightBox: 'yes',color: colorTheme),
        clsSetting(icon: 'locker',title: 'Privacy Policy', rightBox: '',color: colorTheme),
        clsSetting(icon: 'exclamation',title: 'Terms & Condition', rightBox: '',color: colorTheme),
        //clsSetting(icon: 'star',title: 'Rate Us', rightBox: '',color: colorTheme),
        clsSetting(icon: 'nativeAds',title: 'Buy', rightBox: '',color: colorTheme),
      ];
    }else{
      clsSettings = [
        clsSetting(icon: 'language',title: 'Language', rightBox: language,color: colorTheme),
        clsSetting(icon: 'bibleVersion',title: 'Bible Version', rightBox: bibleVersion,color: colorTheme),
        clsSetting(icon: 'theme',title: 'Theme:', rightBox: 'yes',color: colorTheme),
        clsSetting(icon: 'reset',title: 'Reset Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'import',title: 'Import Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'backup',title: 'Backup Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'locker',title: 'Privacy Policy', rightBox: '',color: colorTheme),
        clsSetting(icon: 'exclamation',title: 'Terms & Condition', rightBox: '',color: colorTheme),
        //clsSetting(icon: 'star',title: 'Rate Us', rightBox: '',color: colorTheme),
        clsSetting(icon: 'nativeAds',title: 'Buy', rightBox: '',color: colorTheme),
      ];
    }

    void reloadThemeColorSelected(String value) async{
      Navigator.pop(context);
      clsSettings = [
        clsSetting(icon: 'theme',title: 'Theme:', rightBox: 'yes',color: colorTheme),
        clsSetting(icon: 'locker',title: 'Privacy Policy', rightBox: '',color: colorTheme),
        clsSetting(icon: 'exclamation',title: 'Terms & Condition', rightBox: '',color: colorTheme),
        //clsSetting(icon: 'star',title: 'Rate Us', rightBox: '',color: colorTheme),
      ];
      selectedColor(value);
    }
    void reloadBibleVersionSelected(String value) async{
      Navigator.pop(context);
      clsSettings = [
        clsSetting(icon: 'language',title: 'Language', rightBox: language,color: colorTheme),
        clsSetting(icon: 'bibleVersion',title: 'Bible Version', rightBox: value,color: colorTheme),
        clsSetting(icon: 'theme',title: 'Theme:', rightBox: 'yes',color: colorTheme),
        clsSetting(icon: 'reset',title: 'Reset Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'import',title: 'Import Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'backup',title: 'Backup Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'locker',title: 'Privacy Policy', rightBox: '',color: colorTheme),
        clsSetting(icon: 'exclamation',title: 'Terms & Condition', rightBox: '',color: colorTheme),
        //clsSetting(icon: 'star',title: 'Rate Us', rightBox: '',color: colorTheme),
        clsSetting(icon: 'nativeAds',title: 'Buy', rightBox: '',color: colorTheme),
      ];
      print('aha->');
      selectedBibleVersion(value);
    }
    void reloadLanguageSelected(String value) async{
      Navigator.pop(context);
      clsSettings = [
        clsSetting(icon: 'language',title: 'Language', rightBox: value,color: colorTheme),
        clsSetting(icon: 'bibleVersion',title: 'Bible Version', rightBox: value,color: colorTheme),
        clsSetting(icon: 'theme',title: 'Theme:', rightBox: 'yes',color: colorTheme),
        clsSetting(icon: 'reset',title: 'Reset Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'import',title: 'Import Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'backup',title: 'Backup Data', rightBox: '',color: colorTheme),
        clsSetting(icon: 'locker',title: 'Privacy Policy', rightBox: '',color: colorTheme),
        clsSetting(icon: 'exclamation',title: 'Terms & Condition', rightBox: '',color: colorTheme),
        //clsSetting(icon: 'star',title: 'Rate Us', rightBox: '',color: colorTheme),
        clsSetting(icon: 'nativeAds',title: 'Buy', rightBox: '',color: colorTheme),
      ];
      print('aha language->');
      selectedLanguage(value);
    }

    List<clsThemeColor> cls_themeColor = [
      clsThemeColor(title: options[0], groupValue: colorTheme),
      clsThemeColor(title: options[1], groupValue: colorTheme),
      clsThemeColor(title: options[2], groupValue: colorTheme),
      clsThemeColor(title: options[3], groupValue: colorTheme),
      clsThemeColor(title: options[4], groupValue: colorTheme),
      clsThemeColor(title: options[5], groupValue: colorTheme),
      clsThemeColor(title: options[6], groupValue: colorTheme),
      clsThemeColor(title: options[7], groupValue: colorTheme),
      clsThemeColor(title: options[8], groupValue: colorTheme),
      clsThemeColor(title: options[9], groupValue: colorTheme),
      clsThemeColor(title: options[10], groupValue: colorTheme),
      clsThemeColor(title: options[11], groupValue: colorTheme),
      clsThemeColor(title: options[12], groupValue: colorTheme),
    ];
    List<clsThemeColor> cls_bible_version = [
      clsThemeColor(title: 'NIV', groupValue: bibleVersion),
      clsThemeColor(title: 'ASND', groupValue: bibleVersion),
      clsThemeColor(title: 'RCPV', groupValue: bibleVersion),
    ];
    List<clsThemeColor> cls_language = [
      clsThemeColor(title: 'English', groupValue: language),
      clsThemeColor(title: 'Tagalog', groupValue: language),
      clsThemeColor(title: 'Cebuano', groupValue: language),
    ];



    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: clsSettings.map((e) =>
              SettingsCardTemplate(
                  cls_setting: e,
                  openClick: () async{
                      print(e.title);
                      if(e.title=='Theme:' && readyBackup){
                        //load bottom sheet dialog
                        showModalBottomSheet(context: context, builder: (context){
                          return SafeArea(
                            child: SingleChildScrollView(
                              child: Column(
                                  children: cls_themeColor.map((ef) =>
                                      ColorThemeSwitcher(cls_themeColor: ef, changeClick: reloadThemeColorSelected)).toList()
                              ),
                            ),
                          );
                        });
                      }
                      else if(e.title=='Bible Version' && readyBackup){
                        showModalBottomSheet(context: context, builder: (context){
                          return SafeArea(
                            child: SingleChildScrollView(
                              child: Column(
                                  children: cls_bible_version.map((ef) =>
                                      BibleVersionSwitcher(cls_themeColor: ef, changeClick: reloadBibleVersionSelected)).toList()
                              ),
                            ),
                          );
                        });
                      }
                      else if(e.title=='Language' && readyBackup){
                        showModalBottomSheet(context: context, builder: (context){
                          return SafeArea(
                            child: SingleChildScrollView(
                              child: Column(
                                  children: cls_language.map((ef) =>
                                      LanguageSwitcher(cls_themeColor: ef, changeClick: reloadLanguageSelected)).toList()
                              ),
                            ),
                          );
                        });
                      }
                      else if(e.title=='Reset Data' && readyBackup){
                        await showDialog(
                            context: context,
                            builder: (context)=> AlertDialog(
                              title: const Text('Are you sure you want to reset your record? All of your record will be deleted permanently and reset back to default.',style: TextStyle(fontSize: 16.0),),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: ()=>Navigator.pop(context,false),
                                    child:  Text('No',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                                TextButton(
                                    onPressed: () async{
                                      Navigator.pop(context,false);
                                      sqlHelper.resetLesson();
                                      sqlHelper.resetDailyVerse();
                                      var snackBar = SnackBar(content: Text('You have successfully reset the data!'));
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    },
                                    child:  Text('Yes',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                              ],
                            )
                        );
                      }
                      else if(e.title=='Import Data' && readyBackup){
                        if(hasNetwork){
                                showBottomDialogForImportData(context,'');
                        }else{
                          var snackBar = SnackBar(content: Text('Error! You need an internet connection.'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                      else if(e.title=='Backup Data' && readyBackup){
                        if(hasNetwork){
                          var snackBar = SnackBar(content: Text('Creating a back up data, do not close the app while processing.'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          readyBackup=false;

                          AutogenID = await backupData();

                          countdownTimer =
                              Timer.periodic(Duration(seconds: 3), (_) async {
                                Navigator.of(context).pop();
                                countdownTimer?.cancel();
                                readyBackup=true;
                                showBottomDialogForBackupData(context,AutogenID);
                              });

                          await showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child:
                                  new Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      new CircularProgressIndicator(),
                                      Expanded(child: Padding(padding:EdgeInsets.symmetric(horizontal: 50.0),child: new Text("Loading...",textAlign: TextAlign.center))),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                        }else{
                          var snackBar = SnackBar(content: Text('Error! You need an internet connection.'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                      else if(e.title=='Privacy Policy' && readyBackup){
                        _launchUrl('https://doc-hosting.flycricket.io/sol1-school-of-leaders-1-privacy-policy/ec4cad88-7572-4518-9ee7-4bafd7012f10/privacy');
                      }
                      else if(e.title=='Terms & Condition' && readyBackup){
                        _launchUrl('https://doc-hosting.flycricket.io/sol1-school-of-leaders-1-terms-conditions/6a02c337-ef6e-4553-ba99-8e95a9bb0111/terms');
                      }
                  },
                buyAction: buyAction,
                restoreAction: restoreAction,
              )).toList(),
        ),
      ),
    );
  }


}
