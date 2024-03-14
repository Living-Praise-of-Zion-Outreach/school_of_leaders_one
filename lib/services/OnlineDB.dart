import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:school_of_leaders_one/classes/sql/clsSqlLesson.dart';
import 'package:school_of_leaders_one/models/modelDailyVerse.dart';
import 'package:school_of_leaders_one/classes/sql/sqlHelper.dart';

class OnlineDB{
  Future<String> addUsers() async {
    var result = await FirebaseFirestore.instance
        .collection('Users')
        .add({
        'name':'collection list'
        });
        //addSubCollectionLessons(lessonMap, result.id);
    return result.id;
  }

  Future addLessons(Map<String,dynamic> lessonMap, String id) async{
    CollectionReference users = FirebaseFirestore.instance.collection('Users');
     return await users.doc(id).collection('lessons').add(lessonMap);
  }
  Future addDailyVerses(Map<String,dynamic> versesMap, String id) async{
    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    return await users.doc(id).collection('daily_verses').add(versesMap);
  }

  Future<bool> importData(String id) async{
    print('mao ni ang data->' + id);
    bool blnFound = false;
    var dataLesson = await FirebaseFirestore.instance
        .collection('Users')
        .doc(id)
        .collection('lessons')
        .orderBy('lessonID',descending: false)
        .get();
    var dataDailyVerse = await FirebaseFirestore.instance
        .collection('Users')
        .doc(id)
        .collection('daily_verses')
        .orderBy('dailyVerseID',descending: false)
        .get();

    if(dataLesson.size>0 || dataDailyVerse.size>0) blnFound=true;

    List<clsSqlLesson> _lesson = List.from(dataLesson.docs.map((doc)=>clsSqlLesson.fromSnapshot(doc)));
    List<modelDailyVerse> _daily = List.from(dataDailyVerse.docs.map((doc)=>modelDailyVerse.fromSnapshot(doc)));

    if(dataLesson.size>0)  sqlHelper.resetLesson();
    if(dataDailyVerse.size>0) sqlHelper.resetDailyVerse();

    for(int i=0;i<_lesson.length;i++){
      late Map<String, dynamic> row;
      row = {
        'answer_1' : _lesson[i].answer_1,
        'answer_2' : _lesson[i].answer_2,
        'answer_3' : _lesson[i].answer_3,
        'answer_4' : _lesson[i].answer_4,
        'answer_5' : _lesson[i].answer_5,
        'answer_6' : _lesson[i].answer_6,
        'answer_7' : _lesson[i].answer_7,
        'answer_8' : _lesson[i].answer_8,
        'answer_9' : _lesson[i].answer_9,
        'answer_10' : _lesson[i].answer_10,
        'createdAt' : _lesson[i].createdAt,
        'updatedAt' : _lesson[i].updatedAt,
        'maxAnswers' : _lesson[i].maxAnswers,
        'completionRate' : _lesson[i].completionRate
      };
      sqlHelper.importLessons(_lesson[i].lessonID, row);
    }
    for(int a=0;a<_daily.length;a++){
      late Map<String, dynamic> row;
      row = {
        'status': _daily[a].status,
        'max_verse': _daily[a].max_verse,
        'devo_rhema': _daily[a].devo_rhema,
        'devo_commands': _daily[a].devo_commands,
        'devo_warnings': _daily[a].devo_warnings,
        'devo_promises': _daily[a].devo_promises,
        'devo_application': _daily[a].devo_application,
        'completion_rate': _daily[a].completion_rate,
        'createdDt': _daily[a].createdDt,
        'updateDt': _daily[a].updateDt,
        'marker': _daily[a].marker,
      };
      sqlHelper.importDailyVerse(_daily[a].dailyVerseID, row);
    }

    return blnFound;
  }


}