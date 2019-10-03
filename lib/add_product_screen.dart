import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (String field) {
                  if (field.length == 0) {
                    return "Why so empty ?";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(hintText: 'Product Name'),
              ),
              SizedBox(height: 50),
              RaisedButton(
                onPressed: () {},
                child: Text('Add This AwEesome product'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
