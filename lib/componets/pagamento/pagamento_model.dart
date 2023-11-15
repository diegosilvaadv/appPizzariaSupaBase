import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/cancelar_widget.dart';
import '/components/pagcomsucesso_widget.dart';
import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  Local state fields for this component.

  List<NumbersPedRow> teste = [];
  void addToTeste(NumbersPedRow item) => teste.add(item);
  void removeFromTeste(NumbersPedRow item) => teste.remove(item);
  void removeAtIndexFromTeste(int index) => teste.removeAt(index);
  void insertAtIndexInTeste(int index, NumbersPedRow item) =>
      teste.insert(index, item);
  void updateTesteAtIndex(int index, Function(NumbersPedRow) updateFn) =>
      teste[index] = updateFn(teste[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
