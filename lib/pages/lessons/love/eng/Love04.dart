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
import '../../classes/clsLanguageSelector.dart';

class Love04 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Love04({super.key,required this.colorTheme,required this.fontSize,required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: clsLove04.objective_1(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: clsLove04.objective_2(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: clsLove04.objective_3(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: clsLove04.objective_4(language),fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content: clsLove04.intro_paragraph_01_1(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize,isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.intro_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.intro_paragraph_01_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.intro_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:clsLove04.intro_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> who_am_paragraph_01 = [
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.who_am_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> what_should_paragraph_01 = [
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> what_should_paragraph_02 = [
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_02_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> what_should_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v25).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v26).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v27).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v28).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v29).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v30).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.what_should_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'(v31).',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> what_should_paragraph_04 = [
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_10(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_12(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_15(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_16(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_17(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_18(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_19(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.what_should_paragraph_04_20(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> put_on_paragraph_01 = [
      clsRichTextFormatter(content:clsLove04.put_on_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> put_on_paragraph_02 = [
      clsRichTextFormatter(content:clsLove04.put_on_paragraph_02(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> put_on_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_10(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_12(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.put_on_paragraph_03_14(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> transformed_paragraph_01 = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> transformed_paragraph_02 = [
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_02_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> transformed_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove04.transformed_paragraph_03_10(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),

    ];
    List<clsRichTextFormatter> _paragraph = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:clsLove04.conclusion_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove04.conclusion_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: clsLove04.title_1(language),title_two: clsLove04.title_2(language),scriptures: clsLove04.title_3(language),lessonNo: '4',fontSize: fontSize),language: language),
                      SubHeadings(content: clsLanguagePreset.objectives(language),fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: clsLanguagePreset.introduction(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      SubHeadings(content: clsLove04.subheading_1(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: who_am_paragraph_01),
                      SubHeadings(content: clsLove04.subheading_2(language),fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: what_should_paragraph_01,marginGap: 50,),
                      ParagraphFormatter(richTextData: what_should_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: what_should_paragraph_03),
                      ParagraphFormatter(richTextData: what_should_paragraph_04),
                      SubHeadings(content: clsLove04.subheading_3(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: put_on_paragraph_01),
                      ParagraphCenterFormatter(richTextData: put_on_paragraph_02,marginGap: 50,),
                      ListTextSpanBoxWrapper(listItemData: put_on_paragraph_03),
                      SubHeadings(content: clsLove04.subheading_4(language),fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: transformed_paragraph_01,marginGap: 50,),
                      ParagraphFormatter(richTextData: transformed_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: transformed_paragraph_03),
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
