import 'dart:io';
import 'dart:typed_data';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import '../../../classes/sql/clsSqlLesson.dart';
import '../../../models/modelDailyVerse.dart';

class lessonFormatter{
  late int lessonID;
  late List<String> questions;
  lessonFormatter({required this.lessonID,required this.questions});
}
class AnswerFormatter{
  late String leftLabel;
}

class clsPdfApi{
   Future<Uint8List> generatePdf(String name,List<clsSqlLesson> love,List<clsSqlLesson> vision, List<modelDailyVerse> verse)  {
    final pdf = Document();
    pdf.addPage(MultiPage(
        crossAxisAlignment: CrossAxisAlignment.start,
        pageFormat: PdfPageFormat.letter,
        build: (Context context)=>[
          createHeader(name),
          ...createLove(love),
          ...createVision(vision),
          ...createDailyVerse(verse),
        ],
      footer: (context){
          final text = 'Page ${context.pageNumber} of ${context.pagesCount}';
          return Container(
            alignment: Alignment.centerRight,
            child:
              Text(text, style: TextStyle(fontStyle: FontStyle.italic))
          );
      }
    ));
    return pdf.save();
  }

   List<Widget> createLove(List<clsSqlLesson> love){
     List<Widget> _data = [];
     if(love.length>0) _data.add(subHeader('LOVE: Pastored In His Love', PdfColors.red));
     for(int i=0;i<love.length;i++){
         _data.add(Container(decoration: BoxDecoration(color: PdfColors.amberAccent100),   child: Text('ACTIVITY LESSON ' + love[i].lessonNo.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),width: double.infinity,alignment: Alignment.center));
         int _localUpdateDt = love[i].updatedAt.toString().length;
         late String dtUpdated = '-';
         if(_localUpdateDt>3) dtUpdated = love[i].updatedAt.toString().substring(0,10);
         _data.add(Container(alignment: Alignment.centerRight,  child: Text('Date Answered: ' +  dtUpdated,style: TextStyle(fontStyle: FontStyle.italic))));
         int maxAnswers = love[i].maxAnswers;
         for(int x=0;x<=maxAnswers;x++){
               _data.add(generatePerQuestion(love[i].lessonID,x,love[i]));
           //print('maxAnswer->' + maxAnswers.toString());
         }
     }
     return _data;
   }
   List<Widget> createVision(List<clsSqlLesson> vision){
     List<Widget> _data = [];

     if(vision.length>0) _data.add(subHeader('VISION: The Power of A Vision', PdfColors.indigo200));

     for(int i=0;i<vision.length;i++){
       _data.add(Container(decoration: BoxDecoration(color: PdfColors.amberAccent100),   child: Text('ACTIVITY LESSON ' + vision[i].lessonNo.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),width: double.infinity,alignment: Alignment.center));
       int _localUpdateDt = vision[i].updatedAt.toString().length;
       late String dtUpdated = '-';
       if(_localUpdateDt>8) dtUpdated = vision[i].updatedAt.toString().substring(0,10);
       _data.add(Container(alignment: Alignment.centerRight,  child: Text('Date Answered: ' +  dtUpdated,style: TextStyle(fontStyle: FontStyle.italic))));
       int maxAnswers = vision[i].maxAnswers;
       for(int x=0;x<=maxAnswers;x++){
         _data.add(generatePerQuestionVision(vision[i].lessonID,x,vision[i]));
       }

     }
     return _data;
   }
   List<Widget> createDailyVerse(List<modelDailyVerse> verse){
     List<Widget> _data = [];
     if(verse.length>0) _data.add(subHeader('DAILY VERSES:', PdfColors.indigo200));

     for(int i=0;i<verse.length;i++){
       String dtRecorded = verse[i].updateDt;
       if(dtRecorded.length>8) dtRecorded = dtRecorded.substring(0,10);
       else dtRecorded = '-';

       _data.add(
           Container(decoration: BoxDecoration(color: PdfColors.amberAccent100),
               child:
               Row(
                 children: [
               Expanded(child:Text('WEEK ' + verse[i].weekNo.toString() + ' | DAY ' + verse[i].dayNo.toString(),
               style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic))),
               Text('Date Recorded: ' + dtRecorded,style: TextStyle(fontStyle: FontStyle.italic))
                ]
               )));

       _data.add(Container(child: Text('I. RHEMA',style: TextStyle(fontWeight: FontWeight.bold))));
       _data.add(Bullet(text: verse[i].devo_rhema));
       _data.add(Container(child: Text('II. COMMANDS',style: TextStyle(fontWeight: FontWeight.bold))));
       _data.add(Bullet(text: verse[i].devo_commands));
       _data.add(Container(child: Text('III. WARNINGS',style: TextStyle(fontWeight: FontWeight.bold))));
       _data.add(Bullet(text: verse[i].devo_warnings));
       _data.add(Container(child: Text('IV. PROMISES',style: TextStyle(fontWeight: FontWeight.bold))));
       _data.add(Bullet(text: verse[i].devo_promises));
       _data.add(Container(child: Text('V. APPLICATION',style: TextStyle(fontWeight: FontWeight.bold))));
       _data.add(Bullet(text: verse[i].devo_application));
       }

