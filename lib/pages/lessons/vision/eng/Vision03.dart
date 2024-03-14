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

class Vision03 extends StatelessWidget {
  final String colorTheme;
  final double fontSize;
  final String language;
  const Vision03({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To recognize Jesus as the Messiah and the only foundation upon which to build the Church.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To recognize some of the fundamental characteristics of the Church of God.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To receive the inspiration to be a witness to the message of the Cross.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: 'To understand the different ways you can demonstrate love for our sheep (disciples).',fontSize: fontSize),
    ];

    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'"Who do people say the Son of Man is?" They replied, "Some say John the Baptist; others say Elijah; and still others, Jeremiah or one of the prophets." "But what about you?" he asked. "Who do you say I am?" Simon Peter answered, "You are the Christ, the Son of the living God." Jesus replied, "Blessed are you, Simon son of Jonah, for this was not revealed to you by man, but by my Father in heaven. And I tell you that you are Peter, and on this rock I will build my church, and the gates of Hades will not overcome it. I will give you the keys of the kingdom of heaven; whatever you bind on earth will be bound in heaven, and whatever you loose on earth will be loosed in heaven" (Matthew 16:13-19).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'Near the beginning of His ministry, Jesus met with His disciples and discussed with them His plans for the foundation of His Church that He would build.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> intro_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'How do other people see Me?  ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(v. 13). Jesus wanted to know how His influence was developing within the community.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'How do you see Me?   ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 15). Jesus wanted to know if they had already received the revelation that He was the Christ.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'How did Jesus see His disciples?   ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 18a). Simon recognized who Jesus was, even though he was someone prone to being inconsistent, impulsive and unnecessarily reactive to circumstances. Despite all of Simon\'s character flaws, Jesus could see strength, like that of a rock, in his heart; when He prophetically declared this over his life, that strength rose to the surface, and also spread to the other apostles.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Jesus includes them in the building of His Church   ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Church (v. 18b). The word that the Lord gave to Peter is also for other believers. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"You also, like living stones, are being built into a spiritual house to be a holy priesthood, offering spiritual sacrifices acceptable to God through Jesus Christ"  ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(1 Peter 2:5).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Jesus ensured them that His Church would prevail through all adversity   ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 18c). As long as believers have a good relationship with the Holy Spirit, they will overcome all demonic opposition.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'God entrusted them with the key for the salvation of souls ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v.19a). During the feast of Pentecost, Peter took advantage of the fact that thousands of Jews had come together, surprised by what had happened in the upper room. He preached the Word to them, winning three thousand people for Christ (Acts 2:41).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'God gave them powerful spiritual authority, so that whatever they did on earth would have an effect in heaven (v.19b).',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> jesus_the_paragraph_01 = [
      clsRichTextFormatter(content:'The Church of the Lord Jesus Christ, (by this I mean that there is only really one Church, that for which Christ gave up his life), was established on a firm foundation, Jesus Christ, the cornerstone upon which the weight of this spirit building rests. Upon this foundation were placed twelve columns - Jesus\' twelve apostles; later would come the living stones - the believers. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Built on the foundation of the apostles and prophets, with Christ Jesus himself as the chief cornerstone" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Ephesians 2:20).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> knowing_that_the_paragraph_01 = [
      clsRichTextFormatter(content:'"How God anointed Jesus of Nazareth with the Holy Spirit and power, and how he went around doing good and healing all who were under the power of the devil, because God was with him. "We are witnesses of everything he did in the country of the Jews and in Jerusalem. They killed him by hanging him on a cross, but God raised him from the dead on the third day and caused him to be seen. He was not seen by all the people, but by witnesses whom God had already chosen - by us who ate and drank with him after he rose from the dead. He commanded us to preach to the people and to testify that he is the one whom God appointed as judge of the living and the dead. All the prophets testify about him that everyone who believes in him receives forgiveness of sins through his name" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' (Acts 10:38-43). Peter mentions several aspects relating to the Lord Jesus\' ministry:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> knowing_that_the_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'His ministry on the earth was supernatural ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(v. 38).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'God entrusted the disciples with the mission to be witnesses of all that Jesus had done ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 39)',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'He died and rose again on the third day ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 40).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'He sent them to tell the people that Jesus is the Judge of the living and the dead ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 42).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Everyone who believes in Him will receive forgiveness of sins ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v. 43).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> the_price_paragraph_01 = [
      clsRichTextFormatter(content:'When Jesus saw the multitudes coming towards Him, He started teaching them, helping them understand that following Him would not necessarily be easy, knowing that some would not be willing to pay the price (Luke 14:25-33). ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWhat was the price?',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> the_price_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'To love Him above all members of our own family. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"If anyone comes to me and does not hate his father and mother, his wife and children, his brothers and sisters - yes, even his own life he cannot be my disciple" (Luke 14 v. 26).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'To take up our cross and follow Him. ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"And whoever does not carry their cross and follow me cannot be my disciple" (v. 27). ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'To visualize ourselves having the strength to reach the end of the race. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Suppose one of you wants to build a tower. Won\'t you first sit down and estimate the cost to see if you have enough money to complete it?" (v. 28).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'To finish what we start. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"For if you lay the foundation and are not able to finish it, everyone who sees it will ridicule you, saying, This person began to build and wasn\'t able to finish" (v. 29-30).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'To give up everything we have. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Or suppose a king is about to go to war against another king. Won\'t he first sit down and consider whether he is able with ten thousand men to oppose the one coming against him with twenty thousand? If he is not able, he will send a delegation while the other is still a long way off and will ask for terms of peace. In the same way, those of you who do not give up everything you have cannot be my disciples" (v. 31-33).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> being_paragraph_01 = [
      clsRichTextFormatter(content:'The Early Church believers became witnesses, preaching with power from on high, just as the Lord had promised.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> being_paragraph_02 = [
      clsRichTextFormatter(content:'"With great power the apostles continued to testify to the resurrection of the Lord Jesus, and much grace was upon them all" (Acts 4:33).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> being_paragraph_03 = [
      clsRichTextFormatter(content:'In his defense before King Agrippa, Paul said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"So then, King Agrippa, I was not disobedient to the vision from heaven. First to those in Damascus, then to those in Jerusalem and in all Judea, and to the Gentiles also, I preached that they should repent and turn to God and prove their repentance by their deeds" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Acts 26:19-20). Since the moment of his conversion, Paul could clearly see his calling. He felt obligated to share the Gospel of salvation with each and every person (Romans 1:14). He never became ashamed of preaching the Gospel of Jesus Christ, because he knew that through it, the power of God was working to bring salvation (Romans 1:16).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> loving_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'Peter was confronted. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Simon son of John, do you truly love me more than these?" "Yes, Lord," he said, "You know that I love you." Jesus said, "Feed my lambs." Again Jesus said, "Simon son of John, do you truly love me?" He answered, "Yes, Lord, you know that I love you." Jesus said, "Take care of my sheep." The third time he said to him, "Simon son of John, do you love me?" Peter was hurt because Jesus asked him the third time, "Do you love me?" He said, "Lord, you know all things; you know that I love you." Jesus said, "Feed my sheep" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(John 21:15-17).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Every believer is a child of God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Yet to all who received him, to those who believed in his name, he gave the right to become children of God - children born not of natural descent, nor of human decision or a husband\'s will, but born of God" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(John 1:12-13).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Paul became a spiritual father, even whilst in prison. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"I appeal to you for my son Onesimus, who became my son while I was in chains. Formerly he was useless to you, but now he has become useful both to you and to me" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Philemon 10-11).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Women can bear abundant fruit for God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'. "But women will be saved through childbearing - if they continue in faith, love and holiness with propriety" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'" (1 Timothy 2:15).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Paul fought for those who had left the faith. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"My dear children, for whom I am again in the pains of childbirth until Christ is formed in you" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"(Galatians 4:19).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'Not bearing fruit brings shame. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Be ashamed, O Sidon, and you, O fortress of the sea, for the sea has spoken: "I have neither been in labor nor given birth; I have neither reared sons nor brought up daughters" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:' (Isaiah 23:4).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'The example of the barren fig tree.  ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Early in the morning, as he was on his way back to the city, he was hungry. Seeing a fig tree by the road, he went up to it but found nothing on it except leaves. Then he said to it, "May you never bear fruit again!" Immediately the tree withered" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:' (Matthew 21:18-19).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'Just as in the ancient times, God gave Moses comprehensive designs for the tabernacle in the Old Testament and then told him to do everything in accordance with this pattern (Hebrews 8:5), the Lord Jesus left us a model for how His Church should be. What He establishes needs neither change nor modification because He does everything perfectly.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'A FIRM',title_two: 'FOUNDATION',scriptures: '"And I tell you that you are Peter, and on this rock I will build my church, and the gates of Hades will not overcome it." (Matthew 16:18).',lessonNo: '3',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      ListTextSpanBoxWrapper(listItemData: intro_paragraph_03),
                      SubHeadings(content: '1. JESUS, THE CORNERSTONE OF THE CHURCH',fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_the_paragraph_01),
                      SubHeadings(content: '2. KNOWING THAT JESUS IS THE CHRIST',fontSize: fontSize),
                      ParagraphFormatter(richTextData: knowing_that_the_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: knowing_that_the_paragraph_02),
                      SubHeadings(content: '3. THE PRICE FOR HIS DISCIPLES',fontSize: fontSize),
                      ParagraphFormatter(richTextData: the_price_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: the_price_paragraph_02),
                      SubHeadings(content: '4. BEING FERVENT WITNESSES',fontSize: fontSize),
                      ParagraphFormatter(richTextData: being_paragraph_01),
                      ParagraphCenterFormatter(richTextData: being_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: being_paragraph_03),
                      SubHeadings(content: '5. LOVING THE SHEEP',fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: loving_paragraph_01),
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
