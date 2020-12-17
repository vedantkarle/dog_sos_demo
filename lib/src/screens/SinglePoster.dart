// import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'dart:ui' as ui;

class DogPoster extends StatefulWidget {
  static const routeName = '/dog-poster';
  @override
  _DogPosterState createState() => _DogPosterState();
}

class _DogPosterState extends State<DogPoster> {
  GlobalKey _containerKey = GlobalKey();
  bool loading = false;
  // StorageReference storageReference = FirebaseStorage().ref();

  // void convertWidgetToImage() async {
  //   RenderRepaintBoundary renderRepaintBoundary =
  //       _containerKey.currentContext.findRenderObject();

  //   ui.Image boxImage = await renderRepaintBoundary.toImage(pixelRatio: 1);
  //   ByteData byteData =
  //       await boxImage.toByteData(format: ui.ImageByteFormat.png);
  //   Uint8List uint8list = byteData.buffer.asUint8List();
  //   this.setState(() {
  //     loading = true;
  //   });
  //   StorageUploadTask storageUploadTask = storageReference
  //       .child("IMG_${DateTime.now().microsecondsSinceEpoch}.png")
  //       .putData(uint8list);

  //   await storageUploadTask.onComplete;
  //   this.setState(() {
  //     loading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Sos'),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RepaintBoundary(
                key: _containerKey,
                child: DogPoster(),
              ),
              RaisedButton(
                onPressed: () {
                  // convertWidgetToImage();
                },
                child: Text('Share'),
              ),
            ],
          ),
          loading
              ? Center(
                  child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ))
              : Center(),
        ],
      ),
    );
  }
}
