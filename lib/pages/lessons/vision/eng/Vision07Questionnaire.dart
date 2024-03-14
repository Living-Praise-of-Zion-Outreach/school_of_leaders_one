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

class Vision07Questionnaire extends StatefulWidget {
  const Vision07Questionnaire({super.key});

  @override
  State<Vision07Questionnaire> createState() => _Vision07QuestionnaireState();
}

class _Vision07QuestionnaireState extends State<Vision07Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final   answer_1_1= TextEditingController();
  final   answer_1_2= TextEditingController();
  final   answer_1_3= TextEditingController();
  final   answer_1_4= TextEditingController();
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
  final  answer_4 = TextEditingController();
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_5_4=TextEditingController();
  final  answer_5_5=TextEditingController();
  late String  answer_6_1='';
  late String  answer_6_2='';
  late String  answer_6_3='';
  late String  answer_6_4='';
  late String  answer_6_5='';
  late String  answer_6_6='';
  late String  answer_6_7='';
  final  answer_7_1=TextEditingController();
  final  answer_7_2=TextEditingController();
  final  answer_7_3=TextEditingController();
  final  answer_7_4=TextEditingController();
  final  answer_7_5=TextEditingController();
  final  answer_7_6=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(17);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;

    List<String> colAns1;
    colAns1 = lessonData!.answer_1.split("~");
    if (colAns1.length > 1) {
      answer_1_1.text = colAns1[0];
      answer_1_2.text = colAns1[1];
      answer_1_3.text = colAns1[2];
      answer_1_4.text = colAns1[3];
    }
    colAns1 = lessonData!.answer_2.split("~");
    if (colAns1.length > 1) {
      answer_2_1.text = colAns1[0];
      answer_2_2.text = colAns1[1];
      answer_2_3.text = colAns1[2];
      answer_2_4.text = colAns1[3];
      answer_2_5.text = colAns1[4];
      answer_2_6.text = colAns1[5];
      answer_2_7.text = colAns1[6];
    }
    colAns1 = lessonData!.answer_3.split("~");
    if (colAns1.length > 1) {
      answer_3_1.text = colAns1[0];
      answer_3_2.text = colAns1[1];
      answer_3_3.text = colAns1[2];
      answer_3_4.text = colAns1[3];
    }
    answer_4.text = lessonData!.answer_4;

    colAns1 = lessonData!.answer_5.split("~");
    if (colAns1.length > 1) {
      answer_5_1.text = colAns1[0];
      answer_5_2.text = colAns1[1];
      answer_5_3.text = colAns1[2];
      answer_5_4.text = colAns1[3];
      answer_5_5.text = colAns1[4];
    }
    colAns1 = lessonData!.answer_6.split("~");
    if (colAns1.length > 1) {
      answer_6_1 = colAns1[0];
      answer_6_2 = colAns1[1];
      answer_6_3 = colAns1[2];
      answer_6_4 = colAns1[3];
      answer_6_5 = colAns1[4];
      answer_6_6 = colAns1[5];
      answer_6_7 = colAns1[6];
    }
    colAns1 = lessonData!.answer_7.split("~");
    if (colAns1.length > 1) {
      answer_7_1.text = colAns1[0];
      answer_7_2.text = colAns1[1];
      answer_7_3.text = colAns1[2];
      answer_7_4.text = colAns1[3];
      answer_7_5.text = colAns1[4];
      answer_7_6.text = colAns1[5];
    }
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1_1.text + "~" + answer_1_2.text + "~" + answer_1_3.text + "~" + answer_1_4.text;
    String ans2 = answer_2_1.text + "~" + answer_2_2.text + "~" + answer_2_3.text + "~" + answer_2_4.text + "~" + answer_2_5.text + "~" + answer_2_6.text + "~" + answer_2_7.text;
    String ans3 = answer_3_1.text + "~" + answer_3_2.text + "~" + answer_3_3.text + "~" + answer_3_4.text;
    String ans4 = answer_4.text;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text + "~" + answer_5_5.text;
    String ans6 = answer_6_1 + "~" + answer_6_2 + "~" + answer_6_3 + "~" + answer_6_4 + "~" + answer_6_5 + "~" + answer_6_6 + "~" + answer_6_7;
    String ans7 = answer_7_1.text + "~" + answer_7_2.text + "~" + answer_7_3.text + "~" + answer_7_4.text + "~" + answer_7_5.text + "~" + answer_7_6.text;
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.text.trim()!='' && answer_1_2.text.trim()!='' && answer_1_3.text.trim()!='' && answer_1_4.text.trim()!='')
      completionCounter+=1;
    if(answer_2_1.text.trim()!='' && answer_2_2.text.trim()!='' && answer_2_3.text.trim()!='' && answer_2_4.text.trim()!='' && answer_2_5.text.trim()!='' && answer_2_6.text.trim()!='' && answer_2_7.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.text.trim()!='' && answer_3_2.text.trim()!='' && answer_3_3.text.trim()!='' && answer_3_4.text.trim()!='')
      completionCounter+=1;
    if(answer_4.text.trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' && answer_5_3.text.trim()!='' && answer_5_4.text.trim()!='' && answer_5_5.text.trim()!='')
      completionCounter+=1;
    if(answer_6_1.toString().trim()!='' || answer_6_2.toString().trim()!='' || answer_6_3.toString().trim()!='' || answer_6_4.toString().trim()!='' || answer_6_5.toString().trim()!='' || answer_6_6.toString().trim()!='' || answer_6_7.toString().trim()!='')
      completionCounter+=1;
    if(answer_7_1.text.trim()!='' && answer_7_2.text.trim()!='' && answer_7_3.text.trim()!='' && answer_7_4.text.trim()!='' && answer_7_5.text.trim()!='' && answer_7_6.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/7) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 17,
        lessonNo: 7,
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

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("-SELECT-"),value: ""),
      DropdownMenuItem(child: Text("X"),value: "X"),
    ];
    return menuItems;
  }

  void clearFields() {
    Navigator.pop(context, false);
    answer_1_1.text='';
    answer_1_2.text='';
    answer_1_3.text='';
    answer_1_4.text='';
    answer_2_1.text='';
    answer_2_2.text='';
    answer_2_3.text='';
    answer_2_4.text='';
    answer_2_5.text='';
    answer_2_6.text='';
    answer_2_7.text='';
    answer_3_1.text = '';
    answer_3_2.text = '';
    answer_3_3.text = '';
    answer_4.text='';
    answer_5_1.text='';
    answer_5_2.text='';
    answer_5_3.text='';
    answer_5_4.text='';
    answer_5_5.text='';
    answer_6_1='';
    answer_6_2='';
    answer_6_3='';
    answer_6_4='';
    answer_6_5='';
    answer_6_6='';
    answer_6_7='';
    answer_7_1.text='';
    answer_7_2.text='';
    answer_7_3.text='';
    answer_7_4.text='';
    answer_7_5.text='';
    answer_7_6.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Fill in the gaps:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_01 = [
      clsParagraphInputFieldFormatter(content: 'Jesus\' heart beat for the ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_1,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'of souls. \n\nEverything He did was for the  ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_2,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: ' of souls.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),

      clsParagraphInputFieldFormatter(content: '\n \nHis evangelistic work ended with His ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),

      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_3,colorTheme: colorTheme,hint: '',width: 150 )),

      clsParagraphInputFieldFormatter(content: ' and ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_4,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: '.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];

    List<clsRichTextFormatter> question_02= [
      clsRichTextFormatter(content:'2. According to Luke 6:11-12, how did Jesus choose His 12?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. Choose the letter of the correct answer:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_03 = [
    clsParagraphInputFieldFormatter(content: '"If I preach ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_3_1,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: ', I have a ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_2,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'if not ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_3,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: ', I am simply discharging the trust ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_3_4,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: ' to me " (1 Corinthians 9:17)', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];

    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. What characteristics does a servant-hearted person possess?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. Explain the advice for winning:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:'6. Put an X next to the characteristics that are evident in a soul winner:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    void onSelectedItemChanged(String type,String value){
      print('nia na->'+ type);
      setState(() {
        switch(type){
          case 'answer_6_1':
            answer_6_1 = value;
            break;
          case 'answer_6_2':
            answer_6_2 = value;
            break;
          case 'answer_6_3':
            answer_6_3 = value;
            break;
          case 'answer_6_4':
            answer_6_4 = value;
            break;
          case 'answer_6_5':
            answer_6_5 = value;
            break;
          case 'answer_6_6':
            answer_6_6 = value;
            break;
          case 'answer_6_7':
            answer_6_7 = value;
            break;
        }
      });
    }
    List<clsRichTextFormatter> question_07 = [
      clsRichTextFormatter(content:'7. Fill in the gaps:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_07 = [
    clsParagraphInputFieldFormatter(content: '- A person has been won when:', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_7_1,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: '\n\n- They are ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_7_2,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'of sin.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '\n\n- They have ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_7_3,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'of Christ.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '\n\n- They experience genuine  ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_7_4,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: '\n\n- They show a', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_7_5,colorTheme: colorTheme,hint: '',width: 150 )),
      clsParagraphInputFieldFormatter(content: 'in lifestyle.', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '\n\n- They live a life of ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_7_6,colorTheme: colorTheme,hint: '',width: 150 )),
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
        title: Text('Vision: Questionnaire 7'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 7'),
                      ParagraphFormatter(richTextData: question_01),
                      ParagraphInputField(richTextData: answer_sheet_01),
                      ParagraphFormatter(richTextData: question_02),
                      SingleLabelInputField(controller: answer_2_1, label: 'a.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_2, label: 'b.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_3, label: 'c.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_4, label: 'd.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_5, label: 'e.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_6, label: 'f.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_2_7, label: 'g.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      ParagraphInputField(richTextData: answer_sheet_03),
                      ParagraphFormatter(richTextData: question_04),
                      MultiInputField(controller: answer_4, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      MultiLabelInputField(controller: answer_5_1, label: 'Excellence \nin the cells', hint: 'Enter your answer', maxLines: 2, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_2, label: 'Winning, a \nlifestyle', hint: 'Enter your answer', maxLines: 2, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_3, label: 'Homogenous\ncells', hint: 'Enter your answer', maxLines: 2, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_4, label: 'Weekly\ngoals', hint: 'Enter your answer', maxLines: 2, colorTheme: colorTheme,fontSize: fontSize),
                      MultiLabelInputField(controller: answer_5_5, label: 'Carry out the\nprocess of\nthe ladder of\nsuccess', hint: 'Enter your answer', maxLines: 2, colorTheme: colorTheme,fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tHoliness', value: answer_6_1, type: 'answer_6_1', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tWork', value: answer_6_2, type: 'answer_6_2', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tSpirituality', value: answer_6_3, type: 'answer_6_3', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tHumility', value: answer_6_4, type: 'answer_6_4', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tEffort', value: answer_6_5, type: 'answer_6_5', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tFaith', value: answer_6_6, type: 'answer_6_6', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tDependence on Christ', value: answer_6_7, type: 'answer_6_7', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      ParagraphFormatter(richTextData: question_07),
                      ParagraphInputField(richTextData: answer_sheet_07),


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
