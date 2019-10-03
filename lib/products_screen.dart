import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Product $index'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/addproduct');
        },
      ),
    );
  }
}
