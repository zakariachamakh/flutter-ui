import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingIn003 extends StatefulWidget {
  @override
  _SingIn003State createState() => _SingIn003State();
}

class _SingIn003State extends State<SingIn003> {
  GlobalKey _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFFF8960),
              Color(0xFFFF62A5),
              Color(0xFFFF62A5),
            ],
            stops: [
              0.1,
              0.8,
              0.9,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              toolbarHeight: 0.0,
            ),
            body: _sign(context)),
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
            body: Container(
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  _title(context),
                  _form(context),
                  _action(context),
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
          height: 18,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
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
        ),
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
                  Color(0xFFFF8960),
                  Color(0xFFFF62A5),
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _sign(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, MediaQuery.of(context).size.height * 0.38),
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(28),
        padding: EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ?",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 17,
                letterSpacing: 1.1,
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
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
