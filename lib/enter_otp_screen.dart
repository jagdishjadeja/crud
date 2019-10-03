import 'package:flutter/material.dart';

class EnterOtpScreen extends StatefulWidget {
  @override
  _EnterOtpScreenState createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  final String otp = "123456";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  _authenticateLogin() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      Navigator.pushNamed(context, '/products');
    } else {
//    If all data are not valid then start auto validation.
      setState(() => _autoValidate = true);
    }
  }

  String validateOTP(String userOtp) {
    if (userOtp.length != 6) {
      return "Invalid OTP!";
    } else if (userOtp != otp) {
      return "Incorrect OTP!";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: "Enter  OTP"),
                  textAlign: TextAlign.center,
                  maxLength: 6,
                  validator: validateOTP,
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: _authenticateLogin,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
