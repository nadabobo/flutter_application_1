import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    File image;
    final imagePicker = ImagePicker();
    void uploadImage() async {
      var pickedImage = await imagePicker.getImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = File(pickedImage.path);
      } else {}
      
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Test",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 70,
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
                child: Image.asset(
              "image/1.png",
            )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: uploadImage,
                icon: Icon(
                  Icons.photo,
                  size: 25,
                  color: Colors.black,
                ),
                label: Text("Upload Image",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 205, 218, 224),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            
            // image == null ? Text(" not choosen image ") :
            //  Image.file(_image),

            // Container(
            //     padding: EdgeInsets.all(10),
            //     child: Form(
            //         child: Column(
            //       children: [
            //         // TextFormField(
            //         //   decoration: InputDecoration(
            //         //     enabledBorder: UnderlineInputBorder(
            //         //       borderRadius: BorderRadius.circular(100),
            //         //     ),
            //         //     labelText: "Add photo",
            //         //     contentPadding: EdgeInsets.all(1),
            //         //     labelStyle: TextStyle(
            //         //       fontSize: 25,
            //         //     ),
            //         //     prefixIcon: Icon(Icons.photo),

            //         //     filled: true,
            //         //   ),
            //         // ),
            //       ],
            //     )))
          ],
        ));
  }
}
