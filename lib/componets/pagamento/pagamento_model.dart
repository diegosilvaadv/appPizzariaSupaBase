import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  Local state fields for this component.

  List<NumbersPedRow> supabase = [];
  void addToSupabase(NumbersPedRow item) => supabase.add(item);
  void removeFromSupabase(NumbersPedRow item) => supabase.remove(item);
  void removeAtIndexFromSupabase(int index) => supabase.removeAt(index);
  void insertAtIndexInSupabase(int index, NumbersPedRow item) =>
      supabase.insert(index, item);
  void updateSupabaseAtIndex(int index, Function(NumbersPedRow) updateFn) =>
      supabase[index] = updateFn(supabase[index]);

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
