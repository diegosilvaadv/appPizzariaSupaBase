import '/backend/schema/structs/index.dart';
import '/componets/select_massa/select_massa_widget.dart';
import '/componets/select_sabor1_g_g/select_sabor1_g_g_widget.dart';
import '/componets/select_sabor2_g_g/select_sabor2_g_g_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'detalhes_produtos2sab_g_g_widget.dart'
    show DetalhesProdutos2sabGGWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalhesProdutos2sabGGModel
    extends FlutterFlowModel<DetalhesProdutos2sabGGWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
