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
import '../../../controlBox/ParagraphInputField.dart';
import '../../../controlBox/classes/clsInputField.dart';
import '../../../controlBox/classes/clsParagraphInputFieldFormatter.dart';
import '../../ParagraphFormatter.dart';

class Vision04Questionnaire extends StatefulWidget {
  const Vision04Questionnaire({super.key});

  @override
  State<Vision04Questionnaire> createState() => _Vision04QuestionnaireState();
}

class _Vision04QuestionnaireState extends State<Vision04Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final  answer_1_1 = TextEditingController();
  final  answer_1_2 = TextEditingController();
  final  answer_1_3 = TextEditingController();
  final  answer_2 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_5=TextEditingController();
  final  answer_6=TextEditingController();
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
      colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    setState(() {
    });
  }

  void loadData() async {
    lessonData = await sqlHelper.getLessonByID(14);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    List<String> colAns1;
    colAns1 = lessonData!.answer_1.split("~");
    if (colAns1.length > 1) {
      answer_1_1.text = colAns1[0];
      answer_1_2.text = colAns1[1];
      answer_1_3.text = colAns1[2];
    }
    answer_2.text = lessonData!.answer_2;
    colAns1 = lessonData!.answer_3.split("~");
    if (colAns1.length > 1) {
      answer_3_1.text = colAns1[0];
      answer_3_2.text = colAns1[1];
    }
    colAns1 = lessonData!.answer_4.split("~");
    if (colAns1.length > 1) {
      answer_4_1.text = colAns1[0];
      answer_4_2.text = colAns1[1];
      answer_4_3.text = colAns1[2];
    }
    answer_5.text = lessonData!.answer_5;
    answer_6.text = lessonData!.answer_6;
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1_1.text + "~" + answer_1_2.text + "~" + answer_1_3.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text;
    String ans5 = answer_5.text;
    String ans6 = answer_6.text;
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.text.trim()!='' && answer_1_2.text.trim()!='' &&  answer_1_3.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' &&  answer_4_3.text.trim()!='')
      completionCounter+=1;
    if(answer_5.text.trim()!='')
      completionCounter+=1;
    if(answer_6.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/6) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 14,
        lessonNo: 4,
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
      var snackBar = SnackBar(content: Text('You have successfully updated your answers!'));
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
      answer_1_1.text='';
      answer_1_2.text='';
      answer_1_3.text='';
      answer_2.text='';
      answer_3_1.text='';
      answer_3_2.text='';
      answer_4_1.text='';
      answer_4_2.text='';
      answer_4_3.text='';
      answer_5.text='';
      answer_6.text='';
   setState(() {
   });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Write down the key verse for each instruction: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_01 = [
    clsParagraphInputFieldFormatter(content: 'Visualize the growth of your ministry', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_1,colorTheme: colorTheme,hint: '',width: 120 )),
      clsParagraphInputFieldFormatter(content: '\nPaint the picture of blessing in your mind', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_2,colorTheme: colorTheme,hint: '',width: 120 )),
      clsParagraphInputFieldFormatter(content: '\nDevelop the vision through the team of 12', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_3,colorTheme: colorTheme,hint: '',width: 120 )),
    ];

    List<clsRichTextFormatter> question_02 = [
      clsRichTextFormatter(content:'2. Write out 2 Corinthians 4:18:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03 = [
      clsRichTextFormatter(content:'3. Answer the following questions, taken from Ecclesiastes 1:15 and John 1:19: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_03 = [
    clsParagraphInputFieldFormatter(content: 'What is complete?', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_3_1,colorTheme: colorTheme,hint: '',width: 180 )),
      clsParagraphInputFieldFormatter(content: 'The daytime is made up of ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_2,colorTheme: colorTheme,hint: '',width: 50 )),
      clsParagraphInputFieldFormatter(content: 'hours.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),

    ];
    List<clsRichTextFormatter> question_04 = [
      clsRichTextFormatter(content:'4. Explain simply the steps we should take to become the best cell leader:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04_1 = [
      clsRichTextFormatter(content:'Teach in season and out of season:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04_2 = [
      clsRichTextFormatter(content:'View every member of your cell as a potential leader:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04_3 = [
      clsRichTextFormatter(content:'Engage in spiritual warfare for your cell:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_05 = [
      clsRichTextFormatter(content:'5. Are you already part of a team of 12?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:'If yes, how does being part of a 12 bless your life?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                  title: const Text('Do you want to clear all your answers?',style: TextStyle(fontSize: 16.0),),
                  actions: <Widget>[
                    TextButton(
                        onPressed: ()=>Navigator.pop(context,false),
                        child:  Text('No',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                    TextButton(
                        onPressed: ()=> clearFields(),
                        child:  Text('Yes',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
                  ],
                )
            );

          }, icon: Icon(Icons.delete),tooltip: 'Clear All Fields',)
        ],
        title: Text('Vision: Questionnaire 4'),
        backgroundColor: myThemes.getColor(colorTheme),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: updateAnswers,
          backgroundColor: myThemes.getColor(colorTheme),
          child: Icon(Icons.save),
          tooltip: 'Save Answers'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 4'),
                      ParagraphFormatter(richTextData: question_01),
                      ParagraphInputField(richTextData: answer_sheet_01),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: 'Enter your answer',maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      ParagraphInputField(richTextData: answer_sheet_03),
                      ParagraphFormatter(richTextData: question_04),
                      ParagraphFormatter(richTextData: question_04_1),
                      MultiInputField(controller: answer_4_1, hint: 'Enter your answer',maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04_2),
                      MultiInputField(controller: answer_4_2, hint: 'Enter your answer',maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04_3),
                      MultiInputField(controller: answer_4_3, hint: 'Enter your answer',maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      MultiInputField(controller: answer_5, hint: 'Enter your response YES or NO',maxLines: 1, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      MultiInputField(controller: answer_6, hint: 'Enter your answer',maxLines: 6, colorTheme: colorTheme, fontSize: fontSize),
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
