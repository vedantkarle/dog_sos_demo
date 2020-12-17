import 'package:app/src/models/entry.dart';
import 'package:app/src/providers/entry_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _name = TextEditingController();

  final _location = TextEditingController();

  final _phone = TextEditingController();

  final _breed = TextEditingController();

  final _condition = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final entryProvider = Provider.of<EntryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog SOS'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Your Name',
                    ),
                    onChanged: (String value) =>
                        entryProvider.changeName = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _location,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Location',
                    ),
                    onChanged: (String value) =>
                        entryProvider.changeLocation = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone',
                    ),
                    onChanged: (String value) =>
                        entryProvider.changePhone = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _breed,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dogs Breed(If you know)',
                    ),
                    onChanged: (String value) =>
                        entryProvider.changeDogBreed = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _condition,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dogs Condition',
                    ),
                    onChanged: (String value) =>
                        entryProvider.changeDogsCondition = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      entryProvider.saveEntry();
                      Navigator.of(context).pushNamed('/all-dog-posters');
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
