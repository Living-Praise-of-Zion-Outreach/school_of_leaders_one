import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:school_of_leaders_one/classes/clsApp.dart';

class Dashboard extends StatefulWidget {
  final Function onTap;
  const Dashboard({super.key,required this.onTap});

  @override
  State<Dashboard> createState() => _DashboardState(onTap);
}

class _DashboardState extends State<Dashboard> {
  late String colorTheme = clsApp.defaultColorThemes;
  late Function onTap;

  _DashboardState(Function _onTap) {
    this.onTap = _onTap;
  }

  void reloadTheme() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    colorTheme = prefs.getString('colorThemes') ?? clsApp.defaultColorThemes;
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    reloadTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: RawScrollbar(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                children:[
                  SizedBox(height: 10.0,),
                  Center(
                    child: CircularPercentIndicator(
                        radius: 150,
                        lineWidth: 10,
                        percent: 0.4,
                        animation: true,
                        progressColor: myThemes.getColor(colorTheme),
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text('100.00%',style: TextStyle(fontSize: 30),),),
                  ),
                  Text('\nOverall Completion Rate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Divider(),
                  SizedBox(height: 10.0,),
                  LinearPercentIndicator(
                    lineHeight: 10,
                    animation: true,
                    progressColor: myThemes.getColor(colorTheme),
                    percent: 0.3,
                  ),
                  Text('Pastored In His Love',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                  SizedBox(height: 10.0,),
                  LinearPercentIndicator(
                    lineHeight: 10,
                    animation: true,
                    progressColor: myThemes.getColor(colorTheme),
                    percent: 0.3,
                  ),
                  Text('The Power of A Vision',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                  SizedBox(height: 10.0,),
                  LinearPercentIndicator(
                    lineHeight: 10,
                    animation: true,
                    progressColor: myThemes.getColor(colorTheme),
                    percent: 0.3,
                  ),
                  Text('My Daily Verses',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),textAlign: TextAlign.left,),

                  Divider(),
              SizedBox(height: 10.0,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onTap: (){
                          onTap(1);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                              child:Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/love.png',height: 100),
                                    Text('\nStudy & Answer A Lesson:',textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic),),
                                    Text('LOVE',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onTap: (){

                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                              child:Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/vision.png',height: 100),
                                    Text('\nStudy & Answer A Lesson:',textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic),),
                                    Text('VISION',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onTap: (){

                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                  child:Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/daily_readings.png',height: 100),
                                        Text('\nRead & Make',textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic),),
                                        Text('DAILY DEVOTIONAL',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onTap: (){

                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),),
                                  child:Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/report.png',height: 100,),
                                        Text('\nPrint & Share:',textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic),),
                                        Text('WEEKLY REPORT',style: TextStyle(fontWeight: FontWeight.bold,color: myThemes.getColor(colorTheme)),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ));
  }
}
