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
import '../../classes/clsLanguageSelector.dart';

class Love07 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Love07({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: clsLove07.objective_1(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: clsLove07.objective_2(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: clsLove07.objective_3(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: clsLove07.objective_4(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '5.',content: clsLove07.objective_5(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '6.',content: clsLove07.objective_6(language),fontSize: fontSize),

    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:clsLove07.intro_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.intro_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.intro_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.intro_paragraph_01_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.intro_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:clsLove07.intro_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> the_word_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_word_paragraph_01_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> authority_paragraph_01 = [
      clsRichTextFormatter(content:clsLove07.authority_paragraph_01_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.authority_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> authority_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove07.authority_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.authority_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.authority_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_14(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.authority_paragraph_02_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];


    List<clsRichTextFormatter> God_inspired_paragraph_01 = [
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> God_inspired_paragraph_02 = [
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.God_inspired_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> word_helps_paragraph_01 = [
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_1(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_7(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.word_helps_paragraph_01_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> grow_in_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_14(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.grow_in_paragraph_01_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> grow_in_paragraph_02 = [
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_9(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_13(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_15(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_16(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_17(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_18(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_19(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_20(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_21(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_22(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_23(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_24(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_25(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_26(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_27(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_28(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_29(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_30(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_31(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_32(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.grow_in_paragraph_02_33(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> the_power_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_14(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_01_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> the_power_paragraph_02 = [
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> the_power_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_7(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_10(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_13(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_16(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_17(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_18(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_19(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove07.the_power_paragraph_03_20(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];


    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:clsLove07.conclusion_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove07.conclusion_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize+1, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: clsLove07.title_1(language),title_two: clsLove07.title_2(language),scriptures: clsLove07.title_3(language),lessonNo: '7',fontSize: fontSize),language: language),
                      SubHeadings(content: clsLanguagePreset.objectives(language),fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: clsLanguagePreset.introduction(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      SubHeadings(content: clsLove07.subheadings_1(language),fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: the_word_paragraph_01),
                      SubHeadings(content: clsLove07.subheadings_2(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: authority_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: authority_paragraph_02),
                      SubHeadings(content: clsLove07.subheadings_3(language),fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: God_inspired_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: God_inspired_paragraph_02),
                      SubHeadings(content: clsLove07.subheadings_4(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: word_helps_paragraph_01),
                      SubHeadings(content: clsLove07.subheadings_5(language),fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: grow_in_paragraph_01),
                      ParagraphFormatter(richTextData: grow_in_paragraph_02),
                      SubHeadings(content: clsLove07.subheadings_6(language),fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: the_power_paragraph_01),
                      ParagraphFormatter(richTextData: the_power_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: the_power_paragraph_03),
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
