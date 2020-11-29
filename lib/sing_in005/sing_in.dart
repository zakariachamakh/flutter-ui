import 'package:flutter/material.dart';

class SingIn005 extends StatefulWidget {
  @override
  _SingIn005State createState() => _SingIn005State();
}

class _SingIn005State extends State<SingIn005> {
  GlobalKey _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'SFUIDisplay',
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg005.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 26,
                ),
                onPressed: () {},
              ),
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: Offset(
                            0, -MediaQuery.of(context).size.height * 0.08),
                        child: _titles(context),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 48),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: _form(context),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _titles(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffFF8960), Color(0xffFF62A5)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0));

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'O',
              style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient),
            ),
            Text(
              'RIGIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  letterSpacing: 1.5,
                  color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Text(
            "Makes your design workflow easy and save your time with Origin UI Kit",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w100,
                letterSpacing: 1.2,
                color: Colors.grey.shade100,
                wordSpacing: 1.1),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
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
      color: Colors.grey.shade700,
      fontWeight: FontWeight.w100,
      letterSpacing: 1.1,
      fontSize: 16,
    );
    TextStyle _titleForm = TextStyle(color: Colors.grey.shade400, fontSize: 18);

    return Form(
      key: _keyForm,
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
                  fontSize: 28,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w100),
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
                    color: Colors.grey.shade800,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
