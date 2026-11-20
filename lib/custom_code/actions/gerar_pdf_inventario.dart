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
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

Future<String> gerarPdfInventario(
  List<ListaEstoqueRow> produtos,
  String nomeEscola,
) async {
  final pdf = pw.Document();

  final dataAtual = DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now());

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (context) => [
        pw.Text(
          'Inventário de Estoque',
          style: pw.TextStyle(
            fontSize: 24,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        pw.Text(nomeEscola),
        pw.Text(
          'Gerado em: $dataAtual',
        ),
        pw.SizedBox(height: 20),
        pw.Table.fromTextArray(
          headers: [
            'Produto',
            'Categoria',
            'Quantidade',
            'Unidade',
            'Status',
          ],
          data: produtos.map((produto) {
            return [
              produto.nome ?? '',
              produto.categoria ?? '',
              produto.quantidade?.toString() ?? '0',
              produto.unidade ?? '',
              produto.statusEstoque ?? '',
            ];
          }).toList(),
        ),
      ],
    ),
  );

  final output = await getTemporaryDirectory();

  final file = File(
    '${output.path}/inventario.pdf',
  );

  await file.writeAsBytes(
    await pdf.save(),
  );

  return file.path;
}
