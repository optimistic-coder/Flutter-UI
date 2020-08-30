import 'package:CardDeck/model/member.dart';
import 'package:CardDeck/resources/sizes.dart';
import 'package:flutter/material.dart';

class ClippedImage extends StatelessWidget {
  final String ImagePath;
  final bool compactMode;
  static const BorderRadius cardBorderRadius =
      const BorderRadius.all(Radius.circular(size_12));
  ClippedImage({this.ImagePath, this.compactMode});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: compactMode ? size_0 : size_8,
      borderRadius: cardBorderRadius,
      child: ClipRRect(
        borderRadius: cardBorderRadius,
        child: Image.asset(
          ImagePath,
          height: compactMode ? 100 : 150,
          width: compactMode ? 80 : 110,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
