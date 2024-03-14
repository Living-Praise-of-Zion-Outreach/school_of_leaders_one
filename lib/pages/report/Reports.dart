
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:school_of_leaders_one/classes/sql/sqlHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../classes/sql/clsSqlLesson.dart';
import '../../models/modelDailyVerse.dart';
import '../../widgets/ads/RewardedAds.dart';
import 'classes/clsPdfApi.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';

class PrintChoices{
  late String type;
  late bool isSelected;
  late List<bool> data;
  PrintChoices({required this.type, required this.isSelected,required this.data});
}

class Reports extends StatefulWidget {
  const Reports({super.key});
  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  final clsPdfApi pdf = clsPdfApi();
  late String colorTheme = clsApp.defaultColorThemes;
  final txt_name = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late String name;
  late RewardedAds rewardedAds;
  final  adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-3940256099942544/1712485313';

  late List<PrintChoices> _data=[];
  late bool selectAllLesson = false;
  late bool selectAllVision = false;
  late bool selectAllWeek = false;
  late bool lesson01 = false;
  late bool lesson02 = false;
  late bool lesson03 = false;
  late bool lesson04 = false;
  late bool lesson05 = false;
  late bool lesson06 = false;
  late bool lesson07 = false;
  late bool lesson08 = false;
  late bool lesson09 = false;
  late bool lesson10 = false;
  late bool vision01 = false;
  late bool vision02 = false;
  late bool vision03 = false;
  late bool vision04 = false;
  late bool vision05 = false;
  late bool vision06 = false;
  late bool vision07 = false;
  late bool vision08 = false;
  late bool vision09 = false;
  late bool vision10 = false;
  late bool week01 = false;
  late bool week02 = false;
  late bool week03 = false;
  late bool week04 = false;
  late bool week05 = false;
  late bool week06 = false;
  late bool week07 = false;
  late bool week08 = false;
  late bool week09 = false;
  late bool week10 = false;

  Future<List<clsSqlLesson>> getLessonData({required int startIndex,required int type}) async{
    List<clsSqlLesson> lesson = [];
    late bool blnLoveFound = false;
    late String whereLoveStringArguments='';
    late List<int> whereLoveValueArguments=[];
    for(int a=0;a<_data[type].data.length;a++){
      if(_data[type].data[a]){
        blnLoveFound = true;
        whereLoveStringArguments += whereLoveStringArguments==''? ' lessonID=? ': ' or lessonID=? ';
        whereLoveValueArguments.add(a+startIndex);
      }
    }
    if(blnLoveFound){
      //print('?->result->' + whereLoveStringArguments);
      //for(int i=0;i<whereLoveValueArguments.length;i++){
      //  print(whereLoveValueArguments[i].toString() + ',');
      //}
      lesson = await sqlHelper().getAllLessonsOnlySelectedID(whereLoveStringArguments, whereLoveValueArguments);
    }else{lesson=[];}
    return lesson;
  }

  Future<List<modelDailyVerse>> getDailyVerseData({required int startIndex,required int type}) async{
    List<modelDailyVerse> dailyVerse = [];
    late bool blnDailyVerseFound = false;
    late String whereLoveStringArguments='';
    late List<int> whereLoveValueArguments=[];
    for(int a=0;a<_data[type].data.length;a++){
      if(_data[type].data[a]){
        int starter = a*7;
        blnDailyVerseFound = true;
        for(int b=0;b<7;b++){
          whereLoveStringArguments += whereLoveStringArguments==''? ' dailyVerseID=? ': ' or dailyVerseID=? ';
          whereLoveValueArguments.add(startIndex +(b+starter));
        }

      }
    }
    if(blnDailyVerseFound){
      print('?->result->' + whereLoveStringArguments);
      for(int i=0;i<whereLoveValueArguments.length;i++){
        print(whereLoveValueArguments[i].toString() + ',');
      }
      dailyVerse = await sqlHelper().getAllDailyVerseOnlySelectedID(whereLoveStringArguments, whereLoveValueArguments);
    }else{dailyVerse=[];}
    return dailyVerse;
  }

  void savePDF() async{

    List<clsSqlLesson> love = await getLessonData(startIndex: 1,type: 0);
    List<clsSqlLesson> vision = await getLessonData(startIndex: 11,type: 1);
    List<modelDailyVerse> dailyVerse = await getDailyVerseData(startIndex: 1,type: 2);

    for(int i=0;i<love.length;i++){
      print('love->>' + love[i].lessonID.toString() + ',');
    }
    for(int i=0;i<vision.length;i++){
      print('vision->>' + vision[i].lessonID.toString() + ',');
    }
    for(int i=0;i<dailyVerse.length;i++){
      print('daily verse->>' + dailyVerse[i].dailyVerseID.toString() + ',');
    }

    print('total daily verse' + dailyVerse.length.toString());
    if(dailyVerse.length==0) print('daily verse no data');

    final data = await pdf.generatePdf(txt_name.text,love,vision,dailyVerse);
    pdf.savePdfFile('Report-Sol1-' + DateTime.now().toString(), data);
  }

