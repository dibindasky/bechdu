import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class ScreenPdfPreview extends StatelessWidget {
  const ScreenPdfPreview({super.key, required this.base64});

  final String base64;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
      ),
      body: PdfViewer.openData(
        base64Decode(base64),
        onError: (_) => const Center(
          child: Text('Could not load invoice please try again'),
        ),
      ),
    );
  }
}
