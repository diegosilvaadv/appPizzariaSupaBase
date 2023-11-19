import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'endereco_entrega_widget.dart' show EnderecoEntregaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnderecoEntregaModel extends FlutterFlowModel<EnderecoEntregaWidget> {
  ///  Local state fields for this component.

  String endereco = ' ';

  String complemento = ' ';

  String bairro = ' ';

  String cidade = ' ';

  String estado = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for buscarCep widget.
  FocusNode? buscarCepFocusNode;
  TextEditingController? buscarCepController;
  String? Function(BuildContext, String?)? buscarCepControllerValidator;
  // Stores action output result for [Backend Call - API (apiCep)] action in IconButton widget.
  ApiCallResponse? respAPI;
  // State field(s) for Logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroController;
  String? Function(BuildContext, String?)? logradouroControllerValidator;
  // State field(s) for Complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  // State field(s) for Cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeController;
  String? Function(BuildContext, String?)? cidadeControllerValidator;
  // State field(s) for Estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoController;
  String? Function(BuildContext, String?)? estadoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    buscarCepFocusNode?.dispose();
    buscarCepController?.dispose();

    logradouroFocusNode?.dispose();
    logradouroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeController?.dispose();

    estadoFocusNode?.dispose();
    estadoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
