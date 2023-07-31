import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../Constants/Colors.dart';
import 'UploadDocs.dart';

class ProfileWidget extends StatefulWidget {
  String? profPic;
   ProfileWidget({Key? key, required this.profPic}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? imageFile;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        ProfileImage(),
        Positioned(
          right: 0,
          bottom: 0,
          child: IconButton(onPressed: (){
            getPhoto();
          },
              icon: const Icon(Icons.add_a_photo_rounded,
                color: MyColors.purpleColor,size: 40,)
          ),
        )]),
    );
  }

  void getPhoto() {
    showModalBottomSheet<void>(
        elevation: 30,
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
              color: MyColors.whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 50, top: 20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    CameraUpload(name: 'Take A Photo', onTap: (){_getFromCamera();}),
                    const SizedBox(height: 5,),
                    FileUpload(name: 'Pick A File', onTap: (){_getFromGallery();})

                  ]),
            ),
          );
        });
  }

  _getFromGallery() async {
    Navigator.pop(context);
    XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 640,
        maxWidth: 480,
        imageQuality: 100
    );
    if (pickedFile != null) {
      pickedFile =  await _cropImage(imageFile: pickedFile);
      setState(() {
        imageFile = File(pickedFile?.path ?? '');
        convertPhoto();
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    Navigator.pop(context);
    XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera
    );
    if (pickedFile != null) {
      pickedFile =  await _cropImage(imageFile: pickedFile);
      setState(() {
        imageFile = File(pickedFile?.path ?? '');
        convertPhoto();
      });
    }
  }

  //crop Image
  Future<XFile?> _cropImage({required XFile imageFile}) async {
    CroppedFile? croppedImage =
    await ImageCropper().cropImage(sourcePath: (imageFile.path).toString());
    if (croppedImage?.path == null) return imageFile;
    return XFile((croppedImage?.path).toString());
  }

  //convert to base64
  convertPhoto () async{
    Uint8List imagebytes = await imageFile!.readAsBytes() ; //convert to bytes
     widget.profPic = base64.encode(imagebytes); //convert bytes to base64 string
    return(widget.profPic);
  }

  Widget ProfileImage() {
      return
        CircleAvatar(
            minRadius: 60,
            maxRadius: 80,
            backgroundColor: Colors.grey.shade500,
            backgroundImage:(imageFile == null) ? Image.asset('assets/prof1.jpg').image:
            Image.file(imageFile!).image

        );
    }
}
