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

class Love10 extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Love10({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: clsLove10.objectives_1(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: clsLove10.objectives_2(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: clsLove10.objectives_3(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: clsLove10.objectives_4(language),fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.intro_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:clsLove10.intro_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> revelation_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.revelation_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> revelation_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.revelation_paragraph_02_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> change_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.change_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> change_paragraph_02 = [
      clsRichTextFormatter(content:clsLove10.change_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.change_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.change_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> change_paragraph_03 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove10.change_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.change_paragraph_03_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize), clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.change_paragraph_03_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];

    List<clsRichTextFormatter> God_fellow_paragraph_01 = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> God_fellow_paragraph_02 = [
      clsRichTextFormatter(content:clsLove10.God_fellow_paragraph_02(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> God_fellow_paragraph_03 = [
      clsRichTextFormatter(content:clsLove10.God_fellow_paragraph_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> ladder_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> ladder_paragraph_02 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_9(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_02_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> ladder_paragraph_03 = [
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> ladder_paragraph_04 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),clsListItemTextSpanAttributes(leftIdentifier: '*.', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_04_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> ladder_paragraph_05 = [
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_6(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_8(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_11(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.ladder_paragraph_05_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> ladder_paragraph_06 = [
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.ladder_paragraph_06_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];


    List<clsRichTextFormatter> g12_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.g12_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> g12_paragraph_02 = [
      clsRichTextFormatter(content:clsLove10.g12_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> g12_paragraph_03 = [
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsLove10.g12_paragraph_03_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> g12_paragraph_04 = [
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.g12_paragraph_04_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> g12_paragraph_05 = [
      clsRichTextFormatter(content:clsLove10.g12_paragraph_05(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];


    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:clsLove10.conclusion_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsLove10.conclusion_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: clsLove10.title_1(language),title_two: clsLove10.title_2(language),scriptures: clsLove10.title_3(language),lessonNo: '10',fontSize: fontSize),language: language),
                      SubHeadings(content: clsLanguagePreset.objectives(language),fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: clsLanguagePreset.introduction(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_02, marginGap: 50),
                      SubHeadings(content: clsLove10.subheadings_1(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: revelation_paragraph_01),
                      ListTextSpanBoxWrapper(listItemData: revelation_paragraph_02),
                      SubHeadings(content: clsLove10.subheadings_2(language),fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: change_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: change_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: change_paragraph_03),
                      SubHeadings(content: clsLove10.subheadings_3(language),fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: God_fellow_paragraph_01, marginGap: 50),
                      ParagraphCenterCenterFormatter(richTextData: God_fellow_paragraph_02, marginGap: 50),
                      ParagraphCenterFormatter(richTextData: God_fellow_paragraph_03, marginGap: 50),
                      SubHeadings(content: clsLove10.subheadings_4(language),fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: ladder_paragraph_01, marginGap: 50),
                      ListTextSpanBoxWrapper(listItemData: ladder_paragraph_02),
                      ParagraphFormatter(richTextData: ladder_paragraph_03),
                      ListTextSpanBoxWrapper(listItemData: ladder_paragraph_04),
                      ParagraphFormatter(richTextData: ladder_paragraph_05),
                      ListTextSpanBoxWrapper(listItemData: ladder_paragraph_06),
                      SubHeadings(content: clsLove10.subheadings_5(language),fontSize: fontSize),
                      ParagraphCenterCenterFormatter(richTextData: g12_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: g12_paragraph_02),
                      ListTextSpanBoxWrapper(listItemData: g12_paragraph_03),
                      ParagraphFormatter(richTextData: g12_paragraph_04),
                      ParagraphCenterCenterFormatter(richTextData: g12_paragraph_05, marginGap: 50),
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