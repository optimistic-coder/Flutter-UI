import 'package:CardDeck/model/member.dart';
import 'package:CardDeck/resources/colors.dart';
import 'package:CardDeck/resources/sizes.dart';
import 'package:CardDeck/resources/text_styles.dart';
import 'package:CardDeck/widget/MemberWidget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class TeamMemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        title: Text(
          "Oue Team",
          style: appBarTextStyle,
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Row(
        children: <Widget>[
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 10,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MemeberWidget(
                    member: members[index],
                    compactMode: false,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: size_20,
                  );
                },
                itemCount: members.length),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
