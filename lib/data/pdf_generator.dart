import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:open_file/open_file.dart';
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
    var dir = await DownloadsPathProvider.downloadsDirectory;
    if (dir != null) {
      String savename = "file.pdf";
      String savePath = dir.path + "/$savename";
      log(savePath);
      try {
        var bytes = base64Decode(base64String.replaceAll("\n", ''));

        final file = File(savePath);
        await file.writeAsBytes(bytes);
        print('PDF Path: ${file.path}');
        await OpenFile.open(file.path);
      } on DioException catch (e) {
        log(e.message.toString());
      }
    } else {
      log("No permission to read and write.");
    }
  } catch (e) {
    print('Error generating PDF: $e');
  }
}
