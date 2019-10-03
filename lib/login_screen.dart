import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _mobile;
  bool _autoValidate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  _sendotp() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      Navigator.pushNamed(context, '/enterotp');
    } else {
//    If all data are not valid then start auto validation.
      setState(() => _autoValidate = true);
    }
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: "Enter Mobile no."),
                validator: validateMobile,
                onSaved: (value) => _mobile = value,
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  _sendotp();
                },
                child: Text('Send OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
