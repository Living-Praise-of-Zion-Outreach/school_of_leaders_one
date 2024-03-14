import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../ParagraphFormatter.dart';
import 'package:school_of_leaders_one/pages/controlBox/SingleLabelInputField.dart';
import '../../classes/clsLanguageSelector.dart';

class Love10Questionnaire extends StatefulWidget {
  const Love10Questionnaire({super.key});

  @override
  State<Love10Questionnaire> createState() => _Love10QuestionnaireState();
}

class _Love10QuestionnaireState extends State<Love10Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  late int _currentFontSize = 1;
  List<double> availableFontSize = [10,12,16,18,20,24,28,32];
  late String language = clsApp.defaultLanguage;

  final  answer_1 = TextEditingController();
  final  answer_2 = TextEditingController();
  final  answer_3 = TextEditingController();
  final  answer_4 = TextEditingController();
  final  answer_5_1 = TextEditingController();
  final  answer_5_2 = TextEditingController();
  final  answer_5_3 = TextEditingController();
  final  answer_5_4 = TextEditingController();
  final  answer_6 = TextEditingController();
  final  answer_7 = TextEditingController();
  final  answer_8 = TextEditingController();
  late int maxAnswers=0;
  late int completionRate=0;

  @override
  void initState() {
    super.initState();
    initTheme();
    loadData();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void initTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
      _currentFontSize = prefs.getInt('fontSize') ?? 1;
      language = prefs.getString('language') ?? clsApp.defaultLanguage;
      fontSize = availableFontSize[_currentFontSize];
    });
  }

  void loadData() async{
    lessonData = await sqlHelper.getLessonByID(10);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    answer_1.text = lessonData!.answer_1;
    List<String> colAns1;
    answer_2.text = lessonData!.answer_2;
    answer_3.text = lessonData!.answer_3;
    answer_4.text = lessonData!.answer_3;
    colAns1 = lessonData!.answer_5.split("~");
    if(colAns1.length>1){
      answer_5_1.text = colAns1[0];
      answer_5_2.text = colAns1[1];
      answer_5_3.text = colAns1[2];
      answer_5_4.text = colAns1[3];
    }
    answer_6.text = lessonData!.answer_6;
    answer_7.text = lessonData!.answer_7;
    answer_8.text = lessonData!.answer_8;
    setState(() {
    });
  }


  Widget getHeadings(String title){
    return Padding(padding:EdgeInsets.all(10.0),child: Center(child: Container(decoration: BoxDecoration(color:myThemes.getTabColor(colorTheme)),child: Padding(padding:EdgeInsets.all(10.0),child: Text(title, style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,),)),),));
  }

  void updateAnswers() async{
    String ans1 = answer_1.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3.text;
    String ans4 = answer_4.text;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text;
    String ans6 = answer_6.text;
    String ans7 = answer_7.text;
    String ans8 = answer_8.text;

    int completionCounter = 0;
    if(answer_1.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3.text.trim()!='')
      completionCounter+=1;
    if(answer_4.text.trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' &&  answer_5_3.text.trim()!='' &&  answer_5_4.text.trim()!='')
      completionCounter+=1;
    if(answer_6.text.trim()!='')
      completionCounter+=1;
    if(answer_7.text.trim()!='')
      completionCounter+=1;
    if(answer_8.text.trim()!='')
      completionCounter+=1;


    double totalPercentage = (completionCounter/8) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 10,
        lessonNo: 10,
        bookType: 'love',
        answer_1: ans1,
        answer_2: ans2,
        answer_3: ans3,
        answer_4: ans4,
        answer_5: ans5,
        answer_6: ans6,
        answer_7: ans7,
        answer_8: ans8,
        answer_9: '',
        answer_10: '',
        updatedAt: DateTime.now().toString(),
        createdAt: '',
        maxAnswers: maxAnswers,
        completionRate:completionRate));
    setState(() {
      print('Answer: ' + ans1);
      var snackBar = SnackBar(content: Text(clsLanguagePreset.label_update_notify(language)));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        SystemNavigator.pop();
      }
    });
  }

  void clearFields(){
    Navigator.pop(context,false);
    answer_1.text = '';
    answer_2.text = '';
    answer_3.text = '';
    answer_4.text = '';
    answer_5_1.text = '';
    answer_5_2.text = '';
    answer_5_3.text = '';
    answer_6.text = '';
    answer_7.text = '';
    answer_8.text = '';
  }

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_05 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_07 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_08 = [
      clsRichTextFormatter(content:LoveQuestionnaire10.question_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showDialog(
                context: context,
                builder: (context)=> AlertDialog(
                  title: Text(clsLanguagePreset.label_clear_fields(language),style: TextStyle(fontSize: 16.0),),
                  actions: <Widget>[
                    TextButton(
                        onPressed: ()=>Navigator.pop(context,false),
                        child:  Text(clsLanguagePreset.label_no(language),style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                    TextButton(
                        onPressed: ()=> clearFields(),
                        child:  Text(clsLanguagePreset.label_yes(language),style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                  ],
                )
            );

          }, icon: Icon(Icons.delete),tooltip: clsLanguagePreset.icon_label_clear_all_fields(language),)
        ],
        title: Text(clsLanguagePreset.app_bar_label_love_questionnaire(language) + ' 10'),
        backgroundColor: myThemes.getColor(colorTheme),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: updateAnswers,
          backgroundColor: myThemes.getColor(colorTheme),
          child: Icon(Icons.save),
          tooltip: clsLanguagePreset.float_button_label_save_answers(language)),
      body:
      SafeArea(
        child: Column(
          children: [Expanded(
            child: RawScrollbar(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getHeadings(clsLanguagePreset.headings_activity_questionnaire(language) + ' 10'),
                      ParagraphFormatter(richTextData: question_01),
                      MultiInputField(controller: answer_1, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      MultiInputField(controller: answer_3, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04),
                      MultiInputField(controller: answer_4, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 6, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      SingleLabelInputField(controller: answer_5_1, label: '1.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_2, label: '2.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_3, label: '3.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_4, label: '4.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      MultiInputField(controller: answer_6, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 8, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_07),
                      MultiInputField(controller: answer_7, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 9, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_08),
                      MultiInputField(controller: answer_8, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 9, colorTheme: colorTheme, fontSize: fontSize),
                      SizedBox(height: 100,)
                    ],
                  ),
                ),
              ),
            ),
          ),
            BannerAds()
          ],
        ),
      ),
    );
  }
}
