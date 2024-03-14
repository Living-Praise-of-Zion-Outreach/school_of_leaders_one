import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/pages/controlBox/DropDownLabelReverseField.dart';
import 'package:school_of_leaders_one/pages/controlBox/MultiInputField.dart';
import 'package:school_of_leaders_one/pages/controlBox/SingleLabelInputField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../classes/clsRichTextFormatter.dart';
import '../../../../classes/sql/sqlHelper.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../../controlBox/ParagraphInputField.dart';
import '../../../controlBox/classes/clsInputField.dart';
import '../../../controlBox/classes/clsParagraphInputFieldFormatter.dart';
import '../../ParagraphFormatter.dart';

class Vision03Questionnaire extends StatefulWidget {
  const Vision03Questionnaire({super.key});

  @override
  State<Vision03Questionnaire> createState() => _Vision03QuestionnaireState();
}

class _Vision03QuestionnaireState extends State<Vision03Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  final  answer_1_1 = TextEditingController();
  final  answer_1_2 = TextEditingController();
  final  answer_1_3 = TextEditingController();
  final  answer_1_4 = TextEditingController();
  final  answer_1_5 = TextEditingController();
  final  answer_1_6 = TextEditingController();
  final  answer_1_7 = TextEditingController();
  final  answer_1_8 = TextEditingController();
  final  answer_1_9 = TextEditingController();
  final  answer_1_10 = TextEditingController();
  final  answer_1_11 = TextEditingController();
  final  answer_1_12 = TextEditingController();
  final  answer_1_13 = TextEditingController();
  final  answer_1_14 = TextEditingController();
  final  answer_2 = TextEditingController();
  late String  answer_3_1 = '';
  late String  answer_3_2 = '';
  late String  answer_3_3 = '';
  late String  answer_4_1 = '';
  late String  answer_4_2 = '';
  late String  answer_4_3 = '';
  late String  answer_4_4 = '';
  late String  answer_4_5 = '';
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_5_4=TextEditingController();
  final  answer_5_5=TextEditingController();
  final  answer_6_1=TextEditingController();
  final  answer_6_2=TextEditingController();
  final  answer_6_3=TextEditingController();
  final  answer_6_4=TextEditingController();
  final  answer_6_5=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(13);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    List<String> colAns1;
    colAns1 = lessonData!.answer_1.split("~");
    if (colAns1.length > 1) {
      answer_1_1.text = colAns1[0];
      answer_1_2.text = colAns1[1];
      answer_1_3.text = colAns1[2];
      answer_1_4.text = colAns1[3];
      answer_1_5.text = colAns1[4];
      answer_1_6.text = colAns1[5];
      answer_1_7.text = colAns1[6];
      answer_1_8.text = colAns1[7];
      answer_1_9.text = colAns1[8];
      answer_1_10.text = colAns1[9];
      answer_1_11.text = colAns1[10];
      answer_1_12.text = colAns1[11];
      answer_1_13.text = colAns1[12];
      answer_1_14.text = colAns1[13];
    }
    answer_2.text = lessonData!.answer_2;
    colAns1 = lessonData!.answer_3.split("~");
    if (colAns1.length > 1) {
      answer_3_1 = colAns1[0];
      answer_3_2 = colAns1[1];
      answer_3_3 = colAns1[2];
    }
    colAns1 = lessonData!.answer_4.split("~");
    if (colAns1.length > 1) {
      answer_4_1 = colAns1[0];
      answer_4_2 = colAns1[1];
      answer_4_3 = colAns1[2];
      answer_4_4 = colAns1[3];
      answer_4_5 = colAns1[4];
    }
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
      answer_6_1.text = colAns1[0];
      answer_6_2.text = colAns1[1];
      answer_6_3.text = colAns1[2];
      answer_6_4.text = colAns1[3];
      answer_6_5.text = colAns1[4];
    }
  }

  void updateAnswers() async{
    String ans1 = answer_1_1.text + "~" + answer_1_2.text + "~" + answer_1_3.text + "~" + answer_1_4.text + "~" + answer_1_5.text + "~" + answer_1_6.text + "~" + answer_1_7.text + "~" + answer_1_8.text + "~" + answer_1_9.text + "~" + answer_1_10.text + "~" + answer_1_11.text + "~" + answer_1_12.text + "~" + answer_1_13.text + "~" + answer_1_14.text;
    String ans2 = answer_2.text;
    String ans3 = answer_3_1 + "~" + answer_3_2 + "~" + answer_3_3;
    String ans4 = answer_4_1 + "~" + answer_4_2 + "~" + answer_4_3 + "~" + answer_4_4 + "~" +answer_4_5;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text + "~" + answer_5_5.text;
    String ans6 = answer_6_1.text + "~" + answer_6_2.text + "~" + answer_6_3.text + "~" + answer_6_4.text + "~" + answer_6_5.text;;
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.text.trim()!='' && answer_1_2.text.trim()!='' &&  answer_1_3.text.trim()!='' &&  answer_1_4.text.trim()!='' &&  answer_1_5.text.trim()!='' && answer_1_6.text.trim()!='' && answer_1_7.text.trim()!='' &&  answer_1_8.text.trim()!='' &&  answer_1_9.text.trim()!='' &&  answer_1_10.text.trim()!='' && answer_1_11.text.trim()!='' && answer_1_12.text.trim()!='' &&  answer_1_13.text.trim()!='' &&  answer_1_14.text.trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3_1.toString().trim()!='' && answer_3_2.toString().trim()!='' &&  answer_3_3.toString().trim()!='')
      completionCounter+=1;
    if(answer_4_1.toString().trim()!='' && answer_4_2.toString().trim()!='' &&  answer_4_3.toString().trim()!='' &&  answer_4_4.toString().trim()!='' &&  answer_4_5.toString().trim()!='')
      completionCounter+=1;
    if(answer_5_1.text.trim()!='' && answer_5_2.text.trim()!='' &&  answer_5_3.text.trim()!='' &&  answer_5_4.text.trim()!='' &&  answer_5_5.text.trim()!='')
      completionCounter+=1;
    if(answer_6_1.text.trim()!='' && answer_6_2.text.trim()!='' &&  answer_6_3.text.trim()!='' &&  answer_6_4.text.trim()!='' &&  answer_6_5.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/6) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 13,
        lessonNo: 3,
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

  List<DropdownMenuItem<String>> get dropdownItemsTF{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("-SELECT-",textAlign: TextAlign.center),value: ""),
      DropdownMenuItem(child: Text("T",textAlign: TextAlign.center),value: "T"),
      DropdownMenuItem(child: Text("F",textAlign: TextAlign.center),value: "F"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("-SELECT-"),value: ""),
      DropdownMenuItem(child: Text("V. 38"),value: "V. 38"),
      DropdownMenuItem(child: Text("V. 39"),value: "V. 39"),
      DropdownMenuItem(child: Text("V. 40"),value: "V. 40"),
      DropdownMenuItem(child: Text("V. 42"),value: "V. 42"),
      DropdownMenuItem(child: Text("V. 43"),value: "V. 43")
    ];
    return menuItems;
  }

  void clearFields() {
    Navigator.pop(context, false);
      answer_1_1.text='';
      answer_1_2.text='';
      answer_1_3.text='';
      answer_1_4.text='';
      answer_1_5.text='';
      answer_1_6.text='';
      answer_1_7.text='';
      answer_1_8.text='';
      answer_1_9.text='';
      answer_1_10.text='';
      answer_1_11.text='';
      answer_1_12.text='';
      answer_1_13.text='';
      answer_1_14.text='';
      answer_2.text='';
      answer_3_1 = '';
      answer_3_2 = '';
      answer_3_3 = '';
      answer_4_1 = '';
      answer_4_2 = '';
      answer_4_3 = '';
      answer_4_4 = '';
      answer_4_5 = '';
      answer_5_1.text='';
      answer_5_2.text='';
      answer_5_3.text='';
      answer_5_4.text='';
      answer_5_5.text='';
      answer_6_1.text='';
      answer_6_2.text='';
      answer_6_3.text='';
      answer_6_4.text='';
      answer_6_5.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Complete the following Bible passage: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_01 = [
      clsParagraphInputFieldFormatter(content: '"Who do people say the "', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_1,colorTheme: colorTheme,hint: '',width: 120 )),
      clsParagraphInputFieldFormatter(content: 'is?" They replied, "Some say John the Baptist; others say,?"', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_2,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: '; and still others Jeremiah or ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_3,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'of the prophets." "But what about you?" he asked. "Who do you say I am?" ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_4,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'Peter answered, "You are the ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_5,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ', the Son of the living ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_6,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'replied, "Blessed are you, Simon son of Jonah, for this was not ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_7,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ': to you by man, but my Father in ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_8,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: '. And I tell you that you are ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_9,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'and on this rock I will ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_10,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ', and on this rock I will ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_11,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: '. I will give you the ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_12,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'of the kingdom of heaven; whatever you bind on earth will be bound in heave, and whatever you ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_13,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'on earth will be ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_1_14,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'in heaven." (Mathew 16:13-19).', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];

    List<clsRichTextFormatter> question_02 = [
      clsRichTextFormatter(content:'2. What plans did Jesus unveil for the foundation of His Church?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03 = [
      clsRichTextFormatter(content:'3. Mark true (T) or false (F): ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04 = [
      clsRichTextFormatter(content:'4. Match an answer between the following statements and their corresponding verses from Acts 10:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_05 = [
      clsRichTextFormatter(content:'5. List the teachings that Jesus gave to His disciples in Luke 14:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:'6. List at least 5 ways that love for the sheep is shown:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    void onSelectedItemChangedTF(String type,String value){
      print('nia na->'+ type);
      setState(() {
        switch(type){
          case 'answer_3_1':
            answer_3_1 = value;
            break;
          case 'answer_3_2':
            answer_3_2 = value;
            break;
          case 'answer_3_3':
            answer_3_3 = value;
            break;
        }
      });
    }
    void onSelectedItemChanged(String type,String value){
      print('nia na->'+ type);
      setState(() {
        switch(type){
          case 'answer_4_1':
            answer_4_1 = value;
            break;
          case 'answer_4_2':
            answer_4_2 = value;
            break;
          case 'answer_4_3':
            answer_4_3 = value;
            break;
          case 'answer_4_4':
            answer_4_4 = value;
            break;
          case 'answer_4_5':
            answer_4_5 = value;
            break;
        }
      });
    }

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
        title: Text('Vision: Questionnaire 3'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 3'),
                      ParagraphFormatter(richTextData: question_01),
                      ParagraphInputField(richTextData: answer_sheet_01),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: 'The Lord\'s Church is built on a firm foundation; Jesus Christ is the cornerstone or the base upon which the weight of this spiritual building rests.', value: answer_3_1, type: 'answer_3_1', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: 'Twelve columns - Jesus\' twelve apostles were established, and later would come the living stones - the believers. ', value: answer_3_2, type: 'answer_3_2', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: 'The Lord Jesus did not leave us the model for how His Church should be. What He establishes needs neither change nor modification because He does everything perfectly. ', value: answer_3_3, type: 'answer_3_3', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      ParagraphFormatter(richTextData: question_04),
                      DropDownLabelReverseField(menuList: dropdownItems, label: 'His ministry on the earth was supernatural.', value: answer_4_1, type: 'answer_4_1', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: 'God entrusted the disciples with the mission of being witnesses of all that Jesus had done.', value: answer_4_2, type: 'answer_4_2', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: 'He died and rose again on the third day.', value: answer_4_3, type: 'answer_4_3', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: 'He sent them to tell the people that Jesus is the judge of the living and the dead.', value: answer_4_4, type: 'answer_4_4', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: 'Whoever believes in Him will receive forgiveness of sins', value: answer_4_5, type: 'answer_4_5', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      ParagraphFormatter(richTextData: question_05),
                      SingleLabelInputField(controller: answer_5_1, label: 'a.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_2, label: 'b.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_3, label: 'c.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_4, label: 'd.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_5, label: 'e.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      SingleLabelInputField(controller: answer_6_1, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_6_2, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_6_3, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_6_4, label: '4.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_6_5, label: '5.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),

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
