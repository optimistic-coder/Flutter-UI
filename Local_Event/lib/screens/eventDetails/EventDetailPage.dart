import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/event.dart';
import 'EventDetailBackground.dart';
import 'EventDetailContent.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;
  const EventDetailPage({Key key, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          children: <Widget>[EventDetailBackground(), EventDetailContent()],
        ),
      ),
    );
  }
}
