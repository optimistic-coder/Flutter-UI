import 'package:CardDeck/model/member.dart';
import 'package:CardDeck/pages/MemberDetailPage.dart';
import 'package:CardDeck/resources/sizes.dart';
import 'package:CardDeck/resources/text_styles.dart';
import 'package:CardDeck/widget/ClippedImage.dart';
import 'package:CardDeck/widget/NameWidget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MemeberWidget extends StatelessWidget {
  final Member member;
  final bool compactMode;
  MemeberWidget({this.member, this.compactMode});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MemberDetailsPage(member: member)));
      },
      child: Row(
        children: <Widget>[
          Hero(
              tag: member.imagePath,
              child: ClippedImage(
                ImagePath: member.imagePath,
                compactMode: compactMode,
              )),
          SizedBox(
            width: size_20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NameWidget(
                name: member.name,
                style: nameStyle,
              ),
              SizedBox(
                height: size_8,
              ),
              Text(
                member.occupation,
                style: occupationStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
