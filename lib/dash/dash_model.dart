import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dash_widget.dart' show DashWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DashModel extends FlutterFlowModel<DashWidget> {
  ///  Local state fields for this page.

  List<double> soma = [];
  void addToSoma(double item) => soma.add(item);
  void removeFromSoma(double item) => soma.remove(item);
  void removeAtIndexFromSoma(int index) => soma.removeAt(index);
  void insertAtIndexInSoma(int index, double item) => soma.insert(index, item);
  void updateSomaAtIndex(int index, Function(double) updateFn) =>
      soma[index] = updateFn(soma[index]);

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
