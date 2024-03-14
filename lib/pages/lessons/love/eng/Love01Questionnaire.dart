import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../ParagraphFormatter.dart';
import 'package:school_of_leaders_one/pages/controlBox/SingleLabelInputField.dart';

class Love01Questionnaire extends StatefulWidget {
  const Love01Questionnaire({super.key});

  @override
  State<Love01Questionnaire> createState() => _Love01QuestionnaireState();
}

class _Love01QuestionnaireState extends State<Love01Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  late String language = clsApp.defaultLanguage;
  clsSqlLesson? lessonData;

  final  answer_1_1 = TextEditingController();
  final  answer_1_2 = TextEditingController();
  final  answer_1_3 = TextEditingController();
  final  answer_2 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_3_3 = TextEditingController();
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_5 = TextEditingController();
  final  answer_6 = TextEditingController();
  final  answer_7 = TextEditingController();
  final  answer_8_1 = TextEditingController();
  final  answer_8_2 = TextEditingController();
  final  answer_8_3 = TextEditingController();
  final  answer_9 = TextEditingController();
  late int maxAnswers=0;
  late int completionRate=0;
  late int _currentFontSize = 1;
  List<double> availableFontSize = [10,12,16,18,20,24,28,32];

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
      lessonData = await sqlHelper.getLessonByID(1);
      List<String> colAns1 = lessonData!.answer_1.split("~");
      maxAnswers = lessonData!.maxAnswers;
      completionRate = lessonData!.completionRate;

      print('current completion rate->'+completionRate.toString());

      if(colAns1.length>1){
        answer_1_1.text = colAns1[0];
        answer_1_2.text = colAns1[1];
        answer_1_3.text = colAns1[2];
      }
      answer_2.text = lessonData!.answer_2;
      colAns1 = lessonData!.answer_3.split("~");
      if(colAns1.length>1){
        answer_3_1.text = colAns1[0];
        answer_3_2.text = colAns1[1];
        answer_3_3.text = colAns1[2];
      }
      colAns1 = lessonData!.answer_4.split("~");
      if(colAns1.length>1){
        answer_4_1.text = colAns1[0];
        answer_4_2.text = colAns1[1];
        answer_4_3.text = colAns1[2];
      }
      answer_5.text = lessonData!.answer_5;
      answer_6.text = lessonData!.answer_6;
      answer_7.text = lessonData!.answer_7;
      colAns1 = lessonData!.answer_8.split("~");
      if(colAns1.length>1){
        answer_8_1.text = colAns1[0];
        answer_8_2.text = colAns1[1];
        answer_8_3.text = colAns1[2];
      }
      answer_9.text = lessonData!.answer_9;


  }


  Widget getHeadings(String title){
    return Padding(padding:EdgeInsets.all(10.0),child: Center(child: Container(decoration: BoxDecoration(color:myThemes.getTabColor(colorTheme)),child: Padding(padding:EdgeInsets.all(10.0),child: Text(title, style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,),)),),));
  }


  void updateAnswers() async{
    String ans1 = answer_1_1.text + "~" + answer_1_2.text + "~" +answer_1_3.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" +answer_3_3.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" +answer_4_3.text;
    String ans5 = answer_5.text;
    String ans6 = answer_6.text;
    String ans7 = answer_7.text;
    String ans8 = answer_8_1.text + "~" + answer_8_2.text + "~" +answer_8_3.text;
    String ans9 = answer_9.text;
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.text.trim()!='' && answer_1_2.text.trim()!='' && answer_1_2.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' && answer_3_3.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' && answer_4_3.text.trim()!='')
      completionCounter+=1;
    if(answer_5.text.trim()!='')
      completionCounter+=1;
    if(answer_6.text.trim()!='')
      completionCounter+=1;
    if(answer_7.text.trim()!='')
      completionCounter+=1;
    if(answer_8_1.text.trim()!='' && answer_8_2.text.trim()!='' &&  answer_8_3.text.trim()!='')
      completionCounter+=1;
    if(answer_9.text.trim()!='')
      completionCounter+=1;



    double totalPercentage = (completionCounter/9) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    print('current counter->'+completionRate.toString());

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 1,
        lessonNo: 1,
        bookType: 'love',
        answer_1: ans1,
        answer_2: ans2,
        answer_3: ans3,
        answer_4: ans4,
        answer_5: ans5,
        answer_6: ans6,
        answer_7: ans7,
        answer_8: ans8,
        answer_9: ans9,
        answer_10: ans10,
        maxAnswers: maxAnswers,
        completionRate:completionRate,
        updatedAt: DateTime.now().toString(), createdAt: ''));
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
      answer_1_1.text='';
      answer_1_2.text='';
      answer_1_3.text='';
      answer_2.text='';
      answer_3_1.text='';
      answer_3_2.text='';
      answer_3_3.text='';
      answer_4_1.text='';
      answer_4_2.text='';
      answer_4_3.text='';
      answer_5.text='';
      answer_6.text='';
      answer_7.text='';
      answer_8_1.text='';
      answer_8_2.text='';
      answer_8_3.text='';
      answer_9.text='';
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_05 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_07 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_08 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_09 = [
      clsRichTextFormatter(content:clsLoveQuestionnaire01.question_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    return Scaffold(
      body:
      Scaffold(
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
          title: Text(clsLanguagePreset.app_bar_label_love_questionnaire(language) + ' 1'),
          backgroundColor: myThemes.getColor(colorTheme),
        ),
            floatingActionButton: FloatingActionButton(
            onPressed: updateAnswers,
            backgroundColor: myThemes.getColor(colorTheme),
            child: Icon(Icons.save),
            tooltip: clsLanguagePreset.float_button_label_save_answers(language)),

        body: SafeArea(
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
                        getHeadings(clsLanguagePreset.headings_activity_questionnaire(language) + ' 1'),
                        ParagraphFormatter(richTextData: question_01),
                        SingleLabelInputField(controller: answer_1_1, label: '1.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_1_2, label: '2.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_1_3, label: '3.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_02),
                        MultiInputField(controller: answer_2, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_03),
                        SingleLabelInputField(controller: answer_3_1, label: '1.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_3_2, label: '2.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_3_3, label: '3.', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_04),
                        SingleLabelInputField(controller: answer_4_1, label: clsLove01.question04_label_1(language), hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_4_2, label: clsLove01.question04_label_2(language), hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_4_3, label: clsLove01.question04_label_3(language), hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_05),
                        MultiInputField(controller: answer_5, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_06),
                        MultiInputField(controller: answer_6, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 2, colorTheme: colorTheme, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_07),
                        MultiInputField(controller: answer_7, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 2, colorTheme: colorTheme, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_08),
                        SingleLabelInputField(controller: answer_8_1, label: 'a. ', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_8_2, label: 'b. ', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        SingleLabelInputField(controller: answer_8_3, label: 'c. ', hint: clsLanguagePreset.hint_enter_your_answer(language), colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                        ParagraphFormatter(richTextData: question_09),
                        MultiInputField(controller: answer_9, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                        SizedBox(width: 0,height: 100,)
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
      ),
    );
  }
}
