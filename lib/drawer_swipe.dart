library drawer_swipe;

import 'package:flutter/material.dart';

class SwipeDrawer extends StatefulWidget {
  // Drawer background color
  final Color backgroundColor;

  // screen body
  final Widget child;

  // screen drawerBody
  final Widget drawer;

  //  body width when opening the drawer
  final double bodySize;

  final double bodyBackgroundPeekSize;

  final double radius;

  SwipeDrawer({@required this.child,
    @required this.drawer,
    this.bodySize = 80,
    this.radius = 0,
    this.bodyBackgroundPeekSize = 50,
    Key key,
    this.backgroundColor = Colors.black})
      : super(key: key);

  @override
  SwipeDrawerState createState() => SwipeDrawerState();
}

class SwipeDrawerState extends State<SwipeDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  bool dragging = false;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //get Directionality
    TextDirection currentDirection = Directionality.of(context);
    bool isRTL = currentDirection == TextDirection.rtl;
    // get Screen Size
    Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, snapshot) {
            double scale = .8 + .2 * (1 - animationController.value);
            double scaleSmall = .7 + .3 * (1 - animationController.value);
            double reverse = isRTL ? -1 : 1;
            return Stack(
              overflow: Overflow.visible,
              children: [
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Container(
                    height: size.height,
                    width: size.width,
                    color: widget.backgroundColor,
                  ),
                ),
                Opacity(
                  opacity: .3,
                  child: buildAnimationBody(scaleSmall, size,
                      widget.bodySize + widget.bodyBackgroundPeekSize, reverse),
                ),
                GestureDetector(
                    onHorizontalDragStart: (details) {},
                    behavior: HitTestBehavior.translucent,
                    child: buildAnimationBody(
                        scale, size, widget.bodySize, reverse)),
                Transform.translate(
                  offset: Offset(
                      -size.width * (1 - animationController.value) * reverse,
                      0),
                  child: buildDrawer(size),
                ),
              ],
            );
          }),
    );
  }


  Container buildDrawer(Size size) {
    return Container(
        width: size.width - (widget.bodySize + widget.bodyBackgroundPeekSize),
        child: widget.drawer);
  }

  Transform buildAnimationBody(double scale, Size size, double move,
      double revers) {
    return Transform(
        transform: Matrix4.identity()
          ..scale(scale, scale)
          ..translate(
              (revers) * (size.width - move) * (animationController.value)),
        alignment: FractionalOffset.center,
        // offset: Offset(
        //     (size.width - 100) * (animationController.value), 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isOpened()?widget.radius:0),
          child: widget.child,
        ));
  }

  openOrClose() {
    if (isOpened())
      closeDrawer();
    else
      openDrawer();
  }

  openDrawer() {
    animationController.forward();
  }

  closeDrawer() {
    animationController.reverse();
  }

  bool isOpened() {
    return animationController.isCompleted;
  }
}

