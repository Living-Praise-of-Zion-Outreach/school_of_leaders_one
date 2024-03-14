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

class Vision05Questionnaire extends StatefulWidget {
  const Vision05Questionnaire({super.key});

  @override
  State<Vision05Questionnaire> createState() => _Vision05QuestionnaireState();
}

class _Vision05QuestionnaireState extends State<Vision05Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  late String  answer_1_1='';
  late String   answer_1_2='';
  late String   answer_1_3='';
  late String   answer_1_4='';
  late String   answer_1_5='';
  late String   answer_1_6='';
  final  answer_2 = TextEditingController();
  late String  answer_3 = '';
  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_4_4 = TextEditingController();
  final  answer_4_5 = TextEditingController();
  final  answer_4_6 = TextEditingController();
  final  answer_5_1=TextEditingController();
  final  answer_5_2=TextEditingController();
  final  answer_5_3=TextEditingController();
  final  answer_5_4=TextEditingController();
  final  answer_5_5=TextEditingController();
  final  answer_5_6=TextEditingController();
  final  answer_5_7=TextEditingController();
  final  answer_5_8=TextEditingController();
  final  answer_5_9=TextEditingController();
  final  answer_5_10=TextEditingController();
  final  answer_5_11=TextEditingController();
  final  answer_5_12=TextEditingController();
  final  answer_6_1=TextEditingController();
  final  answer_6_2=TextEditingController();
  final  answer_6_3=TextEditingController();
  final  answer_6_4=TextEditingController();
  final  answer_6_5=TextEditingController();
  final  answer_6_6=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(15);
    maxAnswers = lessonData!.maxAnswers;
    completionRate = lessonData!.completionRate;
    List<String> colAns1;
    colAns1 = lessonData!.answer_1.split("~");
    if (colAns1.length > 1) {
      answer_1_1 = colAns1[0];
      answer_1_2 = colAns1[1];
      answer_1_3 = colAns1[2];
      answer_1_4 = colAns1[3];
      answer_1_5 = colAns1[4];
      answer_1_6 = colAns1[5];
    }
    answer_2.text = lessonData!.answer_2;
    answer_3 = lessonData!.answer_3;

    colAns1 = lessonData!.answer_4.split("~");
    if (colAns1.length > 1) {
      answer_4_1.text = colAns1[0];
      answer_4_2.text = colAns1[1];
      answer_4_3.text = colAns1[2];
      answer_4_4.text = colAns1[3];
      answer_4_5.text = colAns1[4];
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
      answer_5_9.text = colAns1[8];
      answer_5_10.text = colAns1[9];
      answer_5_11.text = colAns1[10];
      answer_5_12.text = colAns1[11];
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
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1_1+ "~" + answer_1_2 + "~" + answer_1_3 + "~" + answer_1_4 + "~" + answer_1_5 + "~" + answer_1_6;
    String ans2 = answer_2.text;
    String ans3 = answer_3;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text + "~" + answer_4_4.text + "~" + answer_4_5.text + "~" + answer_4_6.text ;
    String ans5 = answer_5_1.text + "~" + answer_5_2.text + "~" + answer_5_3.text + "~" + answer_5_4.text + "~" + answer_5_5.text + "~" + answer_5_6.text + "~" + answer_5_7.text + "~" + answer_5_8.text + "~" + answer_5_9.text + "~" + answer_5_10.text + "~" + answer_5_11.text + "~" + answer_5_12.text;
    String ans6 = answer_6_1.text + "~" + answer_6_2.text + "~" + answer_6_3.text + "~" + answer_6_4.text + "~" + answer_6_5.text + "~" + answer_6_6.text;
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.toString().trim()!='' && answer_1_2.toString().trim()!='' &&  answer_1_3.toString().trim()!='' && answer_1_4.toString().trim()!='' && answer_1_5.toString().trim()!='' &&  answer_1_6.toString().trim()!='')
      completionCounter+=1;
    if(answer_2.text.trim()!='')
      completionCounter+=1;
    if(answer_3.toString().trim()!='')
      completionCounter+=1;
    if(answer_4_1.toString().trim()!='' && answer_4_2.toString().trim()!='' &&  answer_4_3.toString().trim()!='' && answer_4_4.toString().trim()!='' && answer_4_5.toString().trim()!='' &&  answer_4_6.toString().trim()!='')
      completionCounter+=1;
    if(answer_5_1.toString().trim()!='' && answer_5_2.toString().trim()!='' &&  answer_5_3.toString().trim()!='' && answer_5_4.toString().trim()!='' && answer_5_5.toString().trim()!='' &&  answer_5_6.toString().trim()!='' &&
        answer_5_7.toString().trim()!='' && answer_5_8.toString().trim()!='' &&  answer_5_9.toString().trim()!='' && answer_5_10.toString().trim()!='' && answer_5_11.toString().trim()!='' &&  answer_5_12.toString().trim()!='')
      completionCounter+=1;
    if(answer_6_1.text.trim()!='' && answer_6_2.text.trim()!='' &&  answer_6_3.text.trim()!='' && answer_6_4.text.trim()!='' && answer_6_5.text.trim()!='' &&  answer_6_6.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/6) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 15,
        lessonNo: 5,
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
      DropdownMenuItem(child: Text("1"),value: "1"),
      DropdownMenuItem(child: Text("2"),value: "2"),
      DropdownMenuItem(child: Text("3"),value: "3"),
      DropdownMenuItem(child: Text("4"),value: "4"),
      DropdownMenuItem(child: Text("5"),value: "5"),
      DropdownMenuItem(child: Text("6"),value: "6"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems03{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("-SELECT-"),value: ""),
      DropdownMenuItem(child: Text("a."),value: "a."),
      DropdownMenuItem(child: Text("b."),value: "b."),
      DropdownMenuItem(child: Text("c."),value: "c."),
      DropdownMenuItem(child: Text("d."),value: "d."),
    ];
    return menuItems;
  }

  void clearFields() {
    Navigator.pop(context, false);
      answer_1_1='';
       answer_1_2='';
       answer_1_3='';
       answer_1_4='';
       answer_1_5='';
      answer_1_6='';
      answer_2.text='';
     answer_3 = '';
      answer_4_1.text='';
      answer_4_2.text='';
      answer_4_3.text='';
      answer_4_4.text='';
      answer_4_5.text='';
      answer_4_6.text='';
      answer_5_1.text='';
      answer_5_2.text='';
      answer_5_3.text='';
      answer_5_4.text='';
      answer_5_5.text='';
      answer_5_6.text='';
      answer_5_7.text='';
      answer_5_8.text='';
      answer_5_9.text='';
      answer_5_10.text='';
      answer_5_11.text='';
      answer_5_12.text='';
      answer_6_1.text='';
      answer_6_2.text='';
      answer_6_3.text='';
      answer_6_4.text='';
      answer_6_5.text='';
      answer_6_6.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Looking back at the lesson, number the principles that Jesus established for the formation of your team of 12:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    void onSelectedItemChanged(String type,String value){
      print('nia na->'+ type);
      setState(() {
        switch(type){
          case 'answer_1_1':
            answer_1_1 = value;
            break;
          case 'answer_1_2':
            answer_1_2 = value;
            break;
          case 'answer_1_3':
            answer_1_3 = value;
            break;
          case 'answer_1_4':
            answer_1_4 = value;
            break;
          case 'answer_1_5':
            answer_1_5 = value;
            break;
          case 'answer_1_6':
            answer_1_6 = value;
            break;
        }
      });
    }
    List<clsRichTextFormatter> question_02= [
      clsRichTextFormatter(content:'2. According to Luke 6:11-12, how did Jesus choose His 12?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. Choose the letter of the correct answer:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    void onSelectedItemChanged03(String type,String value){
      setState(() {
            answer_3 = value;
      });
    };

    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. Fill in the gaps:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_04 = [
    clsParagraphInputFieldFormatter(content: 'Jesus\' vision is the only vision that has been able to bring ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_4_1,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' , ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_4_2,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' and ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_4_3,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' to all humanity. \n\n"He appointed  ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_4_4,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' - designating them apostles - that they might be with him and that he might send them out to preach and to have ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_4_5,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' to ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_4_6,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: ' demons" (Mark 3:14-15). ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];
    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. Using Mark 3:16-19, write the names of the 12 apostles:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_06 = [
      clsRichTextFormatter(content:'6. Briefly explain the principles Jesus taught His disciples:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text('Vision: Questionnaire 5'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 5'),
                      ParagraphFormatter(richTextData: question_01),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tInvest in them', value: answer_1_1, type: 'answer_1_1', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tChoice', value: answer_1_2, type: 'answer_1_2', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tFocus', value: answer_1_3, type: 'answer_1_3', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tTraining', value: answer_1_4, type: 'answer_1_4', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tReproduction', value: answer_1_5, type: 'answer_1_5', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItems, label: '\n\t\t\tVision', value: answer_1_6, type: 'answer_1_6', fontSize: fontSize, onSelectedItem: onSelectedItemChanged,flexRight: 2),
                      ParagraphFormatter(richTextData: question_02),
                      MultiInputField(controller: answer_2, hint: 'Enter your answer',maxLines: 5, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_03),
                      DropDownLabelReverseField(menuList: dropdownItems03, label: 'a.) We can choose our disciples because of sympathy, their intellectual capacity, their public speaking skills, their abilities or human talents. \n\nb.) We choose them because the Holy Spirit gives testimony to our spirit\n\nc.) None of the above\n\nd.) Options a and b', value: answer_3, type: 'answer_3', fontSize: fontSize, onSelectedItem: onSelectedItemChanged03,flexRight: 2),
                      ParagraphFormatter(richTextData: question_04),
                      ParagraphInputField(richTextData: answer_sheet_04),
                      ParagraphFormatter(richTextData: question_05),
                      SingleLabelInputField(controller: answer_5_1, label: '1.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_2, label: '2.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_3, label: '3.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_4, label: '4.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_5, label: '5.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_6, label: '6.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_7, label: '7.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_8, label: '8.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_9, label: '9.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_10, label: '10.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_11, label: '11.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_5_12, label: '12.', hint: 'Enter Apostle\'s Name Here', colorTheme: colorTheme, indentPadding: 0, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_06),
                      Text('\n\t\t\t\t\tJohn 17:11-12\n'),
                      MultiInputField(controller: answer_6_1, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      Text('\n\t\t\t\t\tLuke 9:46-48\n'),
                      MultiInputField(controller: answer_6_2, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      Text('\n\t\t\t\t\tLuke 21:1-4\n'),
                      MultiInputField(controller: answer_6_3, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      Text('\n\t\t\t\t\tPhilippians 2:5-8\n'),
                      MultiInputField(controller: answer_6_4, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      Text('\n\t\t\t\t\t1 Corinthians 9:16\n'),
                      MultiInputField(controller: answer_6_5, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      Text('\n\t\t\t\t\tJoshua 1:9\n'),
                      MultiInputField(controller: answer_6_6, hint: 'Enter your answer',maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
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
