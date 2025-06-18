abstract class DatabaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String docId,
  });
  Future<dynamic> getData({
    required String path,
    String uId,
    Map<String, dynamic>? query,
  });
  Future<bool> checkIfRegister({
    required String path,
    required String documentId,
  });
}
