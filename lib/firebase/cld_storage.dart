import 'dart:io';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> uploadFile(String? filepath, String? filename) async {
    if (filepath != null && filename != null) {
      File file = File(filepath);

      try {
        await storage.ref('orders/$filename').putFile(file);
      } on firebase_core.FirebaseException catch (e) {
        print(e);
      }
    }
  }

  Future<String> downloadUrl(String? imageName) async {
    if (imageName != null) {
      String downloadURL =
          await storage.ref('orders/$imageName').getDownloadURL();

      return downloadURL;
    }
    return 'not found';
  }
}
