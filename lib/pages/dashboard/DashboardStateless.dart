
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';

class DashboardStateless extends StatelessWidget {
  final String colorTheme;
  final Function onTap;
  final double lovePercentage;
  final double visionPercentage;
  final double dailyVersePercentage;
  const DashboardStateless({super.key,required this.colorTheme,required this.onTap,required this.lovePercentage,required this.visionPercentage,required this.dailyVersePercentage});

  @override
  Widget build(BuildContext context) {

    double totalAll = (lovePercentage*100) + (visionPercentage*100) + (dailyVersePercentage*100);
    double overall = totalAll/300;
    String overallText = (overall*100).toStringAsFixed(2);

    return Scaffold(
        body: SingleChildScrollView(
          child: RawScrollbar(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                  children:[
                    Center(
                      child: CircularPercentIndicator(
                        radius: 80,
                        lineWidth: 10,
                        percent: overall,
                        animation: true,
                        progressColor: myThemes.getColor(colorTheme),
                        backgroundColor: myThemes.getShadeColor(colorTheme),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(overallText + '%',style: TextStyle(fontSize: 30),),),
                    ),
                    Text('Overall Completion Rate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Divider(),
                    SizedBox(height: 10.0,),
                    LinearPercentIndicator(
                      lineHeight: 10,
                      barRadius: Radius.circular(15.0),
                      animation: true,
                      progressColor: myThemes.getColor(colorTheme),
                      backgroundColor: myThemes.getShadeColor(colorTheme),

                      percent: lovePercentage,
                    ),
                    Text('Pastored In His Love',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                    SizedBox(height: 10.0,),
                    LinearPercentIndicator(
                      lineHeight: 10,
                      animation: true,
                      barRadius: Radius.circular(15.0),
                      progressColor: myThemes.getColor(colorTheme),
                      backgroundColor: myThemes.getShadeColor(colorTheme),
                      percent: visionPercentage,
                    ),
                    Text('The Power of A Vision',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                    SizedBox(height: 10.0,),
                    LinearPercentIndicator(
                      lineHeight: 10,
                      animation: true,
                      barRadius: Radius.circular(15.0),
                      progressColor: myThemes.getColor(colorTheme),
                      backgroundColor: myThemes.getShadeColor(colorTheme),
                      percent:dailyVersePercentage,
                    ),
                    Text('My Daily Verses',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),

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
                                onTap(2);
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
                                onTap(3);
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
                                onTap(4);
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
