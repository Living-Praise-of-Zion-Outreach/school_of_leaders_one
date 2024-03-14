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

class Vision06Questionnaire extends StatefulWidget {
  const Vision06Questionnaire({super.key});

  @override
  State<Vision06Questionnaire> createState() => _Vision06QuestionnaireState();
}

class _Vision06QuestionnaireState extends State<Vision06Questionnaire> {

  late String colorTheme=clsApp.defaultColorThemes;
  late double fontSize=16;
  clsSqlLesson? lessonData;
  late String  answer_1_1='';
  late String   answer_1_2='';
  late String   answer_1_3='';
  late String   answer_1_4='';
  late String   answer_1_5='';
  late String   answer_1_6='';
  final  answer_2_1 = TextEditingController();
  final  answer_2_2 = TextEditingController();
  final  answer_2_3 = TextEditingController();
  final  answer_3 = TextEditingController();

  final  answer_4_1 = TextEditingController();
  final  answer_4_2 = TextEditingController();
  final  answer_4_3 = TextEditingController();
  final  answer_4_4 = TextEditingController();
  final  answer_4_5 = TextEditingController();
  final  answer_4_6 = TextEditingController();
  final  answer_4_7 = TextEditingController();
  final  answer_4_8 = TextEditingController();
  final  answer_4_9 = TextEditingController();
  final  answer_4_10 = TextEditingController();
  final  answer_4_11 = TextEditingController();
  final  answer_4_12 = TextEditingController();
  final  answer_4_13 = TextEditingController();
  final  answer_4_14 = TextEditingController();
  final  answer_4_15 = TextEditingController();
  final  answer_4_16 = TextEditingController();
  final  answer_4_17 = TextEditingController();
  final  answer_4_18 = TextEditingController();
  final  answer_4_19 = TextEditingController();
  final  answer_4_20 = TextEditingController();
  final  answer_4_21 = TextEditingController();
  final  answer_5=TextEditingController();
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
    lessonData = await sqlHelper.getLessonByID(16);
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
    colAns1 = lessonData!.answer_2.split("~");
    if (colAns1.length > 1) {
      answer_2_1.text = colAns1[0];
      answer_2_2.text = colAns1[1];
      answer_2_3.text = colAns1[2];
    }
    answer_3.text = lessonData!.answer_3;
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
      answer_4_9.text = colAns1[8];
      answer_4_10.text = colAns1[9];
      answer_4_11.text = colAns1[10];
      answer_4_12.text = colAns1[11];
      answer_4_13.text = colAns1[12];
      answer_4_14.text = colAns1[13];
      answer_4_15.text = colAns1[14];
      answer_4_16.text = colAns1[15];
      answer_4_17.text = colAns1[16];
      answer_4_18.text = colAns1[17];
      answer_4_19.text = colAns1[18];
      answer_4_20.text = colAns1[19];
      answer_4_21.text = colAns1[20];
    }
    answer_5.text = lessonData!.answer_5;
    setState(() {
    });
  }

  void updateAnswers() async{
    String ans1 = answer_1_1+ "~" + answer_1_2 + "~" + answer_1_3 + "~" + answer_1_4 + "~" + answer_1_5 + "~" + answer_1_6;
    String ans2 = answer_2_1.text + "~" + answer_2_2.text + "~" + answer_2_3.text;
    String ans3 = answer_3.text;
    String ans4 = answer_4_1.text + "~" + answer_4_2.text + "~" + answer_4_3.text + "~" + answer_4_4.text + "~" + answer_4_5.text + "~" + answer_4_6.text + "~" +
        answer_4_7.text + "~" + answer_4_8.text + "~" + answer_4_9.text + "~" + answer_4_10.text + "~" + answer_4_11.text + "~" + answer_4_12.text + "~" +
        answer_4_13.text + "~" + answer_4_14.text + "~" + answer_4_15.text + "~" + answer_4_16.text + "~" + answer_4_17.text + "~" + answer_4_18.text + "~" +
        answer_4_19.text + "~" + answer_4_20.text + "~" + answer_4_21.text;
    String ans5 = answer_5.text;
    String ans6 = '';
    String ans7 = '';
    String ans8 = '';
    String ans9 = '';
    String ans10 = '';

    int completionCounter = 0;
    if(answer_1_1.toString().trim()!='' && answer_1_2.toString().trim()!='' &&  answer_1_3.toString().trim()!='' && answer_1_4.toString().trim()!='' && answer_1_5.toString().trim()!='' &&  answer_1_6.toString().trim()!='')
      completionCounter+=1;
    if(answer_2_1.text.trim()!='' && answer_2_2.text.trim()!='' && answer_2_3.text.trim()!='')
      completionCounter+=1;
    if(answer_3.text.trim()!='')
      completionCounter+=1;
    if(answer_4_1.text.trim()!='' && answer_4_2.text.trim()!='' && answer_4_3.text.trim()!='' && answer_4_4.text.trim()!='' && answer_4_5.text.trim()!='' && answer_4_6.text.trim()!='' && answer_4_7.text.trim()!='' &&
        answer_4_8.text.trim()!='' && answer_4_9.text.trim()!='' && answer_4_10.text.trim()!='' && answer_4_11.text.trim()!='' && answer_4_12.text.trim()!='' && answer_4_13.text.trim()!='' && answer_4_14.text.trim()!='' &&
        answer_4_15.text.trim()!='' && answer_4_16.text.trim()!='' && answer_4_17.text.trim()!='' && answer_4_18.text.trim()!='' && answer_4_19.text.trim()!='' && answer_4_20.text.trim()!='' && answer_4_21.text.trim()!='')
      completionCounter+=1;
    if(answer_5.text.trim()!='')
      completionCounter+=1;

    double totalPercentage = (completionCounter/5) * 100;
    completionRate = int.parse(totalPercentage.toStringAsFixed(0));

    await sqlHelper.updateLesson(clsSqlLesson(
        lessonID: 16,
        lessonNo: 6,
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
      DropdownMenuItem(child: Text("-SELECT-"),value: ""),
      DropdownMenuItem(child: Text("T"),value: "T"),
      DropdownMenuItem(child: Text("F"),value: "F")
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
    answer_2_1.text='';
    answer_2_2.text='';
    answer_2_3.text='';
    answer_3.text = '';
    answer_4_1.text='';
    answer_4_2.text='';
    answer_4_3.text='';
    answer_4_4.text='';
    answer_4_5.text='';
    answer_4_6.text='';
    answer_4_7.text='';
    answer_4_8.text='';
    answer_4_9.text='';
    answer_4_10.text='';
    answer_4_11.text='';
    answer_4_12.text='';
    answer_4_13.text='';
    answer_4_14.text='';
    answer_4_15.text='';
    answer_4_16.text='';
    answer_4_17.text='';
    answer_4_18.text='';
    answer_4_19.text='';
    answer_4_20.text='';
    answer_4_21.text='';
    answer_5.text='';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> question_01 = [
      clsRichTextFormatter(content:'1. Write True (T) or False (F):',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    void onSelectedItemChangedTF(String type,String value){
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
      clsRichTextFormatter(content:'2. Complete and memorize:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsParagraphInputFieldFormatter> answer_sheet_02 = [
    clsParagraphInputFieldFormatter(content: '"Consequently ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
        mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode,
    mode: 'input', inputField: clsInputField(controller:answer_2_1,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'comes from hearing the message, and the message is ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_2,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'through the ', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
      clsParagraphInputFieldFormatter(content: '', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'input', inputField: clsInputField(controller:answer_2_3,colorTheme: colorTheme,hint: '',width: 100 )),
      clsParagraphInputFieldFormatter(content: 'of Christ" (Romans 10:17)', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode,
          mode: 'text', inputField: clsInputField(controller:new TextEditingController(),colorTheme: colorTheme,hint: '',width: 20 )),
    ];

    List<clsRichTextFormatter> question_03= [
      clsRichTextFormatter(content:'3. How can a successful leader move the spiritual realm when they speak?',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> question_04= [
      clsRichTextFormatter(content:'4. Fill in the table with the characteristics of a successful leader:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> question_05= [
      clsRichTextFormatter(content:'5. Describe the most significant characteristics of your leader:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
        title: Text('Vision: Questionnaire 6'),
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
                      getHeadings('ACTIVITY QUESTIONNAIRE 6'),
                      ParagraphFormatter(richTextData: question_01),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),child: Text('\nThe successful leader:', style: TextStyle(fontSize: fontSize),),),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nIs someone who has dreams given by the Holy Spirit.', value: answer_1_1, type: 'answer_1_1', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nGod closes their spiritual eyes, He gives them extraordinary visions of what He wants them to achieve.', value: answer_1_2, type: 'answer_1_2', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nShould always live in the realm of logic and not get caught up in the complicated world of faith.', value: answer_1_3, type: 'answer_1_3', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nGreat and noble dreams are the material with which we create our future.', value: answer_1_4, type: 'answer_1_4', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nWhen we have a dream from God, we receive such assurance in our hearts that it is already achieved that there is no place left for doubt.', value: answer_1_5, type: 'answer_1_5', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      DropDownLabelReverseField(menuList: dropdownItemsTF, label: '\nThe successful leader continually declares the miracle as a reality in their life, as if it were something they already possessed; and they will not rest until they see it accomplished.', value: answer_1_6, type: 'answer_1_6', fontSize: fontSize, onSelectedItem: onSelectedItemChangedTF,flexRight: 2),
                      ParagraphFormatter(richTextData: question_02),
                      ParagraphInputField(richTextData: answer_sheet_02),
                      ParagraphFormatter(richTextData: question_03),
                      MultiInputField(controller: answer_3, hint: 'Enter your answer', maxLines: 3, colorTheme: colorTheme, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_04),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nDreamer',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_1, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_2, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_3, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nPerson of Faith',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_4, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_5, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_6, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nMoves the spiritual realm when they speak',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_7, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_8, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_9, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nEnables all things to be possible',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_10, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_11, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_12, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nEdifies lives and reproduces themself in others',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_13, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_14, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_15, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nHas a committed team',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_16, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_17, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_18, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      Divider(),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10.0) ,child: Text('\nHas lasting leadership',style: TextStyle(fontSize:fontSize),)),
                      SingleLabelInputField(controller: answer_4_19, label: '1.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_20, label: '2.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      SingleLabelInputField(controller: answer_4_21, label: '3.', hint: 'Enter your answer', colorTheme: colorTheme, indentPadding: 10, fontSize: fontSize),
                      ParagraphFormatter(richTextData: question_05),
                      MultiInputField(controller: answer_5, hint: 'Enter your answer', maxLines: 4, colorTheme: colorTheme, fontSize: fontSize),

                      //GroupSingleLabelInputField(label: 'Dreamer', data: answer_04_dreamer,flexSize: 2,indentPadding: 10.0),



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
