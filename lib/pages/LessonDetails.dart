import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'lessons/love/eng/Love00.dart';
import 'lessons/love/eng/Love01.dart';
import 'lessons/love/eng/Love02.dart';
import 'lessons/love/eng/Love03.dart';
import 'lessons/love/eng/Love04.dart';
import 'lessons/love/eng/Love05.dart';
import 'lessons/love/eng/Love06.dart';
import 'lessons/love/eng/Love07.dart';
import 'lessons/love/eng/Love08.dart';
import 'lessons/love/eng/Love09.dart';
import 'lessons/love/eng/Love10.dart';
import 'lessons/vision/eng/Vision00.dart';
import 'lessons/vision/eng/Vision01.dart';
import 'lessons/vision/eng/Vision02.dart';
import 'lessons/vision/eng/Vision03.dart';
import 'lessons/vision/eng/Vision04.dart';
import 'lessons/vision/eng/Vision05.dart';
import 'lessons/vision/eng/Vision06.dart';
import 'lessons/vision/eng/Vision07.dart';
import 'lessons/vision/eng/Vision08.dart';
import 'lessons/vision/eng/Vision09.dart';
import 'lessons/vision/eng/Vision10.dart';

class LessonDetails extends StatefulWidget {
  const LessonDetails({super.key});

  @override
  State<LessonDetails> createState() => _LessonDetailsState();
}

class _LessonDetailsState extends State<LessonDetails> with SingleTickerProviderStateMixin{

  int _currentFontSize = 1;
  bool _fontDecrease = true;
  bool _fontIncrease = true;
  late TabController _controller = TabController(length: 2, vsync: this);
  late String colorTheme = clsApp.defaultColorThemes;
  late String appTitle = 'Lesson 1';
  late String language = clsApp.defaultLanguage;


