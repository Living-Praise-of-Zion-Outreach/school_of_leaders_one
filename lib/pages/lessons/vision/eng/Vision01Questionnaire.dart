import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/ParagraphInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/RadioListTileField.dart';
import 'package:school_of_leaders_one/pages/controlBox/classes/clsInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/classes/clsParagraphInputFieldFormatter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../../controlBox/classes/clsRadioField.dart';
import '../../ParagraphFormatter.dart';
import '../../classes/clsLanguageSelector.dart';

class Vision01Questionnaire extends StatefulWidget {
  const Vision01Questionnaire({super.key});

  @override
  State<Vision01Questionnaire> createState() => _Love01QuestionnaireState();
}

class _Love01QuestionnaireState extends State<Vision01Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  late int _currentFontSize = 1;
  List<double> availableFontSize = [10,12,16,18,20,24,28,32];
  late String language = clsApp.defaultLanguage;

  final  answer_1 = TextEditingController();
  final  answer_2_1 = TextEditingController();
  final  answer_2_2 = TextEditingController();
  final  answer_2_3 = TextEditingController();
  final  answer_2_4 = TextEditingController();
  final  answer_2_5 = TextEditingController();
  final  answer_2_6 = TextEditingController();
  final  answer_2_7 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_3_3 = TextEditingController();
  final  answer_3_4 = TextEditingController();
  final  answer_3_5 = TextEditingController();
  final  answer_3_6 = TextEditingController();
  String? answer_4;
  final  answer_5 = TextEditingController();
  final  answer_6 = TextEditingController();
  late int maxAnswers=0;
  late int completionRate=0;

  Widget getHeadings(String title){
    return Padding(padding:EdgeInsets.all(10.0),child: Center(child: Container(decoration: BoxDecoration(color:myThemes.getTabColor(colorTheme)),child: Padding(padding:EdgeInsets.all(10.0),child: Text(title, style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,),)),),));
  }
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
    lessonData = await sqlHelper.getLessonByID(11);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    answer_1.text = lessonData!.answer_1;
    List<String> colAns1 = lessonData!.answer_2.split("~");
    colAns1 = lessonData!.answer_2.split("~");
    if(colAns1.length>1){
      answer_2_1.text = colAns1[0];
      answer_2_2.text = colAns1[1];
      answer_2_3.text = colAns1[2];
      answer_2_4.text = colAns1[3];
      answer_2_5.text = colAns1[4];
      answer_2_6.text = colAns1[5];
      answer_2_7.text = colAns1[6];
    }
    colAns1 = lessonData!.answer_3.split("~");
    if(colAns1.length>1){
      answer_3_1.text = colAns1[0];
      answer_3_2.text = colAns1[1];
      answer_3_3.text = colAns1[2];
      answer_3_4.text = colAns1[3];
      answer_3_5.text = colAns1[4];
      answer_3_6.text = colAns1[5];
    }
    answer_4 = lessonData!.answer_4;
    answer_5.text = lessonData!.answer_5;
    answer_6.text = lessonData!.answer_6;
  }
  void updateAnswers() async{
    String ans1 = answer_1.text;
    String ans2 =  answer_2_1.text + "~" + answer_2_2.text + "~" +answer_2_3.text + "~" + answer_2_4.text + "~" + answer_2_5.text + "~" +answer_2_6.text + "~" +answer_2_7.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" +answer_3_3.text + "~" + answer_3_4.text + "~" + answer_3_5.text + "~" +answer_3_6.text;
    String ans4 = answer_4.toString();
    String ans5 = answer_5.text;
    String ans6 = answer_6.text;
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1.text.trim()!='')
      completionCounter+=1;
    if(answer_2_1.text.trim()!='' && answer_2_2.text.trim()!='' &&  answer_2_3.text.trim()!='' && answer_2_4.text.trim()!='' && answer_2_5.text.trim()!='' &&  answer_2_6.text.trim()!='' &&  answer_2_7.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' &&  answer_3_3.text.trim()!='' && answer_3_4.text.trim()!='' && answer_3_5.text.trim()!='' &&  answer_3_6.text.trim()!='')
      completionCounter+=1;
    if(answer_4.toString().trim()!='')
      completionCounter+=1;
    if(answer_5.text.trim()!='')
      completionCounter+=1;
    if(answer_6.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/6) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 11,
        lessonNo: 1,
        bookType: 'vision',
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


  void clearFields() {
    Navigator.pop(context, false);
      answer_1.text = '';
      answer_2_1.text = '';
      answer_2_2.text = '';
      answer_2_3.text = '';
      answer_2_4.text = '';
      answer_2_5.text = '';
      answer_2_6.text = '';
      answer_2_7.text = '';
      answer_3_1.text = '';
      answer_3_2.text = '';
      answer_3_3.text = '';
      answer_3_4.text = '';
      answer_3_5.text = '';
      answer_3_6.text = '';
      answer_4= '';
      answer_5.text = '';
      answer_6.text = '';
      setState(() {
      });
  }

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsParagraphInputFieldFormatter> answer_sheet_02 = [
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_1(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_1,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_2(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_2,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_3(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_3,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_4(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_4,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_5(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_5,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_6(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_6,colorTheme: colorTheme,hint: '',width: 70 )),
      clsParagraphInputFieldFormatter(content: VisionQuestionnaire01.answer_sheet_02_7(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_7,colorTheme: colorTheme,hint: '',width: 70 )),
    ];

    List<clsRichTextFormatter> question_03 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_1 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_2 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_3 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_4 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_5 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03_6 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_3_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_04 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_04(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    void onRadioChanged(String value){
      print('nia na->'+ value);
      setState(() {
        answer_4 = value;
      });

    }
    List<clsRadioField> answer_04_1 = [
      clsRadioField(value: '6', groupValue: answer_4.toString(), onChanged: onRadioChanged, fontSize: fontSize, width: 150, colorTheme: colorTheme),
      clsRadioField(value: '10', groupValue: answer_4.toString(), onChanged: onRadioChanged, fontSize: fontSize, width: 150, colorTheme: colorTheme),
      clsRadioField(value: '12', groupValue: answer_4.toString(), onChanged: onRadioChanged, fontSize: fontSize, width: 150, colorTheme: colorTheme),
    ];
    List<clsRichTextFormatter> question_05 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_05(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:VisionQuestionnaire01.question_06(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text( clsLanguagePreset.app_bar_label_vision_questionnaire(language) + ' 1'),
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
                      getHeadings( clsLanguagePreset.headings_activity_questionnaire(language) + ' 1'),
                      ParagraphFormatter(richTextData: question_01),
                      MultiInputField(controller: answer_1, hint: clsLanguagePreset.hint_enter_your_answer(language),maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_02),
                      ParagraphInputField(richTextData: answer_sheet_02),
                      ParagraphFormatter(richTextData: question_03),
                      ParagraphFormatter(richTextData: question_03_1),
                      MultiInputField(controller: answer_3_1, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03_2),
                      MultiInputField(controller: answer_3_2, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03_3),
                      MultiInputField(controller: answer_3_3, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03_4),
                      MultiInputField(controller: answer_3_4, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03_5),
                      MultiInputField(controller: answer_3_5, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03_6),
                      MultiInputField(controller: answer_3_6, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04),
                      RadioListTileField(data: answer_04_1,colorThemes: colorTheme,),
                      ParagraphFormatter(richTextData: question_05),
                      MultiInputField(controller: answer_5, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      MultiInputField(controller: answer_6, hint: clsLanguagePreset.hint_enter_your_answer(language), maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
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
