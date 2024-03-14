import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/DropDownLabelReverseField.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiLabelInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/SingleLabelInputField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../../controlBox/ParagraphInputField.dart';
import '../../../controlBox/classes/clsInputField.dart';
import '../../../controlBox/classes/clsParagraphInputFieldFormatter.dart';
import '../../ParagraphFormatter.dart';

class Vision08Questionnaire extends StatefulWidget {
  const Vision08Questionnaire({super.key});

  @override
  State<Vision08Questionnaire> createState() => _Vision08QuestionnaireState();
}

class _Vision08QuestionnaireState extends State<Vision08Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final  answer_1= TextEditingController();
  final  answer_2 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_3_3 = TextEditingController();
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_6_1=TextEditingController();
  final  answer_6_2=TextEditingController();
  final  answer_6_3=TextEditingController();
  final  answer_6_4=TextEditingController();
  final  answer_6_5=TextEditingController();
  final  answer_6_6=TextEditingController();
  final  answer_6_7=TextEditingController();
  final  answer_7 = TextEditingController();
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
    });
  }

  void loadData() async {
    lessonData = await sqlHelper.getLessonByID(18);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;

    List<String> colAns1;
    answer_1.text = lessonData!.answer_1;
    answer_2.text = lessonData!.answer_2;
    colAns1 = lessonData!.answer_3.split("~");
    if (colAns1.length > 1) {
      answer_3_1.text = colAns1[0];
      answer_3_2.text = colAns1[1];
      answer_3_3.text = colAns1[2];
    }
    colAns1 = lessonData!.answer_4.split("~");
    if (colAns1.length > 1) {
      answer_4_1.text = colAns1[0];
      answer_4_2.text = colAns1[1];
      answer_4_3.text = colAns1[2];
    }
    colAns1 = lessonData!.answer_5.split("~");
    if (colAns1.length > 1) {
      answer_5_1.text = colAns1[0];
      answer_5_2.text = colAns1[1];
      answer_5_3.text = colAns1[2];
    }
    colAns1 = lessonData!.answer_6.split("~");
    if (colAns1.length > 1) {
      answer_6_1.text = colAns1[0];
      answer_6_2.text = colAns1[1];
      answer_6_3.text = colAns1[2];
      answer_6_4.text = colAns1[3];
      answer_6_5.text = colAns1[4];
      answer_6_6.text = colAns1[5];
    }
    answer_7.text = lessonData!.answer_7;
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" + answer_3_3.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text;
    String ans6 = answer_6_1.text + "~" + answer_6_2.text + "~" + answer_6_3.text + "~" + answer_6_4.text + "~" + answer_6_5.text + "~" + answer_6_6.text;
    String ans7 = answer_7.text;
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' && answer_3_3.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' && answer_4_3.text.trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' && answer_5_3.text.trim()!='')
      completionCounter+=1;
    if(answer_6_1.text.trim()!='' && answer_6_2.text.trim()!='' && answer_6_3.text.trim()!='' && answer_6_4.text.trim()!='' && answer_6_5.text.trim()!='' && answer_6_6.text.trim()!='')
      completionCounter+=1;
    if(answer_7.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/7) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 18,
        lessonNo: 8,
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
    answer_1.text='';
    answer_2.text='';
    answer_3_1.text='';
    answer_3_2.text='';
    answer_3_3.text='';
    answer_4_1.text='';
    answer_4_2.text='';
    answer_4_3.text='';
    answer_5_1.text='';
    answer_5_2.text='';
    answer_5_3.text='';
    answer_6_1.text='';
    answer_6_2.text='';
    answer_6_3.text='';
    answer_6_4.text='';
    answer_6_5.text='';
    answer_6_6.text='';
    answer_6_7.text='';
    answer_7.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Define the word "cell" (in a church context):',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02= [
      clsRichTextFormatter(content:'2. Briefly write about your experience in a cell group:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. List three characteristics of David as a leader:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. Explain the following concepts in reference to cell groups:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. List the purposes of the cell:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:'6. To have the ideal cell:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_06 = [
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'input', inputField: clsInputField(controller:answer_6_1,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'the message so that every', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'input', inputField: clsInputField(controller:answer_6_2,colorTheme: colorTheme,hint: '',width: 200 )),
      clsParagraphInputFieldFormatter(content: 'group, be it men, women, youth or children, receives the message.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '\n\n The', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_6_3,colorTheme: colorTheme,hint: '',width: 200 )),
      clsParagraphInputFieldFormatter(content: 'and the ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_6_4,colorTheme: colorTheme,hint: '',width: 200 )),
      clsParagraphInputFieldFormatter(content: ' should be committed to the Vision.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '\n\nThis will allow goals to be met, individual ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_6_5,colorTheme: colorTheme,hint: '',width: 200 )),
      clsParagraphInputFieldFormatter(content: 'to be assumed, teamwork to be ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_6_6,colorTheme: colorTheme,hint: '',width: 200 )),
      clsParagraphInputFieldFormatter(content: ', and strategies to be sought out.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];
    List<clsRichTextFormatter> question_07 = [
      clsRichTextFormatter(content:'7. Explain the prayer of three:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text('Vision: Questionnaire 8'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 8'),
                      ParagraphFormatter(richTextData: question_01),
                      MultiInputField(controller: answer_1, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      SingleLabelInputField(controller: answer_3_1, label: 'a.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_3_2, label: 'b.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_3_3, label: 'c.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04),
                      MultiLabelInputField(controller: answer_4_1, label: 'They make personal\npastoring possible', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_2, label: 'They are the\nbackbone of the\nchurch', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_3, label: 'They are the source\nor beginning of the\nteam of 12', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      MultiLabelInputField(controller: answer_5_1, label: 'a.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_2, label: 'b.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_3, label: 'c.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme,fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      ParagraphInputField(richTextData: answer_sheet_06),
                      ParagraphFormatter(richTextData: question_07),
                      MultiInputField(controller: answer_7, hint: 'Enter your answer', maxLines: 8, colorTheme: colorTheme, fontSize: fontSize),

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
