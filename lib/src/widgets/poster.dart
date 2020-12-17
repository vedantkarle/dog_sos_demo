import 'package:flutter/material.dart';

class SingleDogPoster extends StatefulWidget {
  final String name;
  final String location;
  final String phone;
  final String dogBreed;
  final String dogsCondition;

  SingleDogPoster(
      {this.name,
      this.location,
      this.phone,
      this.dogBreed,
      this.dogsCondition});

  @override
  _SingleDogPosterState createState() => _SingleDogPosterState();
}

class _SingleDogPosterState extends State<SingleDogPoster> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.yellow[400],
          ),
          height: 500,
          padding: EdgeInsets.all(20),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('./assets/dog.jpg'),
                  radius: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Found By:'),
                    Text(widget.name),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Phone:'),
                    Text(widget.phone.toString()),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Location:'),
                    Text(widget.location),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dog Breed:'),
                    Text(widget.dogBreed),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dog Condition:'),
                    Text(widget.dogsCondition),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
