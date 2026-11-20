// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

Future<String> gerarPdfTeste(
  String texto1,
  String texto2,
) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              texto1,
              style: pw.TextStyle(
                fontSize: 24,
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Text(
              texto2,
              style: pw.TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        );
      },
    ),
  );

  final output = await getTemporaryDirectory();

  final file = File(
    '${output.path}/teste_pdf.pdf',
  );

  await file.writeAsBytes(
    await pdf.save(),
  );

  return file.path;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
