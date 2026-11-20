// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future registrarMovimentacao(
  String produtoId,
  String tipoMovimentacao,
  double quantidade,
  String? usuarioResponsavel,
  String? destinoMovimentacao,
  String? observacoes,
  DateTime? dataMovimentacao,
) async {
  // Add your function code here!
  try {
    final supabase = Supabase.instance.client;

    await supabase.rpc(
      'registrar_movimentacao',
      params: {
        'produto_id': produtoId,
        'tipo_movimentacao': tipoMovimentacao,
        'quantidade_movimentacao': quantidade,
        'usuario_responsavel': usuarioResponsavel,
        'destino_movimentacao': destinoMovimentacao,
        'observacoes': observacoes,
        'data_movimentacao': dataMovimentacao?.toIso8601String(),
      },
    );
  } catch (e) {
    print('Erro ao registrar movimentação: $e');
  }
}
