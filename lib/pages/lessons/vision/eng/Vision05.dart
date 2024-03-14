import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphBoxFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import '../../../../classes/clsAttributes.dart';
import '../../../../classes/clsListItemAttributes.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../Conclusion.dart';
import '../../Headings.dart';
import '../../ListBoxWrapper.dart';
import '../../SubHeadings.dart';
import '../../TitlePage.dart';

class Vision05 extends StatelessWidget {
  final String colorTheme;
  final double fontSize;
  final String language;
  const Vision05({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: 'To understand the steps to take to form a successful team of twelve.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: 'To recognize in Jesus\' ministry the way in which He formed the best team.',fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: 'To receive a true desire within our hearts to form a team of twelve.',fontSize: fontSize),
    ];

    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:'Our Lord Jesus Christ is undoubtedly the greatest visionary that has ever lived. Moved by compassion to redeem humanity, He gave up every privilege of divinity.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:'He knew why He was in the world as well as how long He had to complete His work. At the end of His race, Jesus was able to say: "I did it" or "It is finished."',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_03 = [
      clsRichTextFormatter(content:'Jesus broke away from the conventional. Instead of looking for His twelve in the best schools of theology, He chose them after a night of prayer (Luke 6:12). We cannot choose our disciples because they are our friends, because of their intellectual capacity, their public speaking skills, or their human abilities or talents. We choose them because the Spirit gives testimony to our spirit that they have a faithful heart. Just like a skilled craftsman who makes pottery from mud, Jesus took the disciples in His hands and formed them. He worked on each one of their characters for three and a half years; through His teachings He decontaminated them and shared eternal truths with them so that, when He was no longer with them, they would be able to live in total dependency on the Holy Spirit, just as He had lived. Jesus\' twelve were the sturdy columns upon which a large part of the Christian faith would rest. He worked in their lives, modeling for us the most effective way of pastoring. He won them in prayer, consolidated them, discipled them in the cell, and then sent them. The success of Jesus\' ministry depended on His disciples becoming as firm as rocks: faithful through times of testing, not allowing anything to sway them from what Jesus had taught them.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nJesus\' vision is the only vision that has been able to bring redemption, hope and life to all humanity. To carry out His great plan of redemption, He had to apply some simple principles.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> choice_paragraph_01 = [
      clsRichTextFormatter(content:'The Lord taught that when it comes to building a house, there are two kinds of people - the wise man who looks for a good foundation, and the foolish man who builds on sand. Foundations refer to rock, something solid and firm, while sand brings to mind the multitudes or many people who are not committed. We see the outcome of both choices after the passing of time, in times of testing. rock remains, the sand does not, just like people who once followed Jesus, but later returned to their normal activities. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> choice_paragraph_02 = [
      clsRichTextFormatter(content:'Jesus made a decision to think about eternity, rather than just about the temporary, when He formed His team.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\n"He appointed twelve - designating them apostles - that they might be with him and that he might send them out to preach and to have authority to drive out demons" (Mark 3:14-15).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> choice_paragraph_03 = [
      clsRichTextFormatter(content:'It is interesting that there were all kinds of people in this group. Andrew and John were followers of John the Baptist, but when their leader pointed Jesus out and told them that He was the Lamb of God, both Andrew and John went after Jesus. He asked them, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"What are you looking for?"  ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'They only wanted to know where Jesus lived, but the Lord invited them to follow Him. Andrew then looked for his brother Simon and brought him to Jesus. When He saw him, He changed his name to Cephas or Peter which means rock (John 1:35-42). The next day, Jesus found Philip and invited him to follow Him. Philip found Nathanael and also brought him to Jesus (John 1:43-51). Later on, James and John, the sons of Zebedee, left the nets they were mending to respond to Jesus\' call. Levi, or Matthew, left his tax collecting business to follow Him (Mark 2:13-14).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nAs the basis for the team was personal contact, He preferred them to be close to Him. Our youngest child, who is now five years old, has a strong will. Therefore, we try to make sure that he is close to us most of the time so that we can form his character. Jesus did something similar with His disciples; His contact with them was essential for correcting and guiding them in all things.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> training_paragraph_01 = [
      clsRichTextFormatter(content:'When God created man, He created him out of what was there: the clay of the earth. With this imperfect material, He was ready to create the first couple. In the same way, He places people in our hands who often have nothing extraordinary about them; they generally have many problems, and may have many doubts, be caught up in family conflicts, or be emotionally hurt, etc. These people are like clay, but you must see them through eyes of faith. You will influence their lives through your words, your example and your testimony. Jesus called John and James "sons of thunder" because of the brothers\' strong personalities and wills, and alongside them, Simon Peter was highly impulsive and reckless. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nHowever, the Lord saw in each one of His disciples what they had never been able to see in themselves. Consequently, He kept the most difficult three nearest Him. He did not take them everywhere with Him to reward them, but to form them. They were in Jairus\' house during the resurrection of his daughter (Mark 5:37-43). These three were on the mount of transfiguration, where they saw Elijah and ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' Moses speaking with Jesus. Peter reacted by asking permission to build three shelters, or three tabernacles or churches. He did not know what he was saying. God had to intervene and tell them.',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> training_paragraph_02 = [
      clsRichTextFormatter(content:'"This is my Son, whom I love. Listen to him!" (Mark 9:7).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThese three were at Gethsemane; even though He told them.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\n"My soul is overwhelmed with sorrow to the point of death" and invited them to support Him in prayer, they fell asleep three times (Mark 14:33-42).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nBuilding friendships is part of the training process.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> training_paragraph_03 = [
      clsRichTextFormatter(content:'Every week we meet with the team of twelve that the Lord has given us, but we also try to spend time with them outside of church activities because we want to be around them more. This takes away the barriers that disciples can have towards a leader. We understand that friendship should not be confused with tolerance. Although Jesus loved Peter very much, after His resurrection, He confronted him for having denied him three times - He confronted him with his sin. Three times, Jesus said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Peter, do you love me ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' leading him to repentance. Jesus then invited him to follow Him.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];



    List<clsRichTextFormatter> focus_paragraph_01 = [
      clsRichTextFormatter(content:'When praying to the Father for His disciples, Jesus said,  ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"I will remain in the world no longer, but they are still in the world, and I am coming to you. Holy Father, protect them by the power of your name-the name you gave me - so that they may be one as we are one. While I was with them, I protected them and kept them safe doomed to destruction so that Scripture would be fulfilled" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(John by that name you gave me. None has been lost except the one 17:11-12). In this prayer, Jesus sums up the way in which He had dedicated Himself to His twelve disciples: He was always devoted to helping them treasure the Word He gave them in their hearts, reserving the best teachings for them (John 17:8).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nHe taught them the correct way to give offerings, because the offering that pleases God is that which is given with great effort (Luke 21:1-4). He taught them to place the values of the Kingdom above their emotions (Luke 14:25-28). He taught them the importance of serving and keeping a humble heart (John 13:14-17). While they were discussing which of the twelve would be the greatest, Jesus questioned the motives behind their arguing but they did not know how to answer Him. Jesus took a child and had him stand in front of them; He told them that whoever wanted to be the greatest must be like that little child (Luke 9:46-48).',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nHe took them with Him as He travelled, hoping to have some time with them to build them up. Although He was often surrounded by multitudes, He never took His eyes off His work with the twelve; He knew that they would represent Him when He left this world. In John 17, He gave the Father a clear report on what He had done with His team, including the one who had rebelled against Him, who by betraying Him had become the one doomed to destruction in accordance with what was written. Jesus never saw working with the twelve as a burden; He enjoyed every minute He shared with His disciples. They loved Him because they saw His sincerity and dedication; they were the center of His attention. He spoke to other people in parables, but He revealed everything to them. The ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'impartation of life that the Lord transmitted was such that the people could see the Master\'s characteristics in the disciples (Mark 14:70). ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe leader of twelve should dedicate themselves to their team, to making them into the best leaders in the world, so that the anointing of God will flow through their lives.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

    ];

    List<clsRichTextFormatter> invest_paragraph_01 = [
      clsRichTextFormatter(content:'At the end of His life, Jesus prayed to the Father: ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> invest_paragraph_02 = [
      clsRichTextFormatter(content:'"I have revealed you to those whom you gave me out of the world. They were yours; you gave them to me and they have obeyed your word" (John 17:5). ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> invest_paragraph_03 = [
      clsRichTextFormatter(content:'In that moment, He was so focused on His work with the twelve that He did not pray for the world, but for the twelve that the Father had given Him. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWhen giving thanks for them in prayer, He emphasized the fact that they belonged to the Father who had entrusted them to Him. To center His attention on others, Jesus had to leave aside all comfort zones. We have had to do something similar for our son Matías. My wife said, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Having a child means leaving your selfishness aside to dedicate yourself completely to them." ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'This is exactly what Jesus did - He renounced all His divine privileges, was made man and revealed His glory to us (Philippians 2:5-8). The twelve apostles testified about Him because they received the revelation that Jesus is the expression of the deity, God made flesh. Through Him, they knew the Father. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Anyone who has seen me has seen the Father. How can you say, \'Show us the Father\'?" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(John 14:9b). All they needed to know about the Father could be seen in every one of the Son\'s actions. Similarly, all that Jesus did was in the hope that they too would follow His example. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"I have set you an example that you to teach them differently because they needed to learn to move in should do as I have done for you" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:' (John 13:15). Jesus determined the supernatural if they were to do God\'s work. This was the only way they could bring the kingdom of God to earth, with extraordinary signs and wonders, so that people would believe their words. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> vision_paragraph_01 = [
      clsRichTextFormatter(content:'Shortly before ascending to heaven, Jesus instructed His disciples:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> vision_paragraph_02 = [
      clsRichTextFormatter(content:'"All authority in heaven and on earth has been given to me. Therefore go and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit, and teaching them to obey everything I have commanded you. And surely I am with you always, to the very end of the age" (Matthew 28:18-20). ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> vision_paragraph_03 = [
      clsRichTextFormatter(content:'The Lord called them to a place outside the small cities to help them think about the redemption of whole nations. Having a strategic vision is the best way to impact a nation. Able to understand his responsibility because of the burden he felt for the Gospel to reach the nations, the apostle Paul said  ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"Yet when I preach the gospel, I cannot boast, for I am compelled to preach. Woe to me if I do not preach the gospel! If I preach voluntarily, I have a reward; if not voluntarily, I am simply discharging the trust committed to me" ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'(1 Corinthians 9:16-17). The big question is: How can we effectively ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'transform nations through the Gospel? I believe the answer is simple: by doing what the Lord did. If the most important person in the universe dedicated His life to forming twelve men, what greater idea are we hoping to come up with? ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWe attain the key to multiplication when we understand the importance of a leader or pastor deciding to focus on twelve people to train them, helping them to reach maturity in the Word, and to have a healed heart and a firm character. This is because each of these twelve will do the same with another twelve, resulting in 144 disciples. If every one of them focuses on conquering twelve disciples, there would be 1,728, and if they all do the same, the number would rise to 20,732. If the process is repeated, there would be 248,832, which multiplied by twelve again would result in 2,985,984. If all these people decided to have twelve, 35,831,808 people, the size of some nations, would be won for Christ.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nWe must be careful to form the foundational team i.e. the team of twelve, so that we can redeem entire nations. One of the mistakes I have seen many people tempted to make is being satisfied with incomplete groups. They accept that some disciples have reached eight of their twelve, and they tell them, ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'"That\'s fine." ',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'This is a big mistake.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nThe twelve are like a circle: if a circle is not completely round, it is not a circle. A group of eight, or ten or eleven of the twelve, is not a circle; to be counted it must be complete.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> repro_paragraph_01 = [
      clsRichTextFormatter(content:'The miracle of reproduction is simple. How can we evangelize the whole world? If somebody thinks too logically about it, it will be hard for them to win anyone, let alone their own home. Reproduction they are not married, because they need to first get married to then is like having a family: nobody thinks about being a grandparent if have children who, after some time, will give them grandchildren. Reproduction in the ministry is similar first you must love souls. The best thing you can do to help those who are lost and who live far from the Father is to first have the assurance of your own salvation.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> repro_paragraph_02 = [
      clsRichTextFormatter(content:'Do not deceive yourself or try to impress God, thinking that He will accept you if you present Him with some disciples. The Lord would prefer you to surrender your whole life to His will.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> repro_paragraph_03 = [
      clsRichTextFormatter(content:'Once you are sure of your salvation you will be able to think about helping others. You should first win one disciple, who will bring another, and that person too will bring another - so you will have three disciples. As you help them to be formed, your sphere of influence will increase and you should repeat the process - reach another person and disciple them. Then two more people will come, and you will have three more disciples; this process is repeated twice more so that you reach your first great conquest, your first team of twelve. Although this is not the rule, it is a strategy that will help you to start taking your first steps. Andrew brought Simon Peter, his brother, and Philip brought Nathanael. ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\nOnce you have your team of twelve, you should be careful to help them maintain a high level of maturity because what they receive from you as their leader is what they will know of God. If you fail, it will affect the faith of these people. I am not trying to say that a leader does not go through struggles because we all do,',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'but our faith in Jesus gives us the strength to overcome. A well- established twelve will cause great multiplication. May the Lord\'s words to Joshua at the beginning of his ministry also be for you:',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'\n\n"Have I not commanded you? Be strong and courageous. Do not be terrified; do not be discouraged, for the Lord your God will be with you wherever you go" (Joshua 1:9).',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:'We can draw a parallel between longing for disciples and wanting to have children: we do not bring them into the world so that they can be hungry or live in misery, without having even their basic needs met. A true father wants to have children so that he can express his love for them through affection and the provision of their needs. He also dedicates time to raising them as the best citizens.',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: 'FORMING \nTHE BEST',title_two: 'TEAM',scriptures: '"And I tell you that you are Peter, and on this rock I will build my church, and the gates of Hades will not overcome it" (Matthew 16:18).',lessonNo: '5',fontSize: fontSize),language: language),
                      SubHeadings(content: 'Objective',fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: 'INTRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: intro_paragraph_03),
                      SubHeadings(content: '1. CHOICE',fontSize: fontSize),
                      ParagraphFormatter(richTextData: choice_paragraph_01),
                      ParagraphCenterFormatter(richTextData: choice_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: choice_paragraph_03),
                      SubHeadings(content: '2. TRAINING',fontSize: fontSize),
                      ParagraphFormatter(richTextData: training_paragraph_01),
                      ParagraphCenterFormatter(richTextData: training_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: training_paragraph_03),
                      SubHeadings(content: '3. FOCUS',fontSize: fontSize),
                      ParagraphFormatter(richTextData: focus_paragraph_01),
                      SubHeadings(content: '4. INVEST IN THEM',fontSize: fontSize),
                      ParagraphFormatter(richTextData: invest_paragraph_01),
                      ParagraphCenterFormatter(richTextData: invest_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: invest_paragraph_03),
                      SubHeadings(content: '5. VISION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: vision_paragraph_01),
                      ParagraphCenterFormatter(richTextData: vision_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: vision_paragraph_03),
                      SubHeadings(content: '6. REPRODUCTION',fontSize: fontSize),
                      ParagraphFormatter(richTextData: repro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: repro_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: repro_paragraph_03),
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
