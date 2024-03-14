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

class Vision07 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Vision07({super.key,required this.colorTheme,required this.fontSize,required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To understand the importance and need of winning new people through evangelism.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To learn the requirements that a soul winner should have to successfully complete their mission.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To learn some of the principles to help in the work of an evangelist.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: 'To learn to recognize when a person has been truly won.',fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'Jesus is the only human born knowing His mission on earth. His heart beat for the redemption of souls. In extraordinary ways He made the most of every situation He faced, doing completely innovative, out of the ordinary things. Everything He did was for the salvation of souls. Jesus left His throne of glory and became a man, to teach us His truth in our language. At the start of His ministry He chose and formed twelve men, from different social classes, so that they could meet the needs of the multitudes. His evangelistic work concluded with His death and resurrection. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'Shortly before ascending into heaven, Jesus delegated His authority and power to His disciples. He appointed them to bring His redemption to all people from that moment on. Their success would depend on how much they were given over to making known this message of salvation.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> winning_paragraph_01 = [
      clsRichTextFormatter(content:'Solomon said that ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"he who wins souls is wise" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(Proverbs 11:30b). If your heart is not selfish and you desire to help people attain God\'s redeeming grace, the best thing you can do is prepare yourself to efficiently fulfill the noblest mission in the world - helping people escape condemnation so that they can receive the grace of forgiveness.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nI was greatly helped at the beginning of my ministry when I understood that we should make the most of every opportunity we come across to share the Gospel. I always had some kind of pamphlet at hand which I used as a key for sharing with those I knew who had never heard about Jesus before. After several years I realized that there was something missing as an effective conclusion to my message. Although I was winning souls, I lost contact with them. I then understood that a follow up of these people was needed.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> winning_paragraph_02 = [
      clsRichTextFormatter(content:'Remember that the fruit of the righteous man is a tree of life and he who wins souls is wise. Our fruit is reflected by the souls we win for Jesus.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> preaching_paragraph_01 = [
      clsRichTextFormatter(content:'Paul said,',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> preaching_paragraph_02 = [
      clsRichTextFormatter(content:'"And this is the same message we preach about faith" (Romans 10:8 CEV).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> preaching_paragraph_03 = [
      clsRichTextFormatter(content:'The message that comes out of our mouths should carry the same anointing and power as the words that came from Jesus\' lips. I therefore recommend that we:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> preaching_paragraph_04 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Always speak about Jesus. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'Your goal should be to bring every person who hears you into a full relationship with Jesus Christ. When someone accepts the Word of God in their heart, the Verb of God comes and lives in them and forms part of their life. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Always motivate with words. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'You should endeavor to bring a word of motivation to people. Do not enter into arguments with them: it is better to lose an argument and win a soul.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Use positive language. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'It is best to say something that brings hope to people; make the most of the time that God gives you with your family, friends and disciples to share His Word.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Use your words to fill people\'s emotional emptiness. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Generally, those who allow negative thoughts into their minds also allow them to enter and take root in their emotions. We should determine in our hearts that every one of our words will be like a balm for the souls of those who hear us so that they can start believing in themselves, in God and in people again. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Use different resources to communicate effectively. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Those entrusted with the responsibility of preaching the gospel have the anointing of the Holy Spirit.  At the same time, however, it is still good to use interesting illustrations, parables and testimonies that edify, and to use technology well.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Make sure that your message contains the answer to the person\'s need. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'We should always be thinking, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"I need to communicate something that he or she really needs." ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'People are always hoping for an answer to their family, moral, emotional and spiritual needs which have been troubling them continually.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Your message should be constant, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'perseverant and effective because at stake is the salvation of millions of people who just need to hear the Word.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Your preaching should be anointed. When it is, it is the believer\'s most powerful weapon. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'What we say determines what we do. God has placed authority in our mouths to determine the future. Jesus said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'"Make a tree good and its fruit will be good, or make a tree bad and its fruit will be bad, for a tree is recognized by its fruit" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(Matthew 12:33).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];



    List<clsRichTextFormatter> witness_paragraph_01 = [
      clsRichTextFormatter(content:'The Apostle Paul expressed what his call to preach the gospel meant for him: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Woe to me if I do not preach the gospel!" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(1 Corinthians 9:16).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_02 = [
      clsRichTextFormatter(content:'Preaching was not something that made him feel proud; he did it because he had compassion for the salvation of people\'s souls.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_03 = [
      clsRichTextFormatter(content:'God had placed a desire in Paul\'s heart to win a large number of souls, and this burden increased when his spiritual eyes were opened and he was able to see the end that awaited those who remained far from God. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nHis power is made perfect in our weakness',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nHe needs the little that you have because little in God\'s hands becomes much and becomes a great blessing. The boy who had five loaves of bread and two fish allowed Jesus to use them to feed a multitude of eighteen thousand people. The little that you think you are will be multiplied in God\'s hands. Surrender yourself to His divine purpose and ask the Lord to give you the spirit of an evangelist.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nPreach voluntarily',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_04 = [
      clsRichTextFormatter(content:'"If I preach voluntarily, I have a reward; if not voluntarily, I am simply discharging the trust committed to me" (1 Corinthians 9:17).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_05 = [
      clsRichTextFormatter(content:'Paul could clearly see the difference between a person who works to receive a salary, and someone who works because they love what they do.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nOffer the Gospel of Christ free of charge',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_06 = [
      clsRichTextFormatter(content:'"What then is my reward? Just this: that in preaching the gospel I may offer it free of charge, and so not make use of my rights in preaching it" (1 Corinthians 9:18).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> witness_paragraph_07 = [
      clsRichTextFormatter(content:'Paul had made it his goal to preach the gospel of Jesus Christ free of charge. We know that he focused on the salvation of souls and was known as the one \'who turned the world upside down.\' They knew that this man had the right message to bring salvation to the people.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> servant_paragraph_01 = [
      clsRichTextFormatter(content:'"Though I am free and belong to no man, I make myself a slave to everyone, to win as many as possible" (1 Corinthians 9:19).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> servant_paragraph_02 = [
      clsRichTextFormatter(content:'Paul spoke about one of the fundamental principles of evangelism - having a servant\'s heart.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe heart of a servant perceives people\'s needs and does something to meet them, even before meeting their own.\n',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> advice_paragraph_01 = [
      clsRichTextFormatter(content:'Let us look at what it says in Colossians 3:17:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> advice_paragraph_02 = [
      clsRichTextFormatter(content:'"And whatever you do, whether in word or deed, do it all in the name of the Lord Jesus, giving thanks to God the Father through him."',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> advice_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Make winning a lifestyle. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'We can not win if we do not have the attitude of a winner. God is a God of balance, so there should be balance in all areas of people\'s lives.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Specialize in the strategy God gives you. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Remember that strategy is won in the secret place. The strategy that God gives you is the one that will work and take you to victory. Therefore, it is important to dedicate yourself to developing it.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Have homogenous cells. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Place each person in the group that corresponds to them (men, women, youth and children).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Visualize how many people you want to win. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'This requires seeing in the dimension of faith. When you can clearly visualize in the spiritual world, your level of faith will rise.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Establish weekly goals. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Just as you set goals for your studies, your work and the other areas of your life, it is important to plan with the Lord how many souls you are going to win each week.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Plan fasting, intercession and prayer. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Do this for the people you want to come to know Jesus\' light and for the needs of each one of them.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Learn to put on outreach events. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Rather than having a religious attitude, you should draw people will love and compassion.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Keep an eye on the excellence of the cells. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Be aware of the activities of each cell, and teach with excellence.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Go through the whole process of the ladder of success with every new person.',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsListItemTextSpanAttributes> requirements_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Holiness: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'If you want to be used by God, you must live in holiness and completely move away from a life of sin.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Spirituality: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'You should be spiritually sensitive so that you can hear what the Holy Spirit is saying to you.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Humility: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'You need to depend entirely on the Holy Spirit. He is the one who works in the lives of the lost.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Faith: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Do not look at the circumstances; keep your heart and all of your being grounded in the Word of God, and act in accordance with it.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Simplicity: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Take Jesus as your example; He saved people very simply, from every walk of life.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Complete dependence on Christ: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'Always seek to do things under the direction of the Lord Jesus.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Determine to know the Holy Spirit: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'There should be a close relationship in your life with the Holy Spirit because your life and your ministry depend on Him.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsListItemTextSpanAttributes> evidence_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
      clsRichTextFormatter(content:'Conviction of sin: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'They understand that they are removed from the glory of God. Conviction comes from the Holy Spirit and results in repentance.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Faith in Christ: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'This is evident when a person believes that reconciliation with God the Father, and eternal life, come only through Jesus.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Repentance: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:' A deep pain for having failed which consequently brings a desire to change.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Change of lifestyle: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'This is seen through real proof that they have left their old way of living and have adopted new thoughts, habits and feelings.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:'Prayer: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'The new believer will understand that prayer is how we communicate with God and will start to pray.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),

    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];


    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'Someone who wins souls for God is a person who feels a very special love for the lost. This is reflected in their evangelistic work wherever they go.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWinning should be a lifestyle for every one of us; our fundamental premise, because we know that Jesus chose us to save the world with His gospel of love.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'THE ART OF',title_two: 'WINNING',scriptures: '"He who wins souls is wise" (Proverbs 11:30b).',lessonNo: '7',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      SubHeadings(content: '1. WINNING SOULS IS AN ART',fontSize: fontSize),
                      ParagraphFormatter(richTextData: winning_paragraph_01),
                      ParagraphCenterFormatter(richTextData: winning_paragraph_02, marginGap: 50),
                      SubHeadings(content: '2. THE IMPORTANCE OF PREACHING',fontSize: fontSize),
                      ParagraphFormatter(richTextData: preaching_paragraph_01),
                      ParagraphCenterCenterFormatter(richTextData: preaching_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: preaching_paragraph_03),
                      ListTextSpanBoxWrapper(listItemData: preaching_paragraph_04),
                      SubHeadings(content: '3. BE AN EFFECTIVE WITNESS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: witness_paragraph_01),
                      ParagraphCenterFormatter(richTextData: witness_paragraph_02,marginGap: 50,),
                      ParagraphFormatter(richTextData: witness_paragraph_03),
                      ParagraphCenterFormatter(richTextData: witness_paragraph_04,marginGap: 50,),
                      ParagraphFormatter(richTextData: witness_paragraph_05),
                      ParagraphCenterFormatter(richTextData: witness_paragraph_06,marginGap: 50,),
                      ParagraphFormatter(richTextData: witness_paragraph_07),
                      SubHeadings(content: '4. HAVE A SERVANT\'S HEART',fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: servant_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: servant_paragraph_02),
                      SubHeadings(content: '5. ADVICE FOR WINNING',fontSize: fontSize),
                      ParagraphFormatter(richTextData: advice_paragraph_01),
                      ParagraphCenterCenterFormatter(richTextData: advice_paragraph_02, marginGap: 50),
                      ListTextSpanBoxWrapper(listItemData: advice_paragraph_03),
                      SubHeadings(content: '6. GOD\'S REQUIREMENTS FOR WINNING SOULS',fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: requirements_paragraph_01),
                      SubHeadings(content: '7. EVIDENCE THAT A PERSON HAS BEEN WON',fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: evidence_paragraph_01),
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
