import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/pages/dailyverse/DailyVerseList.dart';
import 'package:school_of_leaders_one/pages/dashboard/Dashboard.dart';
import 'package:school_of_leaders_one/pages/dashboard/DashboardStateless.dart';
import 'package:school_of_leaders_one/pages/report/Reports.dart';
import 'package:school_of_leaders_one/pages/tabpage/LessonLove.dart';
import 'package:school_of_leaders_one/pages/tabpage/LessonVision.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import '../classes/sql/clsSqlLesson.dart';
import '../classes/sql/sqlHelper.dart';
import '../models/modelDailyVerse.dart';
import '../widgets/ads/BannerAds.dart';

class BookLesson extends StatefulWidget {
  const BookLesson({super.key});
  @override
  State<BookLesson> createState() => _BookLessonState();
}

class _BookLessonState extends State<BookLesson>{

  late String colorTheme= clsApp.defaultColorThemes;
  bool bannerAdsLoaded = false;
  Widget bannerAds = BannerAds();
  int adClickCount = 0;
  int currentTab = 0;
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

  late double percentageLove = 0;
  late double percentageVision = 0;
  late double percentageDailyVerse=0;

  PageController _pageController = PageController(initialPage: 0);

  String appMode = 'trial';

  void loadThemeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    calculation();
    setState(() {
      colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
      appMode = prefs.getString('appMode') ??  clsApp.DEFAULT_APP_MODE;
      adClickCount = prefs.getInt('adClickCount') ??  0;
    });
  }

  void calculation() async{
    List<clsSqlLesson> _love = await getLessonData(startIndex: 1, type: 0);
    double pLove = 0;
    for(int a=0;a<_love.length;a++) pLove+=_love[a].completionRate;
    percentageLove = pLove/1000;

    List<clsSqlLesson> _vision = await getLessonData(startIndex: 11, type: 1);
    double pVision = 0;
    for(int a=0;a<_vision.length;a++) pVision+=_vision[a].completionRate;
    percentageVision = pVision/1000;

    List<modelDailyVerse> _dailyVerse = await getDailyVerseData(startIndex: 1,type: 2);

    double pDaily = 0;
    for(int a=0;a<_dailyVerse.length;a++) pDaily+=_dailyVerse[a].completion_rate;
    percentageDailyVerse = pDaily/7000;
    print('->totalDa->'+ _dailyVerse.length.toString());

    setState(() {});

  }

  Future<List<modelDailyVerse>> getDailyVerseData({required int startIndex,required int type}) async{
    List<modelDailyVerse> dailyVerse = [];
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
  Future<List<clsSqlLesson>> getLessonData({required int startIndex,required int type}) async{
    List<clsSqlLesson> lesson = [];
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

  void onTapDashboard(int _index){
    currentTab = _index;
    _pageController.animateToPage(_index, duration: Duration(microseconds: 500), curve: Curves.ease);
    calculation();
    setState(() {
    }
    );
  }

  late List<Widget> screens = [
    DashboardStateless(colorTheme: colorTheme,onTap: onTapDashboard,lovePercentage: percentageLove,visionPercentage: percentageVision,dailyVersePercentage: percentageDailyVerse),
    LessonLove(),
    LessonVision(),
    DailyVerseList(),
    Reports()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = LessonLove();

  @override
  void initState() {
    loadThemeData();
    calculation();
    super.initState();
  }

  void onTap(int index){
    currentTab = index;
    print('error->men');
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              calculation();
              currentTab = index;
            });
          },
          children: [
            DashboardStateless(colorTheme: colorTheme,onTap: onTapDashboard,lovePercentage: percentageLove,visionPercentage: percentageVision,dailyVersePercentage: percentageDailyVerse),
            LessonLove(),
            LessonVision(),
            DailyVerseList(),
            Reports()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentTab,
            onTap: (index){
              _pageController.animateToPage(index, duration: Duration(microseconds: 500), curve: Curves.ease);
              setState(() {
                calculation();
              });
            },
            selectedItemColor: myThemes.getColor(colorTheme),
            unselectedItemColor: Colors.grey[300],
            showUnselectedLabels: false,
            showSelectedLabels: true,
            items:[
              BottomNavigationBarItem(label: 'Dashboard', icon: Icon(Icons.dashboard)),
              BottomNavigationBarItem(label: 'Love',  icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(label: 'Vision', icon: Icon(Icons.visibility_sharp)),
              BottomNavigationBarItem(label: 'Daily Verse', icon: Icon(Icons.menu_book)),
              BottomNavigationBarItem(label: 'Reports', icon: Icon(Icons.print)),
            ]
        )
    );
  }
}