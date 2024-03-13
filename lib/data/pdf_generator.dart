import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> downloadPDFBuffer(List<int> pdfBytes, String fileName) async {
  try {
    List<int> bytes = pdfBytes;
    final directory = await getExternalStorageDirectory();
    final file = File('${directory!.path}/$fileName');
    log('path $file');
    await file.writeAsBytes(bytes);
  } catch (e) {
    log('Error downloading PDF: $e');
  }
}

Future<bool> takePermission() async {
  var status = await Permission.storage.request();
  if (status == PermissionStatus.granted) {
    print("Storage permission granted");
    return true;
  } else {
    print("Storage permission denied");
    return false;
  }
}
