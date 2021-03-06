import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final tle = 'Google Form';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(tle),
        ),
        body: GoogleForm(),
      ),
    );
  }
}
// Remeber important

//When you create a form , It is necessary to provide global key

class GoogleForm extends StatefulWidget {
  GoogleForm({Key key}) : super(key: key);

  @override
  _GoogleFormState createState() => _GoogleFormState();
}

showalert(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text('Ok'),
    onPressed: () {
      Navigator.of(context).pop;
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Form"),
    content: Text("Form submitted"),
    actions: [
      okButton,
    ],
  );
}

class _GoogleFormState extends State<GoogleForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                icon: const Icon(Icons.person, color: Colors.blue),
                hintText: 'Enter your name',
                labelText: 'Name'),
          ),

          // contact number
          TextFormField(
            decoration: const InputDecoration(
                icon: const Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                hintText: 'Enter your number',
                labelText: 'Phone Number'),
          ),

          TextFormField(
            decoration: const InputDecoration(
                icon: const Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
                hintText: 'Enter your birth',
                labelText: 'Birth Date'),
          ),

          new Container(
            padding: const EdgeInsets.only(left: 150, top: 40),
            child: new RaisedButton(
              child: const Text('Submit'),
              onPressed: () {
                showalert(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
