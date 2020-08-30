import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  final String name;
  final TextStyle style;
  NameWidget({this.name, this.style});
  @override
  Widget build(BuildContext context) {
    final List<String> namePartition = name.split(" ");
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: namePartition[0].toUpperCase(), style: style),
      if (namePartition.length > 1)
        TextSpan(text: "\n${namePartition[1].toUpperCase()}", style: style)
    ]));
  }
}
