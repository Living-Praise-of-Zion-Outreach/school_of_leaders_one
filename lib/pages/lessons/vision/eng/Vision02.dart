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
import '../../classes/clsLanguageSelector.dart';

class Vision02 extends StatelessWidget {
  final String colorTheme;
  final double fontSize;
  final String language;
  const Vision02({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    List<clsListItemAttributes> lstItemObjectives = [
      clsListItemAttributes(leftIdentifier: '1.',content: clsVision02.objectives_1(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '2.',content: clsVision02.objectives_2(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '3.',content: clsVision02.objectives_3(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '4.',content: clsVision02.objectives_4(language),fontSize: fontSize),
      clsListItemAttributes(leftIdentifier: '5.',content: clsVision02.objectives_5(language),fontSize: fontSize),
    ];
    List<clsRichTextFormatter> intro_paragraph_1 = [
      clsRichTextFormatter(content:clsVision02.intro_paragraph_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> what_does_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.what_does_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.what_does_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_birth_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.the_birth_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_birth_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_birth_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_birth_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> being_in_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_3(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_5(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_7(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_12(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_16(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_17(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_18(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_19(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_20(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_21(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_22(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_23(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_24(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),

      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_25(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.being_in_paragraph_01_26(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsListItemTextSpanAttributes> chara_paragraph_01 = [
    clsListItemTextSpanAttributes(leftIdentifier: 'A.', content: [
      clsRichTextFormatter(content:clsVision02.chara_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.chara_paragraph_01_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'B.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'C.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'D.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'E.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'F.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_13(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: 'G.', content: [
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_15(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.chara_paragraph_01_16(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> the_gov_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_01_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_01_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_01_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_gov_paragraph_02 = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_02(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_gov_paragraph_03 = [
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_gov_paragraph_03_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> the_lad_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_01(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_02 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_4(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_02_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_03 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_03(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_04 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_04_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_04_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_04_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_04_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_04_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_05 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_05(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_06 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_06(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> the_lad_paragraph_07 = [
    clsListItemTextSpanAttributes(leftIdentifier: '1.', content: [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '2.', content: [
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '3.', content: [
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '4.', content: [
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '5.', content: [
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_9(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_07_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> the_lad_paragraph_08 = [
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_7(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_8(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_9(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_10(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_11(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize+2, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_12(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_13(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_08_14(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsListItemTextSpanAttributes> the_lad_paragraph_09 = [
    clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_2(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_4(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '*', content: [
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_5(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_6(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
      clsListItemTextSpanAttributes(leftIdentifier: '   ', content: [
        clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
        clsRichTextFormatter(content:clsVision02.the_lad_paragraph_09_7(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      ], fontSize: fontSize),
    ];
    List<clsRichTextFormatter> paragraph_ = [
      clsRichTextFormatter(content:'',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];

    List<clsRichTextFormatter> conclusion_paragraph_01 = [
      clsRichTextFormatter(content:clsVision02.conclusion_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      TitlePage(attributes: clsAttributes(title_one: clsVision02.title_1(language),title_two: clsVision02.title_2(language),scriptures: clsVision02.title_3(language),lessonNo: '2',fontSize: fontSize),language: language),
                      SubHeadings(content: clsLanguagePreset.objectives(language),fontSize: fontSize),
                      ListBoxWrapper(listItemData: lstItemObjectives),
                      Headings(content: clsLanguagePreset.introduction(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: intro_paragraph_1),
                      SubHeadings(content: clsVision02.subheadings_1(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: what_does_paragraph_01),
                      SubHeadings(content: clsVision02.subheadings_2(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: the_birth_paragraph_01),
                      SubHeadings(content: clsVision02.subheadings_3(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: being_in_paragraph_01),
                      SubHeadings(content: clsVision02.subheadings_4(language),fontSize: fontSize),
                      ListTextSpanBoxWrapper(listItemData: chara_paragraph_01),
                      SubHeadings(content: clsVision02.subheadings_5(language),fontSize: fontSize),
                      ParagraphFormatter(richTextData: the_gov_paragraph_01),
                      ParagraphCenterFormatter(richTextData: the_gov_paragraph_02, marginGap: 50),
                      ParagraphFormatter(richTextData: the_gov_paragraph_03),
                      SubHeadings(content: clsVision02.subheadings_6(language),fontSize: fontSize),
                      ParagraphCenterFormatter(richTextData: the_lad_paragraph_01, marginGap: 50),
                      ParagraphFormatter(richTextData: the_lad_paragraph_02),
                      ParagraphCenterFormatter(richTextData: the_lad_paragraph_03, marginGap: 50),
                      ParagraphFormatter(richTextData: the_lad_paragraph_04),
                      ParagraphCenterFormatter(richTextData: the_lad_paragraph_05, marginGap: 50),
                      ParagraphFormatter(richTextData: the_lad_paragraph_06),
                      ListTextSpanBoxWrapper(listItemData: the_lad_paragraph_07),
                      ParagraphFormatter(richTextData: the_lad_paragraph_08),
                      ListTextSpanBoxWrapper(listItemData: the_lad_paragraph_09),
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
