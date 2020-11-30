import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SingIn006 extends StatefulWidget {
  @override
  _SingIn006State createState() => _SingIn006State();
}

class _SingIn006State extends State<SingIn006> {
  VideoPlayerController _controller;
  bool isPaused;
  GlobalKey _keyForm;

  @override
  void initState() {
    super.initState();
    isPaused = false;
    _keyForm = GlobalKey();
    _controller = VideoPlayerController.asset('assets/videos/Boxing.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size?.width ?? 0,
                height: _controller.value.size?.height ?? 0,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-12, MediaQuery.of(context).size.height * 0.15),
            child: Align(
              alignment: Alignment.topCenter,
              child: IconButton(
                icon: Icon(
                  Icons.pause_circle_outline,
                  color: Colors.white.withOpacity(0.2),
                  size: 72,
                ),
                onPressed: () {
                  if (!isPaused) {
                    _controller.pause();
                    setState(() {
                      isPaused = true;
                    });
                  } else {
                    _controller.play();
                    setState(() {
                      isPaused = false;
                    });
                  }
                },
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, MediaQuery.of(context).size.height * 0.25),
            child: _form(context),
          ),
        ],
      ),
    );
  }

  Widget _form(BuildContext context) {
    OutlineInputBorder _borderStyle = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
    Color _formbgc = Colors.grey.shade100.withOpacity(0.9);
    TextStyle _hindColor = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      letterSpacing: 1.1,
      fontSize: 16,
    );
    TextStyle _titleForm = TextStyle(color: Colors.grey.shade400, fontSize: 18);

    return Form(
      key: _keyForm,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 56),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.grey.shade50,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Email',
                textAlign: TextAlign.start,
                style: _titleForm,
              ),
            ),
            Container(
              color: _formbgc,
              child: TextFormField(
                style: TextStyle(color: Colors.grey.shade50),
                cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  hintText: 'support@freeslabs.com',
                  hintStyle: _hindColor,
                  border: _borderStyle,
                  focusedBorder: _borderStyle,
                  focusedErrorBorder: _borderStyle,
                  errorBorder: _borderStyle,
                  enabledBorder: _borderStyle,
                  disabledBorder: _borderStyle,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Password',
                textAlign: TextAlign.start,
                style: _titleForm,
              ),
            ),
            Container(
              color: _formbgc,
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.grey.shade50),
                cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: _hindColor,
                  border: _borderStyle,
                  focusedBorder: _borderStyle,
                  focusedErrorBorder: _borderStyle,
                  errorBorder: _borderStyle,
                  enabledBorder: _borderStyle,
                  disabledBorder: _borderStyle,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sing up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
