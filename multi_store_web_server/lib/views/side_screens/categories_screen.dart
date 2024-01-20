import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  static const String screenRoute = "CategoryScreen";

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  dynamic _image;
  String? _fileName;

  pickImage() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
    );

    if (result != null){
      setState(() {
        _image = result.files.first.bytes;
        _fileName = result.files.first.name;
      });
    }
  }

  _uploadToFirebaseStorage(dynamic image) async{
    // null check with !
    var ref = _firebaseStorage.ref().child('Category').child(_fileName!);

    UploadTask uploadTask = ref.putData(image);
    TaskSnapshot taskSnapshot = await uploadTask;
    String downloadURL = await taskSnapshot.ref.getDownloadURL();
    return downloadURL;
  }

  _uploadToFirestore() async{
    EasyLoading.show();
    if(_image != null){
      var imageURL = await _uploadToFirebaseStorage(_image);
      await _firebaseFirestore.collection("Category").doc(_fileName).set(
          {
            'image': imageURL,
          }
      ).whenComplete(() {
        EasyLoading.dismiss();
        setState(() {
          _image = null;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Upload Category',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),

          Row(
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius:  BorderRadius.circular(10)
                ),
                child: Center(
                    child: _image != null ? Image.memory(_image, fit: BoxFit.cover,) : Text('Upload Category')),
              ),
              ElevatedButton(
                onPressed: (){
                  pickImage();
                },
                child: Text("Upload Category"),
              )
            ],

          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: (){
              _uploadToFirestore();
            },
            child: Text("Save Category"),
          )
        ],
      ),
    );
  }
}