  @override
  void initState() {
    reloadTheme();
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
      });
    });
  }
  void reloadTheme() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _currentFontSize = prefs.getInt('fontSize') ?? 1;
    if(_currentFontSize==0) _fontDecrease=false;
    else if(_currentFontSize==7) _fontIncrease=false;
    colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    language = prefs.getString('language') ?? clsApp.defaultLanguage;
    //print('select lang->'+language);
    setState(() {});
  }
  void updateFontSize() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('fontSize', _currentFontSize);
  }
  TabBar get _tabBar => TabBar(
    controller: _controller,
    indicatorColor: myThemes.getTabColor(colorTheme),
    unselectedLabelColor: Colors.grey[400],
    labelColor: myThemes.getTabColor(colorTheme),
    tabs:[
      Tab(icon: Icon(Icons.topic),height: 50),
      Tab(icon: Icon(Icons.question_answer),height: 50),
    ]
  );
  List<double> availableFontSize = [10,12,16,18,20,24,28,32];

  Widget getLessonFile(String lessonNo,String type,String language){
    late Widget page;

    print('what language->' + language);
    if(type=="Love"){
      switch(lessonNo) {
        case '0':
          page = Love00(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '1':
          page = Love01(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '2':
          page = Love02(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '3':
          page = Love03(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '4':
          page = Love04(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '5':
          page = Love05(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '6':
          page = Love06(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '7':
          page = Love07(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '8':
          page = Love08(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '9':
          page = Love09(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '10':
          page = Love10(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
      }
    }else{
      switch(lessonNo) {
        case '0':
          page = Vision00(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '1':
          page = Vision01(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '2':
          page = Vision02(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '3':
          page = Vision03(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '4':
          page = Vision04(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '5':
          page = Vision05(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '6':
          page = Vision06(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '7':
          page = Vision07(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '8':
          page = Vision08(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '9':
          page = Vision09(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
        case '10':
          page = Vision10(colorTheme: colorTheme,fontSize: availableFontSize[_currentFontSize],language: language);
          break;
      }
    }
    return page;
  }

  void getLessonQuestion(String lessonNo,String type,String language){
    if(type=="Love"){
      switch(lessonNo) {
        case '1':
          Navigator.pushNamed(context, '/Love01Questionnaire');
          break;
        case '2':
          Navigator.pushNamed(context, '/Love02Questionnaire');
          break;
        case '3':
          Navigator.pushNamed(context, '/Love03Questionnaire');
          break;
        case '4':
          Navigator.pushNamed(context, '/Love04Questionnaire');
          break;
        case '5':
          Navigator.pushNamed(context, '/Love05Questionnaire');
          break;
        case '6':
          Navigator.pushNamed(context, '/Love06Questionnaire');
          break;
        case '7':
          Navigator.pushNamed(context, '/Love07Questionnaire');
          break;
        case '8':
          Navigator.pushNamed(context, '/Love08Questionnaire');
          break;
        case '9':
          Navigator.pushNamed(context, '/Love09Questionnaire');
          break;
        case '10':
          Navigator.pushNamed(context, '/Love10Questionnaire');
          break;
      }
    }else{
      switch(lessonNo) {
        case '1':
          Navigator.pushNamed(context, '/Vision01Questionnaire');
          break;
        case '2':
          Navigator.pushNamed(context, '/Vision02Questionnaire');
          break;
        case '3':
          Navigator.pushNamed(context, '/Vision03Questionnaire');
          break;
        case '4':
          Navigator.pushNamed(context, '/Vision04Questionnaire');
          break;
        case '5':
          Navigator.pushNamed(context, '/Vision05Questionnaire');
          break;
        case '6':
          Navigator.pushNamed(context, '/Vision06Questionnaire');
          break;
        case '7':
          Navigator.pushNamed(context, '/Vision07Questionnaire');
          break;
        case '8':
          Navigator.pushNamed(context, '/Vision08Questionnaire');
          break;
        case '9':
          Navigator.pushNamed(context, '/Vision09Questionnaire');
          break;
        case '10':
          Navigator.pushNamed(context, '/Vision10Questionnaire');
          break;
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  List<Widget> getLessonActionWidget(){
    return [
            IconButton(onPressed: _fontDecrease ?  (){
            setState(() {
        int index = _currentFontSize - 1;
        if (index <= 0) {
          _currentFontSize = 0;
          _fontDecrease = false;
        } else {
          _fontIncrease=true;
          _currentFontSize--;
        }
        print(_currentFontSize);
        updateFontSize();
      });
            }: null,
            icon: Icon(Icons.text_decrease,
            color:  _fontDecrease ? Colors.white: Colors.grey[400])),
            IconButton(onPressed: _fontIncrease ? (){
            setState(() {
            int index = _currentFontSize + 1;
              if(index>6)
                {
                  _currentFontSize = 7;
                  _fontIncrease = false;
                }
              else
                {
                  _currentFontSize++;
                  _fontDecrease=true;
                }
            });
            updateFontSize();
            }: null,
            icon: Icon(Icons.text_increase,
            color: _fontIncrease ? Colors.white: Colors.grey[400]))];
  }
  List<Widget> getQuestionnaireActionWidget(){
    return [
      IconButton(onPressed:  (){
        setState(() {
        });
      },
       icon: Icon(Icons.delete)),
      IconButton(onPressed:  (){
        setState(() {
        });
      },
          icon: Icon(Icons.save)),
    ];
  }

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final String lessonNo = routeArgs['lessonNo'].toString();
    final String type =  routeArgs['type'].toString();

    Widget pageDetails = getLessonFile(lessonNo,type,language);
    //Widget pageQuestionDetails = getLessonQuestion(lessonNo, type, language);

    return Scaffold(
        appBar: AppBar(
          title: Text(lessonNo=='0'? clsLanguagePreset.introduction(language) :   type + ": "+  clsLanguagePreset.lesson(language)  + " " + lessonNo),
          actions: [
            IconButton(onPressed: _fontDecrease ?  (){
              setState(() {
                int index = _currentFontSize - 1;
                if (index <= 0) {
                  _currentFontSize = 0;
                  _fontDecrease = false;
                } else {
                  _fontIncrease=true;
                  _currentFontSize--;
                }
                print(_currentFontSize);
                updateFontSize();
              });
            }: null,
                tooltip: clsLanguagePreset.app_bar_action_button_tooltip_font_decrease(language),
                icon: Icon(Icons.text_decrease,
                    color:  _fontDecrease ? Colors.white: Colors.grey[400])),

            IconButton(onPressed: _fontIncrease ? (){
              setState(() {
                int index = _currentFontSize + 1;
                if(index>6){
                  _currentFontSize = 7;
                  _fontIncrease = false;
                }else {
                  _currentFontSize++;
                  _fontDecrease=true;
                }
              });
              print(_currentFontSize);
              updateFontSize();
            }: null,
                tooltip: clsLanguagePreset.app_bar_action_button_tooltip_font_increase(language),
                icon: Icon(Icons.text_increase,
                    color: _fontIncrease ? Colors.white: Colors.grey[400])),
          ],
          backgroundColor: myThemes.getColor(colorTheme),
        ),
        body:  pageDetails
        ,
        floatingActionButton: lessonNo!='0' ?  FloatingActionButton(
            onPressed: () {
              setState(() {
                print('naa ra->' + lessonNo);
                getLessonQuestion(lessonNo, type, language);
              });
         },
            backgroundColor: myThemes.getColor(colorTheme),
            child: Icon(Icons.question_answer),
            tooltip: clsLanguagePreset.float_button_label_open_questionnaire(language)) : null,
        );

  }
}
