import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiLabelInputField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../../controlBox/ParagraphInputField.dart';
import '../../../controlBox/classes/clsInputField.dart';
import '../../../controlBox/classes/clsParagraphInputFieldFormatter.dart';
import '../../ParagraphFormatter.dart';

class Vision09Questionnaire extends StatefulWidget {
  const Vision09Questionnaire({super.key});

  @override
  State<Vision09Questionnaire> createState() => _Vision09QuestionnaireState();
}

class _Vision09QuestionnaireState extends State<Vision09Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final  answer_1= TextEditingController();
  final  answer_2_1 = TextEditingController();
  final  answer_2_2 = TextEditingController();
  final  answer_2_3 = TextEditingController();
  final  answer_2_4 = TextEditingController();
  final  answer_2_5 = TextEditingController();
  final  answer_3_1 = TextEditingController();
  final  answer_3_2 = TextEditingController();
  final  answer_3_3 = TextEditingController();
  final  answer_3_4 = TextEditingController();
  final  answer_3_5 = TextEditingController();
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_4_4 = TextEditingController();
  final  answer_4_5 = TextEditingController();
  final  answer_4_6 = TextEditingController();
  final  answer_4_7 = TextEditingController();
  final  answer_4_8 = TextEditingController();
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_5_4=TextEditingController();
  final  answer_5_5=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(19);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    List<String> colAns1;
    answer_1.text = lessonData!.answer_1;
    colAns1 = lessonData!.answer_2.split("~");
    if (colAns1.length > 1) {
      answer_2_1.text = colAns1[0];
      answer_2_2.text = colAns1[1];
      answer_2_3.text = colAns1[2];
      answer_2_4.text = colAns1[3];
      answer_2_5.text = colAns1[4];
    }
    colAns1 = lessonData!.answer_3.split("~");
    if (colAns1.length > 1) {
      answer_3_1.text = colAns1[0];
      answer_3_2.text = colAns1[1];
      answer_3_3.text = colAns1[2];
      answer_3_4.text = colAns1[3];
      answer_3_5.text = colAns1[4];
    }
    colAns1 = lessonData!.answer_4.split("~");
    if (colAns1.length > 1) {
      answer_4_1.text = colAns1[0];
      answer_4_2.text = colAns1[1];
      answer_4_3.text = colAns1[2];
      answer_4_4.text = colAns1[3];
      answer_4_5.text = colAns1[4];
      answer_4_6.text = colAns1[5];
      answer_4_7.text = colAns1[6];
      answer_4_8.text = colAns1[7];
    }
    colAns1 = lessonData!.answer_5.split("~");
    if (colAns1.length > 1) {
      answer_5_1.text = colAns1[0];
      answer_5_2.text = colAns1[1];
      answer_5_3.text = colAns1[2];
      answer_5_4.text = colAns1[3];
      answer_5_5.text = colAns1[4];
    }
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1.text;
    String ans2 = answer_2_1.text + "~" + answer_2_2.text + "~" + answer_2_3.text + "~" + answer_2_4.text + "~" + answer_2_5.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" + answer_3_3.text + "~" + answer_3_4.text + "~" + answer_3_5.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text + "~" + answer_4_4.text + "~" + answer_4_5.text + "~" + answer_4_6.text + "~" + answer_4_7.text + "~" + answer_4_8.text;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text + "~" + answer_5_5.text;
    String ans6 = '';
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1.text.trim()!='')
      completionCounter+=1;
    if(answer_2_1.text.trim()!='' && answer_2_2.text.trim()!='' && answer_2_3.text.trim()!='' && answer_2_4.text.trim()!='' && answer_2_5.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' && answer_3_3.text.trim()!='' && answer_3_4.text.trim()!='' && answer_3_5.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' && answer_4_3.text.trim()!='' && answer_4_4.text.trim()!='' && answer_4_5.text.trim()!='' && answer_4_6.text.trim()!='' && answer_4_7.text.trim()!='' && answer_4_8.text.trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' && answer_5_3.text.trim()!='' && answer_5_4.text.trim()!='' && answer_5_5.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/5) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 19,
        lessonNo: 9,
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
    answer_2_1.text='';
    answer_2_2.text='';
    answer_2_3.text='';
    answer_2_4.text='';
    answer_2_5.text='';
    answer_3_1.text = '';
    answer_3_2.text = '';
    answer_3_3.text = '';
    answer_3_4.text = '';
    answer_3_5.text = '';
    answer_4_1.text='';
    answer_4_2.text='';
    answer_4_3.text='';
    answer_4_4.text='';
    answer_4_5.text='';
    answer_4_6.text='';
    answer_4_7.text='';
    answer_4_8.text='';
    answer_5_1.text='';
    answer_5_2.text='';
    answer_5_3.text='';
    answer_5_4.text='';
    answer_5_5.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. What is consolidation?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_02= [
      clsRichTextFormatter(content:'2. What do we learn about consolidation from the following verses?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. Fill in the gaps and memorize the verse:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_03 = [
    clsParagraphInputFieldFormatter(content: '"Even though you ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
     mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_3_1,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'ten thousand guardians in ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_2,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ', you do not have ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_3,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'fathers, for in ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_4,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'I became your ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_5,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'through the gospel " (1 Corinthians 4:15)', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];

    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. Explain the principles of consolidation in your own words:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. How can you begin to consolidate?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text('Vision: Questionnaire 9'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 9'),
                      ParagraphFormatter(richTextData: question_01),
                      MultiInputField(controller: answer_1, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_02),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('Colossians 1:28-29',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_2_1, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('Acts 26:16-18',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_2_2, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('Acts 29:19',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_2_3, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('Acts 17:30',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_2_4, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),child: Text('1 Corinthians 4:15',style: TextStyle(fontSize: fontSize),),),
                      MultiInputField(controller: answer_2_5, hint: 'Enter your answer', maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      ParagraphInputField(richTextData: answer_sheet_03),
                      ParagraphFormatter(richTextData: question_04),
                      MultiLabelInputField(controller: answer_4_1, label: 'Verify their\ndecision', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_2, label: 'Devote ourselves\nto the\napostle\' teaching', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_3, label: 'Spiritual milk', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_4, label: 'The Bread\nof the Word', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_5, label: 'Solid Food', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_6, label: 'Communion with\neach other', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_7, label: 'Share in the\nbreaking of\nbreak', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_4_8, label: 'Persevere in\nprayer', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      MultiLabelInputField(controller: answer_5_1, label: 'a.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_2, label: 'b.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_3, label: 'c.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_4, label: 'd.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_5, label: 'e.', hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
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
