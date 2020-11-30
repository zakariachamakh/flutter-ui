import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingIn007 extends StatefulWidget {
  @override
  _SingIn007State createState() => _SingIn007State();
}

class _SingIn007State extends State<SingIn007> {
  GlobalKey _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            size: 28,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _header(context),
                SizedBox(
                  height: 48,
                ),
                _form(context),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Verification",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.1,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Please enter your mobile phone number.",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: Colors.grey.shade800,
          ),
        ),
        SizedBox(
          height: 8,
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
      color: Colors.grey.shade800,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.1,
      fontSize: 16,
    );

    return Form(
      key: _keyForm,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: _formbgc,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.grey.shade50),
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                hintText: '0123 456 7890 ',
                hintStyle: _hindColor,
                border: _borderStyle,
                focusedBorder: _borderStyle,
                focusedErrorBorder: _borderStyle,
                errorBorder: _borderStyle,
                enabledBorder: _borderStyle,
                disabledBorder: _borderStyle,
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.grey.shade600,
                  size: 22,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  color: _formbgc,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.grey.shade50),
                    cursorColor: Colors.redAccent,
                    decoration: InputDecoration(
                      hintText: 'Enter PIN',
                      hintStyle: _hindColor,
                      border: _borderStyle,
                      focusedBorder: _borderStyle,
                      focusedErrorBorder: _borderStyle,
                      errorBorder: _borderStyle,
                      enabledBorder: _borderStyle,
                      disabledBorder: _borderStyle,
                      prefixIcon: Icon(
                        Icons.fiber_pin,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Resend',
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                color: Colors.redAccent.withOpacity(0.9),
              ),
            ],
          ),
          SizedBox(
            height: 28,
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
                    Color(0xffFF8960),
                    Color(0xffFF62A5),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'By clicking start, you agree to ',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 14,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'our Conditions',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14,
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
