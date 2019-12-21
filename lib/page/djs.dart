import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Timer _timer;
  int _countdownTime = 0;
  void startCountdownTimer() {
    const oneSec = const Duration(seconds: 1);

    var callback = (timer) => {
          setState(() {
            if (_countdownTime < 1) {
              _timer.cancel();
            } else {
              _countdownTime = _countdownTime - 1;
            }
          })
        };
    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('倒计时'),
      ),
      body: GestureDetector(
      onTap: () {
        if (_countdownTime == 0) {
          //Http请求发送验证码
          setState(() {
            _countdownTime = 60;
          });
          //开始倒计时
          startCountdownTimer();
        }
      },
      child: Text(
        _countdownTime > 0 ? '$_countdownTime后重新获取' : '获取验证码',
        style: TextStyle(
          fontSize: 14,
          color: _countdownTime > 0
              ? Color.fromARGB(255, 183, 184, 195)
              : Color.fromARGB(255, 17, 132, 255),
        ),
      ),
    ),
    );
    
  }
}
