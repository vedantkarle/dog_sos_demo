import 'package:app/src/services/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../models/entry.dart';

class EntryProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _entryId;
  String _name;
  String _location;
  String _phone;
  String _dogBreed;
  String _dogsCondition;

  var uuid = Uuid();

  //Getters

  String get name => _name;
  String get location => _location;
  String get phone => _phone;
  String get dogBreed => _dogBreed;
  String get dogsCondition => _dogsCondition;

  Stream<List<Entry>> get entries => firestoreService.getEntries();

  //Setters
  set changeName(String name) {
    _name = name;
    notifyListeners();
  }

  set changeLocation(String location) {
    _location = location;
    notifyListeners();
  }

  set changePhone(String phone) {
    _phone = phone;
    notifyListeners();
  }

  set changeDogBreed(String dogBreed) {
    _dogBreed = dogBreed;
    notifyListeners();
  }

  set changeDogsCondition(String dogsCondition) {
    _dogsCondition = dogsCondition;
    notifyListeners();
  }

  //Functions
  loadAll(Entry entry) {
    if (entry != null) {
      _entryId = entry.entryId;
      _name = entry.name;
      _location = entry.location;
      _phone = entry.phone;
      _dogBreed = entry.dogBreed;
      _dogsCondition = entry.dogsCondition;
    } else {
      _entryId = null;
      _name = null;
      _location = null;
      _phone = null;
      _dogBreed = null;
      _dogsCondition = null;
    }
  }

  saveEntry() {
    if (_entryId == null) {
      //Add
      var newEntry = Entry(
          entryId: uuid.v1(),
          name: _name,
          location: _location,
          phone: _phone,
          dogBreed: _dogBreed,
          dogsCondition: _dogsCondition);
      firestoreService.setEntry(newEntry);
    } else {
      //Edit
    }
  }
}
