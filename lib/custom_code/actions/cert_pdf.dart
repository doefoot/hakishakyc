// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

Future certPdf(
  String name,
  String email,
) async {
  // Add your function code here!

  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          pw.Text(name,
              style: const pw.TextStyle(
                // color: PdfColors.cyan
                fontSize: 30,
              )),
          pw.Divider(thickness: 2),
          pw.Text(name),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(width: 10),
              pw.Text(email),
              pw.SizedBox(width: 10),
//              pw.Text("Certificate Date: ", printDate),
            ],
          )
        ]);
      })); // Page

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
