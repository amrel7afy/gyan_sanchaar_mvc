// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/foundation.dart';

class ImagePickerController extends GetxController {
  Rxn<File> profileImage = Rxn<File>();
  Rxn<File> aadharFrontImage = Rxn<File>();
  Rxn<File> aadharBackImage = Rxn<File>();

  String? base64profileImage;
  String? base64aadharFrontImage;
  String? base64aadharBackImage;

  Future<void> pickImage(int flag) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      if (flag == 1) {
        profileImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64profileImage = base64.encode(imagebytes);
      } else if (flag == 2) {
        aadharFrontImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64aadharFrontImage = base64.encode(imagebytes);
      } else if (flag == 3) {
        aadharBackImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64aadharBackImage = base64.encode(imagebytes);
      }
    }
  }

  Future<void> captureImage(int flag) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if (flag == 1) {
        profileImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64profileImage = base64.encode(imagebytes);
      } else if (flag == 2) {
        aadharFrontImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64aadharFrontImage = base64.encode(imagebytes);
      } else if (flag == 3) {
        aadharBackImage.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64aadharBackImage = base64.encode(imagebytes);
      }
    }
  }
}
