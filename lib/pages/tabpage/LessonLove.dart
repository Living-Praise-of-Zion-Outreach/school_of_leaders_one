
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../classes/lesson.dart';
import '../../classes/sql/clsSqlLesson.dart';
import '../../classes/sql/sqlHelper.dart';
import '../../widgets/LessonCardTemplate.dart';
import '../../widgets/ads/AppOpenAds.dart';
import '../../widgets/ads/BannerAds.dart';
import '../../widgets/ads/InterstitialAds.dart';
import '../report/Reports.dart';

class LessonLove extends StatefulWidget {
  const LessonLove({super.key});

  @override
  State<LessonLove> createState() => _LessonLoveState();
}

class _LessonLoveState extends State<LessonLove> {
  String colorTheme = clsApp.defaultColorThemes;
  List<Lesson> lesson = [];
  int adClickCount = 0;
  String appMode = 'full';
  String language = clsApp.defaultLanguage;
  final ScrollController _scrollController = ScrollController();
  late List<PrintChoices> _data=[];

  void initializeData(){
  _data = [
  PrintChoices(type: 'love', isSelected: false, data: [true,true,true,true,true,true,true,true,true,true]),
  PrintChoices(type: 'vision',isSelected: false, data: [true,true,true,true,true,true,true,true,true,true]),
  ];
}
  void loadLessons() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    adClickCount = prefs.getInt('adClickCount') ?? 0;
    language = prefs.getString('language') ?? clsApp.defaultLanguage;
    lesson = [
      Lesson(lessonNo: '0',title: clsLanguagePreset.love_0_1(language),subTitle: clsLanguagePreset.love_0_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '1',title: clsLanguagePreset.love_1_1(language),subTitle: clsLanguagePreset.love_1_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '2',title: clsLanguagePreset.love_2_1(language),subTitle: clsLanguagePreset.love_2_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '3',title: clsLanguagePreset.love_3_1(language),subTitle: clsLanguagePreset.love_3_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '4',title: clsLanguagePreset.love_4_1(language),subTitle: clsLanguagePreset.love_4_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '5',title: clsLanguagePreset.love_5_1(language),subTitle: clsLanguagePreset.love_5_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '6',title: clsLanguagePreset.love_6_1(language),subTitle: clsLanguagePreset.love_6_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '7',title: clsLanguagePreset.love_7_1(language),subTitle: clsLanguagePreset.love_7_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '8',title: clsLanguagePreset.love_8_1(language),subTitle: clsLanguagePreset.love_8_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '9',title: clsLanguagePreset.love_9_1(language),subTitle: clsLanguagePreset.love_9_2(language),color: colorTheme,completionRate: 0),
      Lesson(lessonNo: '10',title:clsLanguagePreset.love_10_1(language),subTitle: clsLanguagePreset.love_10_2(language),color: colorTheme,completionRate: 0),
    ];
    setState(() {
    });
  }
  @override
  void initState() {
    initializeData();
    loadLessons();
    // TODO: implement initState
    super.initState();
  }
  void updateAdClickCount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('adClickCount', adClickCount);
  }
  @override
  void dispose() {
    super.dispose();
  }
  void openLesson(Lesson e){
    print(e.lessonNo);
    if(appMode=='trial'){
      InterstitialAds.load();
      if(e.lessonNo=='1' || e.lessonNo=='2' || e.lessonNo=='3' || e.lessonNo=='4' || e.lessonNo=='5'){
        Navigator.pushNamed(
            context, '/lesson_details',arguments: {
          'lessonNo' : e.lessonNo,
          'title': e.title,
          'type': "Love"
        });
      }else{
        showDialog(
            context: context,
            builder: (context)=> AlertDialog(
              title: const Text('Sorry, the app is a trial version. To unlock this, you need to buy the full version of this app.',style: TextStyle(fontSize: 16.0),),
              actions: <Widget>[
                TextButton(
                    onPressed: ()=>Navigator.pop(context,false),
                    child:  Text('Ok',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
              ],
            )
        );
      }
    }else{
      setState(() {
        adClickCount++;
        if(adClickCount>clsApp.defaultAppOpenCounter){
          adClickCount=0;
          AppOpenAds.loadAd();
        }
        updateAdClickCount();
        print('adCount=' + adClickCount.toString());
        Navigator.pushNamed(
            context, '/lesson_details',arguments: {
          'lessonNo' : e.lessonNo,
          'title': e.title,
          'language': 'English',
          'type': "Love"
        });
      });
    }
  }

  Future<List<clsSqlLesson>> getLessonData({required int startIndex,required int type}) async{
    List<clsSqlLesson> lesson = [];
    late bool blnLoveFound = false;
    late String whereLoveStringArguments='';
    late List<int> whereLoveValueArguments=[];
    for(int a=0;a<_data[type].data.length;a++){
      if(_data[type].data[a]){
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

  Widget getBody(List<clsSqlLesson> _data){

    for(int i=1;i<lesson.length;i++){
      lesson[i].completionRate = _data[i-1].completionRate;
    }

    return Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: RawScrollbar(
                controller: _scrollController,
                child: Column(
                  children:[
                    Column(
                      children: lesson.map((e) => LessonCardTemplate(
                          lesson: e,
                          appMode: appMode,
                          openLesson: (){
                            setState(() {openLesson(e);});
                          },
                        completionRate: e.completionRate,
                      )).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BannerAds()]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       body: FutureBuilder<List<clsSqlLesson>>(
         future: getLessonData(startIndex: 1,type: 0),
         builder: (BuildContext context, AsyncSnapshot<List<clsSqlLesson>> snapshot){
           List<clsSqlLesson>? _data = snapshot.data;
           if(snapshot.hasData)
           {
             return getBody(_data!);
           }
           else
           {
             return const Center(child: CircularProgressIndicator());
           }
         },
       ),
     ),
    );
  }
}
