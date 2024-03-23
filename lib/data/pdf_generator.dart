import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> takePermission() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
    //add more permission to request here.
  ].request();
  if (statuses[Permission.storage]!.isGranted) {
    return true;
  } else {
    return false;
  }
}

Future<void> pdfGenerator(String base64String) async {
  try {
    var dir =
        await getExternalStorageDirectory(); // Use getExternalStorageDirectory() instead of DownloadsPathProvider
    if (dir != null) {
      String savePath =
          '${dir.path}/file.pdf'; // Simplify the savePath generation
      print('Saving PDF to: $savePath');

      var bytes = base64.decode(base64String.replaceAll(
          "\n", '')); // Use base64.decode instead of base64Decode

      final file = File(savePath);
      await file.writeAsBytes(bytes);
      print('PDF Path: ${file.path}');
      await OpenFile.open(file.path);
    } else {
      print("No permission to read and write.");
    }
  } on PlatformException catch (e) {
    print('Platform Exception: ${e.message}');
  } catch (e) {
    print('Error generating PDF: $e');
  }
}
