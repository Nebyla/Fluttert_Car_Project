part of '../ui.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;


  TextWidget({
    required this.text,
    required this.color,
    required this.fontSize,
    this.fontWeight, this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,softWrap: true,style: TextStyle(color:color,fontSize: fontSize,fontWeight: fontWeight, fontStyle: fontStyle),);
  }
}