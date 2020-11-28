import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingIn004 extends StatefulWidget {
  @override
  _SingIn004State createState() => _SingIn004State();
}

class _SingIn004State extends State<SingIn004> {
  GlobalKey _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFB739F3),
              Color(0xFF6950FB),
            ],
            stops: [
              0.1,
              0.9,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
        ),
        Theme(
          data: ThemeData(
            fontFamily: 'SFUIDisplay',
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 56),
                    padding: EdgeInsets.all(24),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        _title(context),
                        _form(context),
                        _action(context),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 48,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 48,
                          color: Colors.lightBlue,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.googlePlusG,
                          size: 48,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 56,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 18, bottom: 18),
      child: Text(
        'Sign in',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w100,
          letterSpacing: 1.5,
        ),
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
        ],
      ),
    );
  }

  Widget _action(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
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
                Radius.circular(5),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB739F3),
                  Color(0xFF6950FB),
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
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.3,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
