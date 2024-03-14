import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphBoxFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import '../../../../classes/clsAttributes.dart';
import '../../../../classes/clsListItemAttributes.dart';
import '../../../../classes/clsListItemTextSpanAttributes.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../Conclusion.dart';
import '../../Headings.dart';
import '../../ListBoxWrapper.dart';
import '../../ListTextSpanBoxWrapper.dart';
import '../../SubHeadings.dart';
import '../../TitlePage.dart';

class Vision04 extends StatelessWidget {
  final String colorTheme;
  final double fontSize;
  final String language;
  const Vision04({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To recognize the importance of the basic principles of visualization and apply them in order to reach the multitudes.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To recognize the importance of being committed to the Vision, to know it and apply it with diligence.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To understand some of the principles to help you become a better leader.',fontSize: fontSize),
    ];

    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'The G12 Vision is the tool that God has given to His children to bring revival to the world, possibly the last and greatest in history. For centuries, the Lord has been preparing His Church for this moment. He has awakened the hearts of whole families with a great desire to understand the vision and to put it into practice diligently, strategically and efficiently, because they want to be useful in the work of God.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> visualize_paragraph_01 = [
      clsRichTextFormatter(content:'"He took him outside and said, "Look up at the heavens and count the stars - if indeed you can count them." Then he said to him, "So shall your offspring be. Abram believed the Lord, and he credited it to him as righteousness" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Genesis 15:5-6). Abraham was not slow in taking hold of the promise; every night he would gaze at the stars, imagining how his descendants would be. This exercise fed his faith until God fulfilled His promise. As these images flooded his mind, it was easy to confess them with his mouth. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nScientists have proven that what a person manages to see in their mind will be perceived by their nervous system as if it had already happened, as if it were a reality. If your vision is not clear, something is not right in your faith. It may be fear, doubt, traumatic memories or some argument that you have not yet cancelled, that the adversary is using against you. Growth comes as a result of what you have conceived in the secret place of prayer, what you have seen with your eyes of faith and confessed with your lips. Growth first happens on the inside, as we believe in our heart that it is a reality; then God does the rest.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

    ];

    List<clsRichTextFormatter> paint_paragraph_01 = [
      clsRichTextFormatter(content:'"Now faith is being sure of what we hope for and certain of what we do not see" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Hebrews 11:1). God will bring life to the pictures that we paint in our minds. Whatever you want to conquer in the natural realm should first be visualized in the spiritual realm. As you do this, you will receive the assurance that the miracle is already conquered. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\n"So we fix our eyes not on what is seen, but on what is unseen. For what is seen is temporary, but what is unseen is eternal"  ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(2 Corinthians 4:18).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> paint_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'Visualize the size of your ministry.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Have very clear images in your mind.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Invest time alone with God, because in this intimacy, the images you receive in your mind will increase in importance.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Include all your disciples in the vision and help them to also become visionaries.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> commit_paragraph_01 = [
      clsRichTextFormatter(content:'Do not think that by running faster you will go further.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> commit_paragraph_02 = [
      clsRichTextFormatter(content:'Though a pregnant woman may wish for her baby to be born ahead of time, she knows that there is a time of waiting. Accelerating this process would kill the baby while delaying it would put both the mother and her child at risk. Solomon said that just as we ignore the way that bones form in a woman\'s womb, we also ignore the work of God. Jesus took the time necessary to form His team of twelve; the fruit of which has lasted throughout the centuries.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nDo the whole vision through the team of twelve',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\n"What is twisted cannot be straightened; what is lacking cannot be counted ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Ecclesiastes 1:15). What is complete? Twelve. A clock with eleven numbers is lacking; if there are not twelve numbers, it cannot be counted. The daytime is made up of twelve hours. Jesus said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Are there not twelve hours of daylight?" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(John 11:9). If a leader does not have their twelve disciples, their team is incomplete. What is incomplete cannot be counted. Jesus\' contact with the multitudes was sporadic: one day he was with one group, another day he was with a different group. However, the only group that Jesus did not change was His twelve.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nGod gave us the ability to focus on twelve, and as a result we now lead multitudes; our success was not dependent on any other skill set. If someone builds a house, they need foundations. This is why the Lord tells us to focus, to enter through the narrow gate, and to leave everything else aside. Jesus did it this way. He left everything aside: His glory, His greatness, His deity, to come and live with us. He was made man so that He could focus on twelve; He spent the largest part of His ministerial life with them, and invested almost seventy per cent of His time in them. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nI believe that a believer\'s greatest challenge is the formation of their team of twelve. Their prayers should be directed towards forming this fundamental team, believing that to him who asks, it will be given, and he who seeks, will find their twelve (Matthew 7:7).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe leader: an expert in all the steps of the Vision',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nAs a leader, you should learn each step of the Vision in detail. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nTo consolidate someone, you must first win them. If we do not win, we cannot consolidate. If we do not consolidate, we cannot disciple i.e. train in the School of Leaders. If we do not train, we cannot send. The foundation of the Vision is winning. Therefore, we need to be expert soul winners.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> decide_paragraph_01 = [
      clsRichTextFormatter(content:'The teaching and training received at Training for your destiny, will enable a believer to open a cell, after having finished Level 2. You may be asking what steps to take:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> decide_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'Teach in season and out of season. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'There are times when a person will require extra time from their leader, perhaps for some advice, some special ministry, or a visit. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'View every member of your cell as a potential leader. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'If you can see them as a leader, you will treat them accordingly. The faith of a leader will determine their disciples\' level of commitment to the vision.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Motivate with your words. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Our words affect the spiritual realm - heaven responds to every word we speak. Words have power to change the appearance of things.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Always work with goals. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Involve the whole group. Each person should know how much they expect to multiply by and how many cells they expect to be born from the evangelistic cell in a year. Once you have your twelve, the goal is for each of them to open their own cell within one year. Supposing you had already chosen your twelve out of your evangelistic cell (the cell that grows continually), you should start to work with this group of twelve in a closed cell. As a result, you no longer continue leading evangelistic cells; instead, you dedicate yourself to helping each person in your team of twelve gather their own twelve. Their success is your success. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Do spiritual warfare. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Without spiritual warfare, souls are not won. If you preach without having prepared the atmosphere, nothing will happen - hearts will remain closed. Specific prayer for thirty days opens doors; each of your disciples should personally pray for potential new people in this way. After one month, they should try to arrange a meeting with each of those people, preferably separately. The purpose of this meeting is to share the gospel of Jesus.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Do not forget to always have an empty chair. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'You should have an empty chair in every meeting and pray that someone will sit in it in the following meeting. All of those attending the cell group will pray for this goal, and in so doing we teach our group how to pray for evangelism.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'The revelation of the Vision of the government of twelve is for those who wish to experience rivers of fruitfulness. Only those who determine to faithfully carry it out and continuously invest time in intimacy with the Lord, will capture the powerful revival that he longs to bring to your life, your family and your ministry.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Expanded(
            child: RawScrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitlePage(attributes: clsAttributes(title_one: 'THE VISION OF',title_two: 'THE GOVERNMENT \nOF TWELVE \n(G12)',scriptures: '"He took him outside and said, "Look up at the heavens and count the stars-if indeed you can count them." Then he said to him, "So shall your offspring be." Abram believed the Lord, and he credited it to him as righteousness" (Genesis 15:5-6).',lessonNo: '4',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_01, marginGap: 50),
                      SubHeadings(content: '1. VISUALIZE THE GROWTH OF YOUR MINISTRY',fontSize: fontSize),
                      ParagraphFormatter(richTextData: visualize_paragraph_01),
                      SubHeadings(content: '2. PAINT THE PICTURE OF BLESSING IN YOUR MIND',fontSize: fontSize),
                      ParagraphFormatter(richTextData: paint_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: paint_paragraph_02),
                      SubHeadings(content: '3. COMMIT TO FAITHFULLY IMPLEMENTING THE VISION',fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: commit_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: commit_paragraph_02),
                      SubHeadings(content: '4. DECIDE TO BE THE BEST CELL LEADER',fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: decide_paragraph_01, marginGap: 50),
                      ListTextSpanBoxWrapper(listItemData: decide_paragraph_02),
                      Conclusion(fontSize: fontSize, colorTheme: colorTheme,language: language),
                      ParagraphBoxFormatter(richTextData: conclusion_paragraph_01),
                      SizedBox(height: 150)
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
