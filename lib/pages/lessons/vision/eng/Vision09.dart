import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsAttributes.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/Conclusion.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterCenterFormatter.dart';
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

class Vision09 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Vision09({super.key,required this.colorTheme,required this.fontSize,required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To learn some principles of leadership through the example of the Apostle Paul.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To understand what consolidation is.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To learn to apply the fundamentals of the process of Consolidation.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: 'To see the principle of Consolidation through the ministry of the Apostles.',fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'Consolidation is the stage following conversion when the new believer receives constant care until the character of Christ is fully formed in them, to such an extent that the purpose of God, of ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"bearing fruit that lasts," ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'is fulfilled in their life.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'The consolidation process allows cell leaders to discover the potential in each member, awakening their ability to reproduce themselves in others while sharing and reinforcing the message of Christ.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> paul_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Paul proclaimed, trained and taught ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Colossians 1:28-29). ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'He knew the calling on his life from the moment of his conversion. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Now get up and stand on your feet. I have appeared to you to appoint you as a servant and as a witness of what you have seen of me and what I will show you. I will rescue you from your own people and from the Gentiles. I am sending you to them to open their eyes and turn them from darkness to light, and from the power of Satan to God, so that they may receive forgiveness of sins and a place among those who are sanctified by faith in me" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Acts 26:16-18).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'He was faithful to the vision God gave him. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"So then, King Agrippa, I was not disobedient to the vision from heaven. First to those in Damascus, then to those in Jerusalem and in all Judea, and to the Gentiles also, I preached that they should repent and turn to God and prove their repentance by their deeds" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Acts 26:19-20).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'He preached a message of repentance. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"In the past God overlooked such ignorance, but now he commands all people everywhere to repent" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Acts 17:30).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'It was his goal to become their father through the gospel. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"For in Christ Jesus I became your father through the gospel" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(1 Corinthians 4:15).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> purpose_paragraph_01 = [
      clsRichTextFormatter(content:'Consolidation does away with the floating mass that moves from church to church. When we motivate new believers to join a small group, they are strengthened in their faith and become true disciples of Jesus.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> purpose_paragraph_02 = [
      clsRichTextFormatter(content:'In this way we teach them how to firstly strengthen themselves in the Lord, and then how to get involved in the ministry, becoming a channel of blessing to others.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> effective_paragraph_01 = [
      clsRichTextFormatter(content:'Consolidation needs to relate to the act of winning. Interceding in prayer for someone to be saved is very different from happening to be behind a person when they decide to accept Jesus in their heart. We can compare this to the months a mother waits for her baby to be born and the part she plays in their subsequent growth and development. She knows that giving birth is only the first step to bringing up her child; the work that follows requires dedication, attention and patience. Just as the mother is responsible for taking care of her baby, the person who wins a new believer for the Lord should be responsible for taking care of them. For nine months, the mother fills her heart with dreams about her baby; when born, a much closer relationship is formed between her and her child.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> effective_paragraph_02 = [
      clsRichTextFormatter(content:'Before we win someone for Jesus, they start to take shape in the spiritual world, through our prayer and patience. The process continues until their spirit is born into eternal life when they accept Jesus in their heart as Lord and Savior.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> becoming_paragraph_01 = [
      clsRichTextFormatter(content:'"Even though you have ten thousand guardians in Christ, you do not have many fathers, for in Christ Jesus I became your father through the gospel" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(1 Corinthians 4:15). Paul taught us that the work of a consolidator is being a father and a guardian, and a guardian, or a nurse is someone who is employed to take care of babies. The apostle wanted to teach his spiritual children that though they had ten thousand people consolidating them, only one father had brought them to the Lord\'s feet, and that father was him.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> becoming_paragraph_02 = [
      clsRichTextFormatter(content:'When someone becomes a Christian they need to be contacted immediately by a consolidator. The new believer will open their heart and begin to express themselves, providing the opportunity for the consolidator to counter arguments, disarm prejudices, guide, help and release life to them.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> becoming_paragraph_03 = [
      clsRichTextFormatter(content:'Consolidation is a process that requires time and concentration, and it varies depending on the person you are consolidating. It is important that early on, every new believer knows that Jesus has provided a new way for their life; therefore, take the time to teach them the Four Precious Opportunities.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> principles_paragraph_01 = [
      clsRichTextFormatter(content:'"Those who accepted his message were baptized, and about three thousand were added to their number that day. They devoted themselves to the apostles\' teaching and to the fellowship, to the breaking of bread and to prayer" (Acts 2:41-42).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> principles_paragraph_02 = [
      clsRichTextFormatter(content:'Verify their decision',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nConsolidation in the early church was effective because they first helped people to understand their spiritual condition, they then instructed them, baptized all who accepted Jesus and collected their details. We can conclude that details were collected because the Bible refers to the number of people added to the Church, implying that they kept a record of the new believers.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nDevote yourself to the apostles\' teaching',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe apostles\' teaching forms the foundation for the believer\'s spiritual growth. It consists of three ingredients:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> principles_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'First, spiritual milk ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Like newborn babies, crave pure spiritual milk, so that by it you may grow up in your salvation" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(1 Peter 2:2).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Second, the bread of the Word of God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'The Lord taught us: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"It is written: \'Man does not live on bread alone, but on every word that comes from the mouth of God" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Matthew 4:4). A baby cannot swallow bread because they are not ready, they I can only drink milk. However, when they reach a certain level of growth in their natural development, you can add bread to their diet.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Third, solid food. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'The Word says that this is for those who have reached a certain level of maturity and are able to distinguish good from evil (Hebrews 5:14). People get to this level through various ways. Firstly, through understanding certain topics and principles in God\'s Word, secondly, through being able to get the most out of what is read in Scripture, and thirdly through meeting with others that have a deep knowledge of the Word, pairing up and sharing insights into its truths, its wise content, and its rhema word on both an individual and a group basis. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> principles_paragraph_04 = [
      clsRichTextFormatter(content:'Fellowship',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nGod created us as social beings, so He rejoices when we have correct relationships with one another. A consolidator\'s success depends on the relationship between them and the person being consolidated. It is an ongoing relationship, similar to that between a parent and their child. Our life depends on the relationships we manage to develop. The early church developed this practice, resulting in true companionship; this is mainly established in small groups. It is possible for someone to come to a large church meeting and leave without anyone even noticing. However, we are able to get to know each other through cells where we notice who is or is not there. As cells promote closer contacts, we find it easier to tell who is present or missing from the larger meetings. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nShare in the breaking of bread',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe early church believers were guided by God to have periodic small group meetings which are now known as cells, nuclei or family groups. These meetings took place in houses where they shared spiritual bread as well as real bread. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Every day they continued to meet together in the temple courts. They broke bread in their homes and ate together with glad and sincere hearts, praising God and enjoying the favor of all the people. And the Lord added to their number daily those who were being saved" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Acts 2:46-47).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nPersevere in prayer',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nPrayer needs to be a lifestyle for every believer. Prayer makes sure we stay on the correct path. Not praying would imply a break in our communication with God. Jesus said that we should watch and pray. The apostles always made every effort to ensure that the whole church maintained a constant life of prayer.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nApplying these principles with every believer brought incredible success. They retained the multitudes because they verified their decision, taught them, invested in fellowship and led them into a life of holiness and prayer.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];



    List<clsRichTextFormatter> habits_paragraph_01 = [
      clsRichTextFormatter(content:'Consolidation is more than a method or a training program; the heart of it is closely connected to the heart of God. If we keep God\'s heart at the center as we consolidate, the ongoing care of the new believer will be effective, helping them to stand firm, even in the midst of trials. It is therefore important to teach them practically how they can grow in their Christian life. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> habits_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Speak to them about the need to be a disciple, not just a Church-attendee. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'Being a disciple means being willing to follow Christ, obeying His Word every day.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Teach them to set a time aside every day to read the Bible and reflect on what they read, using these three questions:',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'\n\na. What is God saying to me? Something personal.\n\nb. What is God commanding me? What He wants to me to do.\n\nc. What is God promising me? The promise I am going to claim.',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Teach them to pray as if they were having a conversation, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'using spontaneous and sincere prayers; introduce them to prayer as worship, praise, thanks, petition, confession and intercession.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];


    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'Our responsibility does not end once we have taken a person to church. The moment they accept Jesus in there heart is when the real work of consolidation begins.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nOur success in implementing the vision is directly linked to the quality of our prayer life. This is because the God who sees what is done in secret will reward you in public.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'READY TO',title_two: 'CONSOLIDATE',scriptures: '"We proclaim him, admonishing and teaching everyone with all wisdom, so that we may present everyone perfect in Christ. To this end I labor, struggling with all his energy, which so powerfully works in me" (Colossians 1:28-29).',lessonNo: '9',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02,marginGap: 50,),
                      SubHeadings(content: '1. PAUL\'S EXAMPLE',fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: paul_paragraph_01),
                      SubHeadings(content: '2. WHAT IS THE PURPOSE OF CONSOLIDATION?',fontSize: fontSize),
                      ParagraphFormatter(richTextData: purpose_paragraph_01),
                      ParagraphCenterFormatter(richTextData: purpose_paragraph_02,marginGap: 50,),
                      SubHeadings(content: '3. EFFECTIVE CONSOLIDATION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: effective_paragraph_01),
                      ParagraphCenterFormatter(richTextData: effective_paragraph_02,marginGap: 50,),
                      SubHeadings(content: '4. BECOMING SPIRITUAL PARENTS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: becoming_paragraph_01),
                      ParagraphCenterFormatter(richTextData: becoming_paragraph_02,marginGap: 50,),
                      ParagraphFormatter(richTextData: becoming_paragraph_03),
                      SubHeadings(content: '5. PRINCIPLES OF CONSOLIDATION',fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: principles_paragraph_01,marginGap: 50,),
                      ParagraphFormatter(richTextData: principles_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: principles_paragraph_03),
                      ParagraphFormatter(richTextData: principles_paragraph_04),
                      SubHeadings(content: '6. HABITS THAT THE NEW BELIEVER SHOULD PUT INTO PRACTICE',fontSize: fontSize),
                      ParagraphFormatter(richTextData: habits_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: habits_paragraph_02),
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
