import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'homepage_widget.dart' show HomepageWidget;
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController1;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController2;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController3;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController4;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController5;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController6;

  // State field(s) for pizzasalgada widget.
  late ExpandableController pizzasalgadaController7;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    pizzasalgadaController1.dispose();
    pizzasalgadaController2.dispose();
    pizzasalgadaController3.dispose();
    pizzasalgadaController4.dispose();
    pizzasalgadaController5.dispose();
    pizzasalgadaController6.dispose();
    pizzasalgadaController7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
