import 'package:CardDeck/model/member.dart';
import 'package:CardDeck/resources/sizes.dart';
import 'package:CardDeck/resources/text_styles.dart';
import 'package:CardDeck/widget/ClippedImage.dart';
import 'package:CardDeck/widget/NameWidget.dart';
import 'package:flutter/material.dart';

class MemberDetailsPage extends StatelessWidget {
  final Member member;

  MemberDetailsPage({this.member});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Hero(
            tag: member.imagePath,
            child: Image.asset(
              member.imagePath,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            )),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Positioned(
            top: size_40,
            right: size_20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: size_40,
              ),
            )),
        Padding(
          padding: EdgeInsets.only(left: size_40, right: size_20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size_120,
              ),
              NameWidget(
                name: member.name,
                style: nameBigStyle,
              ),
              SizedBox(
                height: size_8,
              ),
              Text(
                member.occupation,
                style: descriptionBoldStyle,
              ),
              SizedBox(height: size_20),
              Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      member.description,
                      style: descriptionStyle,
                    ),
                  )),
              SizedBox(height: size_20),
              Text(
                "Our Team members ".toUpperCase(),
                style: descriptionBoldStyle,
              ),
              SizedBox(
                height: size_8,
              ),
              Container(
                height: size_100,
                padding: EdgeInsets.only(bottom: 20),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClippedImage(
                          compactMode: true,
                          ImagePath: members[index].imagePath);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: size_12,
                      );
                    },
                    itemCount: members.length),
              )
            ],
          ),
        )
      ],
    );
  }
}
