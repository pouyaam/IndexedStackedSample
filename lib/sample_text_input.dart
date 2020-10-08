import 'package:flutter/material.dart';

class SampleTextInput extends StatelessWidget {
  final String title;

  const SampleTextInput({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "First Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Last Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Address"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Postal Code"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
