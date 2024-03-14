import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphBoxFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphCenterFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import '../../../../widgets/ads/BannerAds.dart';
import '../../classes/clsLanguageSelector.dart';

class Vision00 extends StatelessWidget {
  final String colorTheme;
  final double fontSize;
  final String language;
  const Vision00({super.key,required this.colorTheme,required this.fontSize,required this.language});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    List<clsRichTextFormatter> intro_paragraph_01 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_01(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_02 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_02(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_03 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_03_1(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision00.intro_paragraph_03_2(language),fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:clsVision00.intro_paragraph_03_3(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_04 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_04(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_05 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_05(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_06 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_06(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_07 = [
      clsRichTextFormatter(content:clsVision00.intro_paragraph_07(language),fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
      clsRichTextFormatter(content:'',fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, bColor: colorTheme, fontSize: fontSize, isDarkMode: isDarkMode),
    ];
    List<clsRichTextFormatter> intro_paragraph_08 = [
      clsRichTextFormatter(content:'Cesar Castellanos ',fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, bColor: '', fontSize: fontSize, isDarkMode: isDarkMode),
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
                      SizedBox(height: 50,),
                      Center(child: Text('WELCOME TO ',style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),)),
                      Center(child: Image.asset('assets/images/raw_icon.png',height: 100,width: 100,)),
                      Center(child: Text('School of Leaders I',style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 40,),
                      ParagraphFormatter(richTextData: intro_paragraph_01),
                      ParagraphFormatter(richTextData: intro_paragraph_02),
                      ParagraphFormatter(richTextData: intro_paragraph_03),
                      ParagraphFormatter(richTextData: intro_paragraph_04),
                      ParagraphFormatter(richTextData: intro_paragraph_05),
                      ParagraphFormatter(richTextData: intro_paragraph_06),
                      ParagraphBoxFormatter(richTextData: intro_paragraph_07),
                      ParagraphCenterFormatter(richTextData: intro_paragraph_08, marginGap: 50),
                      SizedBox(height: 100,),
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
