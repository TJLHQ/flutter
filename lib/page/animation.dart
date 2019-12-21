import 'package:flutter/material.dart';

class AnimationTest extends StatefulWidget {
  @override
  _AnimationTestState createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;
  Tween<double> _sizeTween;
  Tween<Color> _colorTween;
  Animation<Decoration> _decorationTween;
  Animation<RelativeRect> _positioned;
  @override
  void initState() {
    super.initState();

    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 3000));
    _animation = new CurvedAnimation(
        parent: _animationController, curve: Curves.easeOut);
    _sizeTween = new Tween(begin: 0.0, end: 300.0);
    _colorTween =
        new ColorTween(begin: Colors.transparent, end: Colors.amberAccent);
    _decorationTween = new DecorationTween(
            begin: BoxDecoration(
                borderRadius: BorderRadius.circular(0), color: Colors.red),
            end: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.yellow))
        .animate(_animationController);
    _positioned = RelativeRectTween(
            begin: RelativeRect.fromLTRB(200.0, 200.0, 200.0, 200.0),
            end: RelativeRect.fromLTRB(20.0, 20.0, 20.0, 20.0))
        .animate(_animationController);

    _animation.addListener(() {
      print('listener');
      setState(() {});
    });
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_sizeTween);
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('animation'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //   SizeTransition(
            //   sizeFactor: _animationController,
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.red,
            //   ),
            // ),
            // FadeTransition(
            //   opacity: _animationController,
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.pink,
            //   ),
            // ),
            // Container(
            //   width: _sizeTween.evaluate(_animation),
            //   height: _sizeTween.evaluate(_animation),
            //   color: _colorTween.evaluate(_animation),
            // ),
            // DecoratedBoxTransition(
            //   decoration: _decorationTween,
            //   child: Container(
            //     width: 100.0,
            //     height: 100.0,
            //   ),
            // ),
            // RaisedButton(
            //   onPressed: (){
            //   _animationController.forward();
            //   },
            // ),
            // Stack(children: <Widget>[
            //   PositionedTransition(
            //     rect: _positioned,
            //     child: GestureDetector(
            //       onTap: () {
            //         _animationController.forward();
            //       },
            //       child: Container(
            //         width: 100.0,
            //         height: 100.0,
            //         color: Colors.red,
            //       ),
            //     ),
            //   )
            // ]),
//             RotationTransition(
//                 turns: new Tween(begin: 0.0, end: 0.5)
//                     .animate(_animationController),
//                 child: Container(
//                   width: 100.0,
//                   height: 100.0,
//                   color: Colors.red,
//                   child: Text('12345678'),
//                 )),
//             ScaleTransition(
//                 scale: new Tween(begin: 1.0, end: 0.5)
//                     .animate(_animationController),
//                 child: Container(
//                   width: 100.0,
//                   height: 100.0,
//                   color: Colors.red,
//                   child: Text('12345678'),
//                 )),
//                 SizeTransition(
//     axis: Axis.horizontal, //控制宽度或者高度缩放
//     sizeFactor:
//         new Tween(begin: 1.0, end: 0.5).animate(_animationController),
//     child: Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.red,
//       child: Text('12345678'),
//     )
// ),
            SlideTransition(
                position: new Tween(
                  begin: Offset(0.0, 0.0),
                  end: Offset(2, 2),
                ).animate(_animationController),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                  child: Text('12345678'),
                )),
            AnimatedDefaultTextStyle(
                child: Text('1234567'),
                style: TextStyle(color: Colors.red),
                duration: Duration(seconds: 2))
          ],
        ));
  }
}