  void reloadTheme() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    txt_name.text = prefs.getString('name') ?? '';
    FocusScope.of(context).requestFocus(new FocusNode());
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    setState(() {});
  }
  void initializeData(){
    _data = [
      PrintChoices(type: 'love', isSelected: false, data: [false,false,false,false,false,false,false,false,false,false]),
      PrintChoices(type: 'vision',isSelected: false, data: [false,false,false,false,false,false,false,false,false,false]),
      PrintChoices(type: 'daily verses', isSelected: false, data: [false,false,false,false,false,false,false,false,false,false]),
    ];
  }
  void assignAllLove(String type,int index, bool value){
      _data[0].isSelected=value;
      _data[0].data[0]=value;
      _data[1].data[1]=value;
      _data[2].data[2]=value;
      _data[3].data[3]=value;
      _data[4].data[4]=value;
      _data[5].data[5]=value;
      _data[6].data[6]=value;
      _data[7].data[7]=value;
      _data[8].data[8]=value;
      _data[9].data[9]=value;
  }
  void assignSpecificData(int typeIndex, int index, bool value){
    _data[typeIndex].data[index-1] = value;
    late bool blnFound = false;
    for(int x=0;x<_data[typeIndex].data.length;x++){
      if(_data[typeIndex].data[x]){
        blnFound=true;
        break;
      }
    }
    _data[typeIndex].isSelected = blnFound;
  }
  void checkAllLove(bool value){
      lesson01=value;
      lesson02=value;
      lesson03=value;
      lesson04=value;
      lesson05=value;
      lesson06=value;
      lesson07=value;
      lesson08=value;
      lesson09=value;
      lesson10=value;
      _data[0].isSelected=value;
      _data[0].data[0]=value;
      _data[0].data[1]=value;
      _data[0].data[2]=value;
      _data[0].data[3]=value;
      _data[0].data[4]=value;
      _data[0].data[5]=value;
      _data[0].data[6]=value;
      _data[0].data[7]=value;
      _data[0].data[8]=value;
      _data[0].data[9]=value;
  }
  void checkAllVision(bool value){
    vision01=value;
    vision02=value;
    vision03=value;
    vision04=value;
    vision05=value;
    vision06=value;
    vision07=value;
    vision08=value;
    vision09=value;
    vision10=value;
    _data[1].isSelected=value;
    _data[1].data[0]=value;
    _data[1].data[1]=value;
    _data[1].data[2]=value;
    _data[1].data[3]=value;
    _data[1].data[4]=value;
    _data[1].data[5]=value;
    _data[1].data[6]=value;
    _data[1].data[7]=value;
    _data[1].data[8]=value;
    _data[1].data[9]=value;
  }
  void checkAllWeeks(bool value){
    week01=value;
    week02=value;
    week03=value;
    week04=value;
    week05=value;
    week06=value;
    week07=value;
    week08=value;
    week09=value;
    week10=value;
    _data[2].isSelected=value;
    _data[2].data[0]=value;
    _data[2].data[1]=value;
    _data[2].data[2]=value;
    _data[2].data[3]=value;
    _data[2].data[4]=value;
    _data[2].data[5]=value;
    _data[2].data[6]=value;
    _data[2].data[7]=value;
    _data[2].data[8]=value;
    _data[2].data[9]=value;
  }
  void generatePDF() async{

    bool blnFound = false;
    for(int x=0;x<_data.length;x++){
      if(_data[x].isSelected) {
        blnFound=true;
        break;
      }
    }

    if(blnFound){
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('name', txt_name.text);
      FocusScope.of(context).requestFocus(new FocusNode());
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      //FOR DEBUGGING PURPOSE ONLY//////////////////////////////////////////////
      /*for(int x=0;x<_data.length;x++){
        print('report '+x.toString()+'--->' + _data[x].type + ' ' + _data[x].isSelected.toString());
        for(int y=0;y<_data[x].data.length;y++){
          print(_data[x].type+'--->' + (y+1).toString() +'->' + _data[x].data[y].toString());
        }
      }*/
      //////////////////////////////////////////////////////////////////////////
      await showDialog(
          context: context,
          builder: (context)=> AlertDialog(
            title: const Text('Are you sure with your current selection to generate report?',style: TextStyle(fontSize: 16.0),),
            actions: <Widget>[
              TextButton(
                  onPressed: ()=>Navigator.pop(context,false),
                  child:  Text('No',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
              TextButton(
                  onPressed: () async{
                    bool isOnline = await hasNetwork();
                    Navigator.pop(context,true);
                    if(isOnline){
                      loadAd();
                    } {
                      var snackBar = SnackBar(content: Text('Please wait for a while the data is processing.'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    //savePDF();
                    },
                  child:  Text('Yes',style: TextStyle(color: myThemes.getColor(colorTheme)),)),
            ],
          )
      );

      //savePDF();

    }
    else{
      var snackBar = SnackBar(content: Text('Unable to generate report. Please select at least one.'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

  }

  void loadAd() {
    RewardedAd.load(
        adUnitId: clsApp.displayRealAds ? RewardedAds.adUnitIdLive : RewardedAds.adUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            showRewarded(ad);
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('RewardedAd failed to load: $error');
            var snackBar = SnackBar(content: Text('Please try again to reinitialize the data properly.'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ));
  }
  showRewarded(RewardedAd ad){
    ad.show(onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) {
      // Reward the user for watching an ad.
      savePDF();
    });
  }
  Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    initializeData();
    reloadTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:[Expanded(
          child: RawScrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      controller: txt_name,
                      cursorColor: myThemes.getColor(colorTheme),
                      decoration: InputDecoration(
                        border: null,
                        focusedBorder: null,
                        hintText: 'Enter your name',
                      ),
                    ),
                    Text('NAME',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0,),
                    Divider(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: Text('LOVE: List of Lessons',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Container(
                            width: 160,
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: selectAllLesson,
                                title: Text('Select all',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    selectAllLesson = value!;
                                    checkAllLove(value);
                                  });
                                }),
                          )],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson01,
                              title: Text('1',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson01 = value!;
                                  assignSpecificData(0,1,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson02,
                              title: Text('2',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson02 = value!;
                                  assignSpecificData(0,2,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson03,
                              title: Text('3',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson03 = value!;
                                  assignSpecificData(0,3,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson04,
                              title: Text('4',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson04 = value!;
                                  assignSpecificData(0,4,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson05,
                              title: Text('5',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson05 = value!;
                                  assignSpecificData(0,5,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson06,
                              title: Text('6',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson06 = value!;
                                  assignSpecificData(0,6,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson07,
                              title: Text('7',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson07 = value!;
                                  assignSpecificData(0,7,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson08,
                              title: Text('8',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson08 = value!;
                                  assignSpecificData(0,8,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: lesson09,
                              title: Text('9',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  lesson09 = value!;
                                  assignSpecificData(0,9,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: lesson10,
                                title: Text('10',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    lesson10 = value!;
                                    assignSpecificData(0,10,value);
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: Text('VISION: List of Lessons',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Container(
                            width: 160,
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: selectAllVision,
                                title: Text('Select all',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    selectAllVision = value!;
                                    checkAllVision(value);
                                  });
                                }),
                          )],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision01,
                              title: Text('1',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision01 = value!;
                                  assignSpecificData(1,1,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision02,
                              title: Text('2',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision02 = value!;
                                  assignSpecificData(1,2,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision03,
                              title: Text('3',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision03 = value!;
                                  assignSpecificData(1,3,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision04,
                              title: Text('4',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision04 = value!;
                                  assignSpecificData(1,4,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision05,
                              title: Text('5',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision05 = value!;
                                  assignSpecificData(1,5,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision06,
                              title: Text('6',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision06 = value!;
                                  assignSpecificData(1,6,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision07,
                              title: Text('7',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision07 = value!;
                                  assignSpecificData(1,7,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision08,
                              title: Text('8',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision08 = value!;
                                  assignSpecificData(1,8,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: vision09,
                              title: Text('9',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  vision09 = value!;
                                  assignSpecificData(1,9,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: vision10,
                                title: Text('10',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    vision10 = value!;
                                    assignSpecificData(1,10,value);
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: Text('DAILY VERSE: List of Weeks',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Container(
                            width: 160,
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: selectAllWeek,
                                title: Text('Select all',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    selectAllWeek = value!;
                                    checkAllWeeks(value);
                                  });
                                }),
                          )],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week01,
                              title: Text('1',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week01 = value!;
                                  assignSpecificData(2,1,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week02,
                              title: Text('2',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week02 = value!;
                                  assignSpecificData(2,2,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week03,
                              title: Text('3',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week03 = value!;
                                  assignSpecificData(2,3,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week04,
                              title: Text('4',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week04 = value!;
                                  assignSpecificData(2,4,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week05,
                              title: Text('5',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week05 = value!;
                                  assignSpecificData(2,5,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week06,
                              title: Text('6',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week06 = value!;
                                  assignSpecificData(2,6,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week07,
                              title: Text('7',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week07 = value!;
                                  assignSpecificData(2,7,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week08,
                              title: Text('8',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week08 = value!;
                                  assignSpecificData(2,8,value);
                                });
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CheckboxListTile(
                              activeColor: myThemes.getColor(colorTheme),
                              value: week09,
                              title: Text('9',textAlign: TextAlign.right,),
                              onChanged: (value){
                                setState(() {
                                  week09 = value!;
                                  assignSpecificData(2,9,value);
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: CheckboxListTile(
                                activeColor: myThemes.getColor(colorTheme),
                                value: week10,
                                title: Text('10',textAlign: TextAlign.right,),
                                onChanged: (value){
                                  setState(() {
                                    week10 = value!;
                                    assignSpecificData(2,10,value);
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: myThemes.getColor(colorTheme)),
                        onPressed: generatePDF
                        ,
                      icon: Icon(Icons.print),
                      label: Text('Generate Report'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )]),
    );
  }
}
