import 'package:flutter/material.dart';
import 'package:my_card_flutter/theme.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;

  CollapsingListTile(
      {required this.title,
       required this.icon,
      required this.animationController});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 250, end: 60).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthAnimation.value,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Color(0xFFFFFFFF),
            size: 38,
          ),
          SizedBox(width: sizedBoxAnimation.value),
          (widthAnimation.value > 220)
              ? Text(widget.title, style: listTitleDefaultTextStyle)
              : Container()
        ],
      ),
    );
  }
}