     return _data;
   }
   Widget generatePerQuestionVision(int LessonID, int QuestionNo,clsSqlLesson vision){
     switch(QuestionNo){
       case 1:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_1,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 2:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_2,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 3:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_3,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 4:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_4,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 5:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_5,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 6:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_6,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 7:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_7,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 8:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_8,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 9:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_9,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 10:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateVisionAnswers(vision.answer_10,vision.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
     }
     return SizedBox(height: 0,width: 0);
   }
   Widget generatePerQuestion(int LessonID, int QuestionNo,clsSqlLesson love){
     switch(QuestionNo){
       case 1:
         return Container(child: Column(
           children: [
             generateQuestionnaire(LessonID, QuestionNo),
             generateAnswers(love.answer_1,love.lessonID,QuestionNo)
           ]
         ),width: double.infinity);
       case 2:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_2,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 3:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_3,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 4:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_4,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 5:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_5,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 6:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_6,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 7:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_7,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 8:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_8,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 9:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_9,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
       case 10:
         return Container(child: Column(
             children: [
               generateQuestionnaire(LessonID, QuestionNo),
               generateAnswers(love.answer_10,love.lessonID,QuestionNo)
             ]
         ),width: double.infinity);
     }
     return SizedBox(height: 0,width: 0);
   }
   List<String> getLabelAnswers(int lessonID, int answerNo){
     List<String> _data = [];
     if(lessonID==1 && answerNo ==4){
       _data.add('1 Timothy 3:16');
       _data.add('John 1:14');
       _data.add('Colossians 1:15');
     }
     else if(lessonID==11 && answerNo ==3){
       _data.add('John 1:1');
       _data.add('John 1:4');
       _data.add('Hebrews 10:5-7');
       _data.add('John 1:17 ');
       _data.add('John 1:18');
       _data.add('Proverbs 24:7');
     }
     else if(lessonID==12 && answerNo ==5){
       _data.add('A process of follow up that should happen quickly, because its purpose is to strengthen the step of salvation that the person made.');
       _data.add('The grace of each day influences a greater number of people.');
       _data.add('Takes place when a person who has been /formed and equipped prepares to guide others to Jesus\' feet.');
       _data.add('Training that each believer requires in order to reach the fullness of the measure of Jesus Christ, is provided through discipleship or the School of Leaders.');
       _data.add('To motivate a person to agree to come to here Jesus is and receive Him in their heart as their only Lord and Savior.');
       _data.add('To not argue against the Father\'s decisions, `nor any authority put in place by Him. To fulfill God\'s command with obedience, submission and love.');
       _data.add('Comes through visualizing multitudes full of faith and prayer.');
     }
     else if(lessonID==13 && answerNo ==3){
       _data.add('The Lord\'s Church is built on a firm foundation; Jesus Christ is the cornerstone or the base upon which the weight of this spiritual building rests.');
       _data.add('Twelve columns - Jesus\' twelve apostles were established, and later would come the living stones - the believers. ');
       _data.add('The Lord Jesus did not leave us the model for how His Church should be. What He establishes needs neither change nor modification because He does everything perfectly. ');
     }
     else if(lessonID==13 && answerNo ==4){
       _data.add('His ministry on the earth was supernatural.');
       _data.add('God entrusted the disciples with the mission of being witnesses of all that Jesus had done.');
       _data.add('He died and rose again on the third day.');
       _data.add('He sent them to tell the people that Jesus is the judge of the living and the dead.');
       _data.add('Whoever believes in Him will receive forgiveness of sins');
     }
     else if(lessonID==14 && answerNo ==4){
       _data.add('Teach in season and out of season ');
       _data.add('View every member of your cell as a potential leader ');
       _data.add('Engage in spiritual warfare for your cell ');
     }
     else if(lessonID==15 && answerNo ==1){
       _data.add('Invest in them ');
       _data.add('Choice ');
       _data.add('Focus ');
       _data.add('Training ');
       _data.add('Reproduction ');
       _data.add('Vision ');
     }
     else if(lessonID==15 && answerNo ==6){
       _data.add('John 17:11-12 ');
       _data.add('Luke 9:46-48 ');
       _data.add('Luke 21:1-4 ');
       _data.add('Philippians 2:5-8 ');
       _data.add('1 Corinthians 9:16 ');
       _data.add('Joshua 1:9 ');
     }
     else if(lessonID==16 && answerNo ==1){
       _data.add('Is someone who has dreams given by the Holy Spirit.');
       _data.add('God closes their spiritual eyes, He gives them extraordinary visions of what He wants them to achieve.');
       _data.add('Should always live in the realm of logic and not get caught up in the complicated world of faith.');
       _data.add('Great and noble dreams are the material with which we create our future.');
       _data.add('When we have a dream from God, we receive such assurance in our hearts that it is already achieved that there is no place left for doubt.');
       _data.add('The successful leader continually declares the miracle as a reality in their life, as if it were something they already possessed; and they will not rest until they see it accomplished.');
     }
     else if(lessonID==16 && answerNo ==4){
       _data.add('Dreamer');
       _data.add('Dreamer');
       _data.add('Dreamer');
       _data.add('Person of Faith');
       _data.add('Person of Faith');
       _data.add('Person of Faith');
       _data.add('Moves the spiritual realm when they speak');
       _data.add('Moves the spiritual realm when they speak');
       _data.add('Moves the spiritual realm when they speak');
       _data.add('Enables all things to be possible');
       _data.add('Enables all things to be possible');
       _data.add('Enables all things to be possible');
       _data.add('Edifies lives and reproduces themself in others');
       _data.add('Edifies lives and reproduces themself in others');
       _data.add('Edifies lives and reproduces themself in others');
       _data.add('Has a committed team');
       _data.add('Has a committed team');
       _data.add('Has a committed team');
       _data.add('Has lasting leadership');
       _data.add('Has lasting leadership');
       _data.add('Has lasting leadership');
     }
     else if(lessonID==17 && answerNo ==5){
       _data.add('Excellence in the cells');
       _data.add('Winning, a lifestyle');
       _data.add('Homogenous cells');
       _data.add('Weekly goals');
       _data.add('Carry out the process of the ladder of success');
     }
     else if(lessonID==17 && answerNo ==6){
       _data.add('Holiness');
       _data.add('Work');
       _data.add('Spirituality');
       _data.add('Humility');
       _data.add('Effort');
       _data.add('Faith');
       _data.add('Dependence on Christ');
     }
     else if(lessonID==18 && answerNo ==4){
       _data.add('They make personal pastoring possible');
       _data.add('They are the backbone of the church');
       _data.add('They are the source or beginning of the team of 12');
     }
     else if(lessonID==19 && answerNo ==2){
       _data.add('Colossians 1:28-29');
       _data.add('Acts 26:16-18');
       _data.add('Acts 29:19');
       _data.add('Acts 17:30');
       _data.add('1 Corinthians 4:15');
     }
     else if(lessonID==19 && answerNo ==4){
       _data.add('Verify their decision');
       _data.add('Devote ourselves to the apostle\' teaching');
       _data.add('Spiritual milk');
       _data.add('The Bread of the Word');
       _data.add('Solid Food');
       _data.add('Communion with each other');
       _data.add('Share in the breaking of break');
       _data.add('Persevere in prayer');
     }
     else if(lessonID==20 && answerNo ==4){
       _data.add('Goals are');
       _data.add('The best way to take advantage of our time is');
       _data.add('To be able to conquer, I need to');
     }
     else if(lessonID==20 && answerNo ==5){
       _data.add('Water the Eartha');
       _data.add('Win');
       _data.add('Make the earth bud');
       _data.add('Consolidate');
       _data.add('Flourish');
       _data.add('Disciple');
       _data.add('Yield seed for the sower');
       _data.add('Send');
     }
     return _data;
   }
   String generateParagraphAnswers(int lessonID, int answerNo, List<String> data){
    String _data = '';
    if(lessonID==11 && answerNo ==3){
      List<String> gPar = [
        ' "Then the Lord answered me and said, " ',
        ' the vision, and " ',
        ' it on tablets, that the one who reads it may ',
        ' For the ',
        ' is yet for the appointed time; it ',
        ' toward the goal and it will not fail. Though it tarries, ',
        ' for it will certainly come, it will not ',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
            _data = gPar[i] + ' (' + data[i] + ') ';
        else
           _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==13 && answerNo ==1){
      List<String> gPar = [
        ' "Who do people say the " ',
        ' is?" They replied, "Some say John the Baptist; others say,?" ',
        ' ; and still others Jeremiah or ',
        ' of the prophets." "But what about you?" he asked. "Who do you say I am?" ',
        ' Peter answered, "You are the ',
        ' , the Son of the living ',
        ' replied, "Blessed are you, Simon son of Jonah, for this was not ',
        ' : to you by man, but my Father in ',
        '. And I tell you that you are ',
        'and on this rock I will ',
        ', and on this rock I will ',
        '. I will give you the ',
        'of the kingdom of heaven; whatever you bind on earth will be bound in heave, and whatever you ',
        'on earth will be ',
        'in heaven." (Mathew 16:13-19).',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==14 && answerNo ==1){
      List<String> gPar = [
        'Visualize the growth of your ministry ',
        '\nPaint the picture of blessing in your mind ',
        '\nDevelop the vision through the team of 12 ',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==14 && answerNo ==3){
      List<String> gPar = [
        ' What is complete? ',
        ' The daytime is made up of ',
        'hours.'
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==15 && answerNo ==4){
      List<String> gPar = [
        ' Jesus\' vision is the only vision that has been able to bring ',
        ' , ',
        ' and ',
        ' to all humanity. \n\n"He appointed ',
        ' - designating them apostles - that they might be with him and that he might send them out to preach and to have ',
        ' to ',
        ' demons" (Mark 3:14-15). '
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==16 && answerNo ==2){
      List<String> gPar = [
        ' Consequently ',
        ' comes from hearing the message, and the message is ',
        ' through the ',
        ' of Christ" (Romans 10:17) ',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==17 && answerNo ==1){
      List<String> gPar = [
        ' Jesus\' heart beat for the ',
        ' of souls. \n\nEverything He did was for the ',
        ' of souls. \n\nHis evangelistic work ended with His ',
        ' and ',
        '',
        '.'
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==17 && answerNo ==3){
      List<String> gPar = [
        ' "If I preach ',
        ' , I have a ',
        ' if not ',
        ' , I am simply discharging the trust ',
        ' to me " (1 Corinthians 9:17)'
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==17 && answerNo ==7){
      List<String> gPar = [
        ' - A person has been won when: ',
        ' \n\n- They are ',
        ' of sin. \n\n- They have',
        ' of Christ. \n\n- They experience genuine ',
        '\n\n- They show a',
        ' in lifestyle. \n\n- They live a life of ',
        ' '
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==18 && answerNo ==6){
      List<String> gPar = [
        '',
        ' the message so that every ',
        ' group, be it men, women, youth or children, receives the message. \n\nThe',
        ' and the ',
        ' should be committed to the Vision. \n\nThis will allow goals to be met, individual ',
        ' to be assumed, teamwork to be ',
        ' , and strategies to be sought out.'
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==19 && answerNo ==3){
      List<String> gPar = [
        ' "Even though you ',
        ' ten thousand guardians in ',
        ' , you do not have ',
        ' fathers, for in ',
        ' I became your ',
        ' through the gospel " (1 Corinthians 4:15) ',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    else if(lessonID==20 && answerNo ==3){
      List<String> gPar = [
        ' "I waited  ',
        ' for the Lord; he ',
        ' to me and heard my cry. He ',
        ' . me out of the slimy pit, out of the mud and ',
        ' ; he set my feet on a rock and gave me a ',
        ' place to stand. He put a new song in my ',
        ' , a hymn of ',
        ' to our God" (Psalm 40:1-3). ',
      ];
      for(int i=0;i<data.length;i++){
        if(i==0)
          _data = gPar[i] + ' (' + data[i] + ') ';
        else
          _data += gPar[i] + ' (' + data[i] + ') ';
      }
      if(gPar.length>data.length){
        _data += ' ' + gPar[gPar.length-1];
      }
    }
    return _data;
   }
   Widget generateVisionAnswers(String answer, int lessonID, int answerNo){
     List<String> data = answer.split('~');
     List<String> labelData = getLabelAnswers(lessonID, answerNo);

     String paragraphAnswers = generateParagraphAnswers(lessonID, answerNo, data);
     if(paragraphAnswers!=''){
       return Padding(padding:EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0), child:  Container(child:Text(paragraphAnswers,style: TextStyle(fontStyle: FontStyle.italic)),width: double.infinity));
     }
      else{
       if(data.length>1){
         for(int i=0;i<labelData.length;i++){
           data[i] = labelData[i] + ' - ' + data[i];
         }
         return Column(
             children: data.map((e) => generateBulletList(e)).toList()
         );
       }else{
         if(answer.trim()=='')
           return Container(child: Text('-'),width: double.infinity);
         else
           return Padding(padding:EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0), child:  Container(child:Text(answer,style: TextStyle(fontStyle: FontStyle.italic)),width: double.infinity));
       }
     }
   }
   Widget generateAnswers(String answer, int lessonID, int answerNo){
     List<String> data = answer.split('~');
     List<String> labelData = getLabelAnswers(lessonID, answerNo);

     if(data.length>1){
       for(int i=0;i<labelData.length;i++){
         data[i] = labelData[i] + ' - ' + data[i];
       }
       return Column(
           children: data.map((e) => generateBulletList(e)).toList()
       );
     }else{
       if(answer.trim()=='')
         return Container(child: Text('-'),width: double.infinity);
       else
         return Padding(padding:EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0), child:  Container(child:Text(answer,style: TextStyle(fontStyle: FontStyle.italic)),width: double.infinity));
      }
   }
   Container generateBulletList(String value){
     return Container(child:Bullet(text: value,style: TextStyle(fontStyle: FontStyle.italic)),width: double.infinity);
   }
   Widget subHeader(String title, PdfColor colorValue){
     return Container(
         width: double.infinity,
         decoration: BoxDecoration(color: colorValue),
         child:Padding(
             padding: EdgeInsets.all(10),
             child:Text(title))
     );
   }
   Header createHeader(String studentName){
     return Header(
         child: Expanded(child:Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(width: double.infinity,child:Text('SOL1: SCHOOL OF LEADERS I',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center)),
               SizedBox(width: double.infinity,child:Text('PASTORED IN HIS LOVE | THE POWER OF VISION',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
               SizedBox(width: double.infinity,child:Text('Question And Answers Activity Result',style: TextStyle(fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),textAlign: TextAlign.center)),
               SizedBox(height: 20.0),
               Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Name: ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),textAlign: TextAlign.left),
                     Expanded(child:Text(studentName,style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.left)),
                     Text('Date Created: ', textAlign: TextAlign.right, style: TextStyle(fontStyle: FontStyle.italic)),
                     Text(DateTime.now().toString().substring(0,19),textAlign: TextAlign.right)
                   ]
               )
             ]
         ))
     );
   }
   Widget generateQuestionnaire(int lessonID, int question){
     late List<lessonFormatter> _data = [
       lessonFormatter(lessonID: 1, questions: [
         '1. According to 1 Samuel 16:18, write down three of David\'s qualities',
         '2. By whom and for whom were all things created? (John 1:2-3)',
         '3. According to Isaiah 9:6, write down three attributes of Jesus.',
         '4. Write at least one of Jesus\' attributes found in the following verses: ',
         '5. According to Hebrews 4:14-15, how is Jesus different from any other person?',
         '6. According to Galatians 3:13, what did Jesus accomplish for us?',
         '7. According to John 10:10, why did Jesus come into the world? ',
         '8. According to John 14:6, Jesus is: ',
         '9. According to John 7:38, how should we believe in Jesus?',
         '']),
       lessonFormatter(lessonID: 2, questions: [
         '1. Why is it important to have a personal devotional life in your walk with Christ?',
         '2. Write down the six characteristics found in David\'s devotional life:',
         '3. What is a devotional?',
         '4. Write down the six characteristics of an effective devotional: ',
         '5. Mention the two natures that coexist within us:',
         '6. What does "being in God\'s Presence" mean to you?',
         '7. Do you daily praise God for what He does in your life? How do you praise Him?',
         '8. Mention three characteristics of prayer:',
         '9. What does praying in the Name of Jesus mean to you?',
         '10. How could having a personal Book of Dreams help you?']),
       lessonFormatter(lessonID: 3, questions: [
         '1. How would you define praise and its purpose?',
         '2. While God was busy with creation, what were the angels doing?',
         '3. Given that Jesus\' nature is holy, how should you come to Him?',
         '4. Why did David pretend to be insane when he came into the palace of King Achish?',
         '5. What was the difference between Mordecai\'s attitude and Esther\'s attitude in relation to the news about the destruction of the people of Israel?',
         '6. What was Jehoshaphat\'s reaction when all hope seemed to be lost in the face of great danger? And what were the results?',
         '7. What can you say about praise and its benefits?',
         '8. When and how can you praise God? Who is supposed to praise Him?',
         '9. Write a personal commentary about worship:',
         '10. Write down the different ways you know to worship God:']),
       lessonFormatter(lessonID: 4, questions: [
         '1. Who do you turn to when you are facing difficulties in your life? Share your experience.',
         '2. What can we learn from David\'s attitude during difficult times?',
         '3. Write about your experiences with the old nature. How do you confront it? How do you defeat it?',
         '4. Why is it said that the life of a Christian is like the land of Canaan?',
         '5. What was God\'s purpose in creating man? Did He change His mind when man sinned?',
         '6. Why must we clothe ourselves with the new nature?',
         '7. Write about Jacob\'s experience',
         '8. Using God\'s Word, write down the circumstances in which we are able to be more than conquerors.',
         '',
         '']),
       lessonFormatter(lessonID: 5, questions: [
         '1. What do people worry about most these days? Write about your own experience.',
         '2. What was the consequence for Egypt when they hardened their heart towards God?',
         '3. Who is your enemy? Use Ezekiel 28:12-19 to support your answer.',
         '4. What is Satan\'s purpose for man? Write down the adversary\'s characteristics.',
         '5. When and by whom was Satan completely destroyed? Explain your answer.',
         '6. Write about a time when you used your authority and bound the strong man.',
         '7. Explain what it means to you to live a life of integrity.',
         '8. According to the Word, list the steps that prepare us for freedom.',
         '',
         '']),
       lessonFormatter(lessonID: 6, questions: [
         '1. What was Jesus\' mission when He came to this earth? Why could only He carry it out?',
         '2. How is Israel\'s experience of the Passover in Egypt linked to the power of the Blood of Jesus in your life?',
         '3. List the five confessions of victory over the enemy.',
         '4. Write about the main characteristic of each confession of victory.',
         '5. What place does the Blood of Jesus occupy in your Christian life?',
         '',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 7, questions: [
         '1. How do you view the Word of God or the Bible as being part of your Christian life?',
         '2. Describe and explain the role of the Word of God as spiritual food:',
         '3. What does the phrase "authority of the Word" mean to you?',
         '4. Who is the true author of the Bible?',
         '5. How does the Bible help us to know Jesus?',
         '6. How does the Bible establish us in the kingdom of God?',
         '7. How does the Bible help us to reach salvation?',
         '8. Write down the five points relating to our growth in the Word?',
         '9. Write down the five points relating to the power of the Bible:',
         '10. What does the Bible do in the believer?']),
       lessonFormatter(lessonID: 8, questions: [
         '1. What happened inside you when you met the Holy Spirit?',
         '2. What can be said about the presence of the Holy Spirit in the life of Jesus?',
         '3. What link can you see between Joel\'s prophecy and what happened in the upper room?',
         '4. What is the Holy Spirit\'s role in the life of a Christian?',
         '5. What is the Spirit\'s deposit for you?',
         '6. Write down the eight distinctive points of the ministry of the Holy Spirit:',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 9, questions: [
         '1. What is the relationship between David and God\'s comprehensive blessing?',
         '2. What do you understand by the phrase "God is good"?',
         '3. Explain the context within which God blesses His children:',
         '4. List the six characteristics of Abel\'s offering:',
         '5. Explain the verses Luke 7:44-48, in relation with your own personal experience.',
         '6. Do you believe you have learnt to tithe according to God\'s teaching?',
         '7. List the nine key teachings on the offering:',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 10, questions: [
         '1. Explain what Jesus was referring to when He spoke about the Church.',
         '2. Write about your personal experience of the revelation of the Cross.',
         '3. What does a "change of nature" mean?',
         '4. Do you think of yourself as God\'s fellow worker? Explain.',
         '5. List the steps on the ladder of success',
         '6. How does the ladder of success relate to the Great Commission?',
         '7. How does the ladder of success relate to the five ministries?',
         '8. Back up why G12 is said to be a Vision of compassion.',
         '',
         '']),
       lessonFormatter(lessonID: 11, questions: [
         '1. According to this lesson, vision is:',
         '2. Fill in and memorize the following Bible passage: Habakkuk 2: 2-3 (NASB).',
         '3. Jesus was God\'s redemptive dream for the world because:',
         '4. How many people did Jesus disciple?',
         '5. What characteristic must a person have if they want to become a pillar of Christianity?',
         '6. Write out and memorize Ephesians 4:13. ',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 12, questions: [
         '1. Describe the birth of G12: ',
         '2. What are the key requirements of the Vision?',
         '3. Write down the five objectives of an Encounter: ',
         '4. Pray the following prayer: "Lord, thank you because the souls I will win and the disciples I will consolidate will he as numerous as the sand on the seashore." After you have made this declaration for a few days and have begun evangelizing, describe your experience, in your own words: ',
         '5. Match an answer between the words in the left-hand column and the definitions in the right-hand column. ',
         '',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 13, questions: [
         '1. Complete the following Bible passage: ',
         '2. What plans did Jesus unveil for the foundation of His Church?',
         '3. Mark true (T) or false (F): ',
         '4. Match an answer between the following statements and their corresponding verses from Acts 10:',
         '5. List the teachings that Jesus gave to His disciples in Luke 14:',
         '6. List at least 5 ways that love for the sheep is shown:',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 14, questions: [
         '1. Write down the key verse for each instruction: ',
         '2. Write out 2 Corinthians 4:18:',
         '3. Answer the following questions, taken from Ecclesiastes 1:15 and John 1:19:',
         '4. Explain simply the steps we should take to become the best cell leader:',
         '5. Are you already part of a team of 12?',
         'If yes, how does being part of a 12 bless your life?',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 15, questions: [
         '1. Looking back at the lesson, number the principles that Jesus established for the formation of your team of 12:',
         '2. According to Luke 6:11-12, how did Jesus choose His 12?',
         '3. Choose the letter of the correct answer:',
         '4. Fill in the gaps:',
         '5. Using Mark 3:16-19, write the names of the 12 apostles:',
         '6. Briefly explain the principles Jesus taught His disciples:',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 16, questions: [
         '1. Write True (T) or False (F):',
         '2. Complete and memorize:',
         '3. How can a successful leader move the spiritual realm when they speak?',
         '4. Fill in the table with the characteristics of a successful leader:',
         '5. Describe the most significant characteristics of your leader:',
         '',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 17, questions: [
         '1. Fill in the gaps:',
         '2. According to Luke 6:11-12, how did Jesus choose His 12?',
         '3. Choose the letter of the correct answer:',
         '4. What characteristics does a servant-hearted person possess?',
         '5. Explain the advice for winning:',
         '6. Put an X next to the characteristics that are evident in a soul winner:',
         '7. Fill in the gaps:',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 18, questions: [
         '1. Define the word "cell" (in a church context):',
         '2. Briefly write about your experience in a cell group:',
         '3. List three characteristics of David as a leader:',
         '4. Explain the following concepts in reference to cell groups:',
         '5. List the purposes of the cell:',
         '6. To have the ideal cell:',
         '7. Explain the prayer of three:',
         '',
         '',
         '']),
       lessonFormatter(lessonID:19, questions: [
         '1. What is consolidation?',
         '2. What do we learn about consolidation from the following verses?',
         '3. Fill in the gaps and memorize the verse:',
         '4. Explain the principles of consolidation in your own words:',
         '5. How can you begin to consolidate?',
         '',
         '',
         '',
         '',
         '']),
       lessonFormatter(lessonID: 20, questions: [
         '1. What does the seal on the forehead represent?',
         '2. According to Isaiah 55:10-11, explain what a goal is:',
         '3. Fill in the gaps:',
         '4. Complete the sentences:',
         '5. Relate each phase to the corresponding step in the ladder of success:',
         '',
         '',
         '',
         '',
         '']),
     ];
     return Container(child:Text(_data[lessonID-1].questions[question-1]),width: double.infinity);
   }

   Future<void> savePdfFile(String fileName, Uint8List byteList) async {
    final output = await getTemporaryDirectory();
    var filePath = '${output.path}/$fileName.pdf';
    final file = File(filePath);
    await file.writeAsBytes(byteList);
    await OpenFile.open(filePath);
  }




}