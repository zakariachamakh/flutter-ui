import 'package:flutter/material.dart';

class SingIn001 extends StatefulWidget {
  @override
  _SingIn001State createState() => _SingIn001State();
}

class _SingIn001State extends State<SingIn001> {
  GlobalKey _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'SFUIDisplay',
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    offset:
                        Offset(0, -MediaQuery.of(context).size.height * 0.08),
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
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Makes your design workflow easy and save your time with Origin UI Kit",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.2,
              color: Colors.grey.shade700),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _form(BuildContext context) {
    OutlineInputBorder _borderSytle = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(45),
      ),
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );

    BoxDecoration _bgcInputForm = BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.all(
        Radius.circular(45),
      ),
    );
    TextStyle _hindColor = TextStyle(color: Colors.grey.shade500);

    return Form(
      key: _keyForm,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            decoration: _bgcInputForm,
            child: TextFormField(
              style: TextStyle(color: Colors.redAccent),
              cursorColor: Colors.redAccent,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'User name',
                hintStyle: _hindColor,
                border: _borderSytle,
                disabledBorder: _borderSytle,
                enabledBorder: _borderSytle,
                errorBorder: _borderSytle,
                focusedBorder: _borderSytle,
                focusedErrorBorder: _borderSytle,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.zero,
            decoration: _bgcInputForm,
            child: TextFormField(
              obscureText: true,
              cursorColor: Colors.redAccent,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Password ',
                hintStyle: _hindColor,
                border: _borderSytle,
                disabledBorder: _borderSytle,
                enabledBorder: _borderSytle,
                errorBorder: _borderSytle,
                focusedBorder: _borderSytle,
                focusedErrorBorder: _borderSytle,
              ),
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
              color: Colors.grey.shade400,
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
                color: Colors.grey.shade500,
                fontSize: 16,
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
    );
  }
}
