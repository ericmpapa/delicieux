import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'
    as flutter_svg_provider;

class ImageAureole extends StatelessWidget {
  final double size;
  EdgeInsets? margin;
  ImageAureole({this.size = 0.0, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        height: size,
        width: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/flower.svg', height: size, width: size),
            Container(
              height: size - 50,
              width: size - 50,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: util.couleurFond2,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                clipper: OvalClipper(clipSize: size - 60),
                child: Image(
                  height: size - 60,
                  width: size - 60,
                  image: const AssetImage('assets/poulet_braisee.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}

class OvalClipper extends CustomClipper<Rect> {
  final double clipSize;
  OvalClipper({this.clipSize = 0});
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, clipSize, clipSize);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
