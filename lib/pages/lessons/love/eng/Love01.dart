import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/classes/clsAttributes.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/Conclusion.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ListBoxWrapper.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';
import '../../../../classes/clsListItemAttributes.dart';
import '../../../../classes/clsListItemTextSpanAttributes.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../Headings.dart';
import '../../ListTextSpanBoxWrapper.dart';
import '../../ParagraphBoxFormatter.dart';
import '../../SubHeadings.dart';
import '../../TitlePage.dart';

class Love01 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Love01({super.key,required this.colorTheme,required this.fontSize, required this.language});


  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: clsLove01.lstItemObjectives_1(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: clsLove01.lstItemObjectives_2(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: clsLove01.lstItemObjectives_3(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: clsLove01.lstItemObjectives_4(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '5.',content: clsLove01.lstItemObjectives_5(language),fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:clsLove01.intro_paragraph_01(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize,isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.intro_paragraph_01_2(language), fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor:colorTheme , fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.intro_paragraph_01_3(language), fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.intro_paragraph_01_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.intro_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:clsLove01.intro_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> jesus_listens_paragraph_01 = [
      clsRichTextFormatter(content:clsLove01.jesus_listens_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_listens_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_listens_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_listens_paragraph_02 = [
      clsRichTextFormatter(content:clsLove01.jesus_listens_paragraph_02(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> jesus_a_man_paragraph_01 = [
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_a_man_paragraph_02 = [
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_a_man_paragraph_03 = [
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_03_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_03_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_03_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_a_man_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> born_in_paragraph_01 = [
      clsRichTextFormatter(content:clsLove01.born_in_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> born_in_paragraph_02 = [
      clsRichTextFormatter(content:clsLove01.born_in_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.born_in_paragraph_02_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.born_in_paragraph_02_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> born_in_paragraph_03 = [
      clsRichTextFormatter(content:clsLove01.born_in_paragraph_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> jesus_is_God_paragraph_01 = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_02 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_02_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_02_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_02_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_02_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_03 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_03_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_03_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_04 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_04(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> jesus_is_God_list_06 = [
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_1_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_2_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_3_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_4_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_06_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_07 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_07(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_07_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_07_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_07_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> jesus_is_God_list_08 = [
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_1_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_2_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_2_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_3_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_3_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_4_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_4_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_5_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_5_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_6_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_6_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_7_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove01.jesus_is_God_list_08_7_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_09 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_09(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_10 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_10_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_10_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_10_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_11 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_10(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_12(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_14(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_16(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_17(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_18(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_11_19(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_12 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_12_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_12_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_12_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> jesus_is_God_paragraph_13 = [
      clsRichTextFormatter(content:clsLove01.jesus_is_God_paragraph_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: clsLove01.title_1(language),title_two: clsLove01.title_2(language),scriptures: clsLove01.title_3(language),lessonNo: '1',fontSize: fontSize),language: language),
                      SubHeadings(content: clsLanguagePreset.objectives(language),fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: clsLanguagePreset.introduction(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphFormatter(richTextData: intro_paragraph_02),
                      SubHeadings(content:clsLove01.subheading_1(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_listens_paragraph_01),
                      ParagraphBoxFormatter(richTextData: jesus_listens_paragraph_02),
                      SubHeadings(content: clsLove01.subheading_2(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_a_man_paragraph_01),
                      ParagraphCenterFormatter(richTextData: jesus_a_man_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: jesus_a_man_paragraph_03),
                      SubHeadings(content: clsLove01.subheading_3(language),fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: born_in_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: born_in_paragraph_02),
                      ParagraphFormatter(richTextData: born_in_paragraph_03),
                      SubHeadings(content: clsLove01.subheading_4(language),fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: jesus_is_God_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_02),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_03),
                      SubHeadings(content: clsLove01.subheading_5(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_04),
                      ListTextSpanBoxWrapper(listItemData: jesus_is_God_list_06),
                      SubHeadings(content: clsLove01.subheading_6(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_07),
                      ListTextSpanBoxWrapper(listItemData: jesus_is_God_list_08),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_09),
                      SubHeadings(content: clsLove01.subheading_7(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_10),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_11),
                      SubHeadings(content: clsLove01.subheading_8(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: jesus_is_God_paragraph_12),
                      Conclusion(fontSize: fontSize, colorTheme: colorTheme,language: language),
                      ParagraphBoxFormatter(richTextData: jesus_is_God_paragraph_13),
                      SizedBox(height:150.0),
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
