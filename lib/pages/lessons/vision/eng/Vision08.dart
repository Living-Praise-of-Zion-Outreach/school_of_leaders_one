import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsAttributes.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/Conclusion.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ListBoxWrapper.dart';
import '../../../../classes/clsListItemAttributes.dart';
import '../../../../classes/clsListItemTextSpanAttributes.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../Headings.dart';
import '../../ListTextSpanBoxWrapper.dart';
import '../../ParagraphBoxFormatter.dart';
import '../../SubHeadings.dart';
import '../../TitlePage.dart';

class Vision08 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Vision08({super.key,required this.colorTheme,required this.fontSize,required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To understand what a cell group is.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To learn the purpose of cells groups.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To understand the ideal principles of a cell group.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: 'To learn the value of being faithful in the responsibilities of a cell leader.',fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'Cells are one of the smallest microorganisms in any living organism. When it comes to church cells, it is interesting to note that although they may start small, they can easily multiply. We started our church with a cell group of just eight people meeting in our living room. We worked strategically so that other cell groups could come out of this original cell; we were able to see that the primary cell group sets the standard for the others. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'There is always a cell that leads the way and the other cells group should follow the parameters they establish.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> cell_group_paragraph_01 = [
      clsRichTextFormatter(content:'The cell is our first experience; it is our first challenge of responsibility.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> cell_group_paragraph_02 = [
      clsRichTextFormatter(content:'Although I started with one cell group, the Lord saw that I was faithful and extended my area of responsibility. My heart\'s desire for each meeting was that those who came could connect with Jesus so that their needs could be met. I spoke to them from the Word of God in a simple, clear way so that they could achieve the desires of their hearts. The Lord kept on doing extraordinary miracles in the people which motivated them to invite their closest friends.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> david_paragraph_01 = [
      clsRichTextFormatter(content:'David is an example of a great leader in history, but his leadership did not start with God anointing him and telling him: "I now make you king over Israel." Not at all; it all began with his faithfulness to a small responsibility: looking after his father\'s sheep. David was diligent in this responsibility the entire time he was with that small flock; he did not lose even one sheep, he took care of those that were ill, he constantly protected them, and he faced wild animals for them, risking his own life to defend the sheep. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> david_paragraph_02 = [
      clsRichTextFormatter(content:'His faithfulness in this small responsibility allowed God to trust Him as king over the nation of Israel.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> definition_paragraph_01 = [
      clsRichTextFormatter(content:'Cells are small groups of people who meet at least once a week in an effort to develop all-round growth centered on the Word of God. These groups consist of a host who provides the location, a leader who is trained to lead the cell, an aide who is the leader\'s right hand, participants who are active members and guests who are invited to the meeting. Cells are small centers for studying the Bible in a simple and practical way, where those who attend are built up, including those who are won for Christ week after week. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe principle of cells originates from the Early Church, whose congregations grew through cells. This is why the Word of God says:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> definition_paragraph_02 = [
      clsRichTextFormatter(content:'"So the word of God spread. The number of disciples in Jerusalem increased rapidly... You know that I have not hesitated to preach anything that would be helpful to you but have taught you publicly and from house to house. I have declared to both Jews and Greeks that they must turn to God in repentance and have faith in our Lord Jesus" (Acts 6:7, 20:20-21).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> definition_paragraph_03 = [
      clsRichTextFormatter(content:'Cell groups make personal pastoring possible',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe Lord Jesus always visited homes. He visited the home of Zacchaeus who was then saved; He visited Peter\'s home and healed his mother-in-law; He visited Jairus\' house and his daughter was brought back to life; He visited the home of Simon, the Pharisee, and a sinful woman became a follower of Jesus. He also included Lazarus and his sisters, Martha and Mary, in His close nucleus of friends; as a result of this friendship, Lazarus came back to life. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nJesus was always thinking about meeting the needs of every person cellular vision allows us to do what Jesus did; even the simplest and He developed His ministry through contact with people. The believer can gather their family so that the cell leader can directly pastor each person.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nCells groups are the mine from which you extract your twelve leaders',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe cell is an effective way of training and selecting our team of twelve. From those who meet weekly in a house, an office or a workplace, etc., we can select those most successful at producing fruit to form part of our team of leaders who will support us in the ministry (Luke 6:12-17).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nJesus won twelve men and reproduced His character in them, knowing that they would be His representatives to the whole world. He passed on the vision to the twelve so that at the right time, they would pass it on to another twelve, achieving multiplication.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> importance_paragraph_01 = [
      clsRichTextFormatter(content:'During his reign David sent for the Ark of the Covenant, representing the Presence of God among the people, to be brought to Jerusalem. On the way, Uzzah the Levite stretched out his hand to stop it falling. But God struck him and he died because he had not shown the proper respect. David was so sad that he did not want to take the Ark to Jerusalem. Obed-Edom offered his home as a place to house the Ark and David consented. The Ark was only there for three months but God blessed him and he prospered greatly.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> importance_paragraph_02 = [
      clsRichTextFormatter(content:'Opening a house for a cell meeting is the same as taking the Ark of God to that home.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> purpose_in_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'To open the door for our families and friends to be saved ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Acts 10).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'To help people to have contact with leaders. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"While Jesus was having dinner at Matthew\'s house, many tax collectors and "sinners" came and ate with him and his disciples"  ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Matthew 9:10).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'To provide the opportunity for people to receive a touch from God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"When they could not find a way to do this because of the crowd, they went up on the roof and lowered him on his mat through the tiles into the middle of the crowd, right in front of Jesus. When Jesus saw their faith, he said, "Friend, your sins are forgiven" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Luke 5:19-20).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> ideal_in_paragraph_01 = [
      clsRichTextFormatter(content:'To have the ideal cell group meeting we should:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> ideal_in_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Prepare the message for each homogeneous group, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'be it men, women, youth or children, so that they receive ministry according to their needs.',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'The host and the leader should be committed to the Vision. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'\n\nThis will allow goals to be met, individual responsibilities to be assumed, teamwork to be developed, and strategies to be sought out.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> ideal_in_paragraph_03 = [
      clsRichTextFormatter(content:'Winning through cell groups',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nAs cells are the primary way the church reaches the community with the Gospel of Jesus, most decisions will be made through the cells. Some strategies that will accelerate the harvest of souls are:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nPrayer of three for a month',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWhy did Satan inspire a plan in Daniel\'s enemies to stop him praying for one month (Daniel 6:7)? It would have caused spiritual death in the prophet. Just as not praying brings death, praying with perseverance for thirty days releases life. If we commit for one month to pray for people who are not yet believers, the Spirit of God will extend His mercy and give them life.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nA leader who wants to start a cell group finds another two people who will join them in prayer. Each of the group chooses three people they know that they want to pray for so that they can be saved. Every member of the group writes down the three names the others choose (nine in total). They will probably be friends, people from an hour over the course of four weeks, to pray specifically for the work, from where you live, or from your past. Meet once a week for conversion of these people.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nFriendship and evangelism',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nAfter the thirty days of prayer, contact each person you have been praying for. The goal is to show interest in their wellbeing and to share God\'s love for their lives. Share and explain each of the ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Four Precious Opportunities" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'with them.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];




    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];


    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'Given that there are generally many people in Sunday meetings and many people can be neglected, the work in weekly cells meets their need. There people are motivated to attend an encounter and to later join the School of Leaders. knowing that they will then be able to lead their own cell; in this way, they too will become channels of blessings to others.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nCell groups are the backbone of the Church.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'BLESSING',title_two: 'THROUGH THE\nCELL GROUP',scriptures: '"So the word of God spread. The number of disciples in Jerusalem increased rapidly, and a large number of priests became obedient to the faith" (Acts 6:7).',lessonNo: '8',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      SubHeadings(content: '1. THE CELL GROUP IS OUR FIRST EXPERIENCE',fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: cell_group_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: cell_group_paragraph_02),
                      SubHeadings(content: '2. DAVID, AN EXCELLENT LEADER',fontSize: fontSize),
                      ParagraphFormatter(richTextData: david_paragraph_01),
                      ParagraphCenterFormatter(richTextData: david_paragraph_02, marginGap: 50),
                      SubHeadings(content: '3. THE DEFINITION OF A CELL GROUP',fontSize: fontSize),
                      ParagraphFormatter(richTextData: definition_paragraph_01),
                      ParagraphCenterFormatter(richTextData: definition_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: definition_paragraph_03),
                      SubHeadings(content: '4. THE IMPORTANCE OF THE CELLULAR VISION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: importance_paragraph_01),
                      ParagraphCenterFormatter(richTextData: importance_paragraph_02, marginGap: 50),
                      SubHeadings(content: '5. THE PURPOSE OF CELL GROUPS',fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: purpose_in_paragraph_01),
                      SubHeadings(content: '6. THE IDEAL CELL GROUP',fontSize: fontSize),
                      ParagraphFormatter(richTextData: ideal_in_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: ideal_in_paragraph_02),
                      ParagraphFormatter(richTextData: ideal_in_paragraph_03),
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
