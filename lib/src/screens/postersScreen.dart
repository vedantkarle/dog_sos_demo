import 'package:app/src/models/entry.dart';
import 'package:app/src/providers/entry_provider.dart';
import 'package:app/src/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DogPosterScreen extends StatefulWidget {
  static const routeName = '/all-dog-posters';
  @override
  _DogPosterScreenState createState() => _DogPosterScreenState();
}

class _DogPosterScreenState extends State<DogPosterScreen> {
  @override
  Widget build(BuildContext context) {
    final entryProvider = Provider.of<EntryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Sos'),
      ),
      body: StreamBuilder<List<Entry>>(
          stream: entryProvider.entries,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: SingleDogPoster(
                    name: snapshot.data[index].name,
                    location: snapshot.data[index].location,
                    phone: snapshot.data[index].phone,
                    dogBreed: snapshot.data[index].dogBreed,
                    dogsCondition: snapshot.data[index].dogsCondition,
                  ),
                );
              },
            );
          }),
    );
  }
}
