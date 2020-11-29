import 'package:flutter/material.dart';

class SingIn002 extends StatefulWidget {
  @override
  _SingIn002State createState() => _SingIn002State();
}

class _SingIn002State extends State<SingIn002> {
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
            'assets/images/bg1.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              toolbarHeight: 0.0,
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 36),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: Offset(
                            0, -MediaQuery.of(context).size.height * 0.08),
                        child: _titles(context),
                      ),
                      _form(context),
                      SizedBox(
                        height: 48,
                      ),
                      _action(context),
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
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _form(BuildContext context) {
    UnderlineInputBorder _borderStyle = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade50, width: 0.4),
    );
    TextStyle _hindColor = TextStyle(color: Colors.white);

    return Form(
      key: _keyForm,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: Colors.grey.shade50),
            cursorColor: Colors.redAccent,
            decoration: InputDecoration(
              hintText: 'User name',
              hintStyle: _hindColor,
              border: _borderStyle,
              focusedBorder: _borderStyle,
              focusedErrorBorder: _borderStyle,
              errorBorder: _borderStyle,
              enabledBorder: _borderStyle,
              disabledBorder: _borderStyle,
            ),
          ),
          SizedBox(
            height: 48,
          ),
          TextFormField(
            obscureText: true,
            style: TextStyle(color: Colors.grey.shade50),
            cursorColor: Colors.redAccent,
            decoration: InputDecoration(
              hintText: 'Password ',
              hintStyle: _hindColor,
              border: _borderStyle,
              focusedBorder: _borderStyle,
              focusedErrorBorder: _borderStyle,
              errorBorder: _borderStyle,
              enabledBorder: _borderStyle,
              disabledBorder: _borderStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _action(BuildContext context) {
    return Column(
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 56,
            width: double.infinity,
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(45),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF8960),
                  Color(0xFFFF62A5),
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Forgot your password?',
            style: TextStyle(
              color: Colors.grey.shade50,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 36,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ?",
              style: TextStyle(
                color: Colors.grey.shade50,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Sing up',
                style: TextStyle(
                  color: Color(0xFFFF8960),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
