import 'dart:io';



class FirebaseCloudStoreRepository {
  Future<String> cloudStorage(String path) async {
    File file=File(path);
    return "";
    // return await FirebaseCloudStorageDataProvider().cloudStorage(file);
  }

  Future<String?> uploadImage(String? path) async {
    return "";
    // return await FirebaseCloudStorageDataProvider().uploadImage(path);
  }

  Future<String?> uploadVideo(String? path) async {
    return "";
    // return await FirebaseCloudStorageDataProvider().uploadVideo(path);
  }
}
