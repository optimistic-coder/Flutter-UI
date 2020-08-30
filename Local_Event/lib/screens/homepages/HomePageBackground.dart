import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {
  final screenHeight;
  HomePageBackground({this.screenHeight});
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ClipPath(
      clipper: BottomShadeClipper(),
      child: Container(
        height: screenHeight * 0.5,
        color: themeData.primaryColor,
      ),
    );
  }
}

class BottomShadeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartpont = Offset(0, size.height * 0.85);
    Offset curveEndpont = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartpont.dx, curveStartpont.dy);

    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndpont.dx, curveEndpont.dy);
    path.lineTo(size.width, 0);
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
