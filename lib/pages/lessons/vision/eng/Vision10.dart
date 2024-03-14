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

class Vision10 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Vision10({super.key,required this.colorTheme,required this.fontSize,required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To understand that through the Vision, God gives us the anointing of multiplication.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To understand the different strategies to take care of the multitudes.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To understand that the \'one-hundred and forty-four\' is the key to multiplication.',fontSize: fontSize),
       ];

    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'We can see here that a well-consolidated group of 12 produced a hundred and forty-four. These 144 bring the multitudes.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'The Apostle saw that each of the twelve leaders of the tribes of Israel had achieved their goal. Every leader was responsible for twelve thousand. The same is true for those who implement the vision; every person focuses on achieving their first goal: twelve. Once your team of twelve is complete, you should help each of your disciples to also form their twelve. They will later do the same with their disciples. Your goal should be to reach your 144, because great multiplication comes when you have formed that team. God Himself will bring them from different places, tribes, peoples and nations, so that they can form part of your ministry.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> seal_paragraph_01 = [
      clsRichTextFormatter(content:'You may recall that the Lord placed a mark on Cain\'s forehead when he sinned because he killed his brother. This mark was a spiritual seal because God is Spirit, it could not be physically seen. When people saw Cain, they sensed the mark in the spirit.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nA spiritual mark characterizes people. For example, when we see a photo of Hitler, though he had no physical mark, we immediately associate him with the Jewish holocaust. If we think about Abraham Lincoln, however, what springs to mind? A good leader who fought for the abolition of slavery. And when we think about Moses? We see the deliverer and lawgiver of the people of Israel. What comes to mind when we think about Abraham? He is the father of faith. And Abel? We remember his offering. So we can see that spiritual, rather than physical, marks exist. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThis passage in Revelations speaks about a mark that God\'s servants receive. This mark is spiritual; it is a God-given anointing and grace, relating to holiness, multiplication and authority. These are the same beginnings, or blessings, that God gave to Adam, Noah and Abraham. He put the same mark on them when said: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Be fruitful, multiply and rule."',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nIt is not difficult to grow when you are marked by God\'s anointing, nor do you need to strive to get the multitudes to follow you; the people will run to you because of God\'s Name.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> seal_paragraph_02 = [
      clsRichTextFormatter(content:'This is what happens when people implement the vision. God gives them an anointing and grace to influence people; He fulfills His promise that the least will become a thousand and the smallest, a mighty nation.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> goals_paragraph_01 = [
      clsRichTextFormatter(content:'Goals are declarations of faith. Through Isaiah, the Lord said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"As the rain and the snow come down from heaven, and do not return to it without watering the earth and making it bud and flourish, so that it yields seed for the Sower and bread for the eater, so is my word that goes out from my mouth: It will not return to me empty, but will accomplish what I desire and achieve the purpose for which I sent it" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Isaiah 55:10-11). The road to success starts with the question: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Where am I heading?" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'When we do not have goals and objectives in life, we face the greatest obstacle in the realization of our dreams. What is a goal? It is a clear objective with a set date. It is a dream to which you have assigned a time limit.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> three_paragraph_01 = [
      clsRichTextFormatter(content:'These will help you to organize your goals:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> three_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'When do I want to achieve this goal by?',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'What do I need to learn so that I can achieve it?',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Who are the right people to help me reach this goal, and how can they help?',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> three_paragraph_03 = [
      clsRichTextFormatter(content:'Living without goals is like advancing without a specific direction.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> three_paragraph_04 = [
      clsRichTextFormatter(content:'I once heard Dr. Derek Prince say: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"If you aim at nothing, you may clear, nor clearly-defined, no matter how many years go by, we will be sure you will hit it."  ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'If at an early stage, our intention is not very be farther away from realizing the dream in our life. The goal that you set for the future will be like the railway tracks that will take to your destiny. Your life will take the path that you yourself set for it. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nDavid said:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> three_paragraph_05 = [
      clsRichTextFormatter(content:'"I waited patiently for the Lord; he turned to me and heard my cry. He lifted me out of the slimy pit, out of the mud and mire; he set my feet on a rock and gave me a firm place to stand. He put a new song in my mouth, a hymn of praise to our God" (Psalm 40:1-3).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> three_paragraph_06 = [
      clsRichTextFormatter(content:'The first few hours in a day are key',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> three_paragraph_07 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'The best way to take advantage of our time is by making the most of the first few hours in a day, maintaining our enthusiasm throughout the rest of the day.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Every day is like a check for twenty four hours that God gives us to spend as we see fit. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Dost thou love life? Then do not squander time, for that\'s the stuff life is made of" (Benjamin Franklin).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> three_paragraph_08 = [
      clsRichTextFormatter(content:'Goals',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> three_paragraph_09 = [
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Are declarations of faith.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Should not return without the expected results.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Originated in the heart of God.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> four_paragraph_01 = [
      clsRichTextFormatter(content:'In Isaiah 55, the Lord speaks about the rain having four purposes. We can draw a parallel between these and the four steps in the ladder of success:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> four_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Water the earth: Win.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' We cannot go beyond where our faith takes us; we can only go as far as our faith allows. If there is no rain, there will be drought; if there are no goals, there will be ministerial barrenness. We should not be afraid to work with goals. Set a goal for how many people you are going to win per year; this will help you place yourself in His divine purpose.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Make the earth bud: Consolidate. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'The rain\'s second mission is to make all the seeds in the ground sprout. This is the purpose of consolidation - to help each person that God entrusts to us to go through a process of brokenness, just like seeds that break open to allow fruit to emerge.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Flourish: Disciple ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Thanks to the rain\'s efficiency, the fields enjoy good harvests. Every pastor or Christian leader should understand that the purpose of the people they are winning is not to fill seats in their meetings Sunday after Sunday. If the people are not able to flourish and be productive, the goals of ministerial responsibility have not been met.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Yield seed for the sower and bread for the eater: Send. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Once the rain has fulfilled its purpose, the fruit should be harvested. The handful of people who were being formed at your side are now ready to apply to others the same care they received from their leader. This is how multiplication comes; each disciple is trained to open a cell and start their ministry. They can now give out of what they have received.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),

    ];

    List<clsRichTextFormatter> bring_paragraph_01 = [
      clsRichTextFormatter(content:'"After this I looked and there before me was a great multitude that no one could count, from every nation, tribe, people and language, standing before the throne and in front of the Lamb. They were wearing white robes and were holding palm branches in their hands" (Revelation 7:9).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> bring_paragraph_02 = [
      clsRichTextFormatter(content:'Great multiplication comes after establishing the 144, who receive the seal of God on their foreheads when they accept the call. In his vision, the Apostle sees that every one of the twelve had achieved their goal.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nEach leader was responsible for twelve thousand. The same is true for those implementing the vision: each person works towards their goal of having twelve.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThey loudly declare that Jesus is the Savior. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' "And they cried out in a loud voice: Salvation belongs to our God, who sits on the throne, and to the Lamb" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Revelation 7:10).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThey know the redemptive power of the Blood of Jesus. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"These are they who have come out of the great tribulation; they have washed their robes and made them white in the blood of the Lamb" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' (v. 14).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThey will be shepherded and comforted by the Lamb of God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"For the Lamb at the center of the throne will be their shepherd; he will lead them to springs of living water. And God will wipe away every tear from their eyes" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(v. 17).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];


    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'A seed must die to produce fruit. Because of their hurry to see rapid growth, some leaders have made the mistake of missing some aspects of the vision out of their disciples, resulting only in stagnation. Therefore, you should set a goal to carefully and faithfully carry out every detail of the vision.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'THE POWER OF THE',title_two: '144',scriptures: '"Then I saw another angel coming up from the east, having the seal of the living God. He called out in a loud voice to the four angels who had been given power to harm the land and the sea: "Do not harm the land or the sea or the trees until we put a seal on the foreheads of the servants of our God." Then I heard the number of those who were sealed: 144,000 from all the tribes of Israel" (Revelations 7:2-4).',lessonNo: '10',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_01,marginGap: 50,),
                      ParagraphFormatter(richTextData: intro_paragraph_02),
                      SubHeadings(content: '1. THE SEAL ON THE LEADERS\' FOREHEADS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: seal_paragraph_01),
                      ParagraphCenterFormatter(richTextData: seal_paragraph_02,marginGap: 50,),
                      SubHeadings(content: '2. ACCOMPLISHED GOALS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: goals_paragraph_01),
                      SubHeadings(content: '3. THREE THOUGHTS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: three_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: three_paragraph_02),
                      ParagraphCenterFormatter(richTextData: three_paragraph_03,marginGap: 50,),
                      ParagraphFormatter(richTextData: three_paragraph_04),
                      ParagraphCenterFormatter(richTextData: three_paragraph_05,marginGap: 50,),
                      ParagraphFormatter(richTextData: three_paragraph_06),
                      ListTextSpanBoxWrapper(listItemData: three_paragraph_07),
                      ParagraphFormatter(richTextData: three_paragraph_08),
                      ListTextSpanBoxWrapper(listItemData: three_paragraph_09),
                      SubHeadings(content: '4. FOUR FUNDAMENTAL STEPS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: four_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: four_paragraph_02),
                      SubHeadings(content: '5. THE 144 BRING MULTIPLICATION',fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: bring_paragraph_01,marginGap: 50,),
                      ParagraphFormatter(richTextData: bring_paragraph_02),
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
