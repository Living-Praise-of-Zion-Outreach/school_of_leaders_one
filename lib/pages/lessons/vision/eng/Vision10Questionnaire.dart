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
import '../../ParagraphFormatter.dart';

class Vision10Questionnaire extends StatefulWidget {
  const Vision10Questionnaire({super.key});

  @override
  State<Vision10Questionnaire> createState() => _Vision10QuestionnaireState();
}

class _Vision10QuestionnaireState extends State<Vision10Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final  answer_1 = TextEditingController();
  final  answer_2 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_3_3 = TextEditingController();
  final  answer_3_4 = TextEditingController();
  final  answer_3_5 = TextEditingController();
  final  answer_3_6 = TextEditingController();
  final  answer_3_7 = TextEditingController();
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_5_4=TextEditingController();
  final  answer_5_5=TextEditingController();
  final  answer_5_6=TextEditingController();
  final  answer_5_7=TextEditingController();
  final  answer_5_8=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(20);
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
      answer_3_4.text = colAns1[3];
      answer_3_5.text = colAns1[4];
      answer_3_6.text = colAns1[5];
      answer_3_7.text = colAns1[6];
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
      answer_5_4.text = colAns1[3];
      answer_5_5.text = colAns1[4];
      answer_5_6.text = colAns1[5];
      answer_5_7.text = colAns1[6];
      answer_5_8.text = colAns1[7];
    }
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" + answer_3_3.text + "~" + answer_3_4.text + "~" + answer_3_5.text + "~" + answer_3_6.text + "~" + answer_3_7.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text + "~" + answer_5_5.text + "~" + answer_5_6.text + "~" + answer_5_7.text + "~" + answer_5_8.text;
    String ans6 = '';
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' && answer_3_3.text.trim()!='' && answer_3_4.text.trim()!='' && answer_3_5.text.trim()!='' && answer_3_6.text.trim()!='' && answer_3_7.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' && answer_4_3.text.trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' && answer_5_3.text.trim()!='' && answer_5_4.text.trim()!='' && answer_5_5.text.trim()!='' && answer_5_6.text.trim()!='' && answer_5_7.text.trim()!='' && answer_5_8.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/5) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 20,
        lessonNo: 10,
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
    answer_3_1.text = '';
    answer_3_2.text = '';
    answer_3_3.text = '';
    answer_3_4.text = '';
    answer_3_5.text = '';
    answer_3_6.text = '';
    answer_3_7.text = '';
    answer_4_1.text='';
    answer_4_2.text='';
    answer_4_3.text='';
    answer_5_1.text='';
    answer_5_2.text='';
    answer_5_3.text='';
    answer_5_4.text='';
    answer_5_5.text='';
    answer_5_6.text='';
    answer_5_7.text='';
    answer_5_8.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. What does the seal on the forehead represent?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02= [
      clsRichTextFormatter(content:'2. According to Isaiah 55:10-11, explain what a goal is:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. Fill in the gaps:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_03 = [
    clsParagraphInputFieldFormatter(content: '"I waited ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'input', inputField: clsInputField(controller:answer_3_1,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'for the Lord; he', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_2,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'to me and heard my cry. He ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_3,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: '. me out of the slimy pit, out of the mud and ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_4,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: '; he set my feet on a rock and gave me a ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_5,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'place to stand. He put a new song in my ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_6,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ', a hymn of ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_7,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'to our God" (Psalm 40:1-3).', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];
    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. Complete the sentences:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. Relate each phase to the corresponding step in the ladder of success:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text('Vision: Questionnaire 10'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 10'),
                      ParagraphFormatter(richTextData: question_01),
                      MultiInputField(controller: answer_1, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      ParagraphInputField(richTextData: answer_sheet_03),
                      ParagraphFormatter(richTextData: question_04),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('Goals are',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_4_1, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('The best way to take advantage of our time is',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_4_2, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('To be able to conquer, I need to',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_4_3, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Expanded(flex:1, child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Water the Eartha',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_1, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                               ]
                           )),
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Win',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_2, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Make the earth bud',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_3, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Consolidate',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_4, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Flourish',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_5, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Disciple',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_6, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Yield seed for the sower',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_7, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                            Expanded(flex:1, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding:EdgeInsets.all(10.0) ,child: Text('Send',style: TextStyle(fontSize: fontSize),)),
                                  MultiInputField(controller: answer_5_8, hint: 'Enter your answer', maxLines: 7, colorTheme: colorTheme, fontSize: fontSize),
                                ]
                            )),
                          ],
                        ),
                      ),
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
