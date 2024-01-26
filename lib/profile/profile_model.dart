import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for pat_Grname widget.
  FocusNode? patGrnameFocusNode;
  TextEditingController? patGrnameController;
  String? Function(BuildContext, String?)? patGrnameControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for lat widget.
  FocusNode? latFocusNode;
  TextEditingController? latController;
  String? Function(BuildContext, String?)? latControllerValidator;
  // State field(s) for lan widget.
  FocusNode? lanFocusNode;
  TextEditingController? lanController;
  String? Function(BuildContext, String?)? lanControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    patGrnameFocusNode?.dispose();
    patGrnameController?.dispose();

    latFocusNode?.dispose();
    latController?.dispose();

    lanFocusNode?.dispose();
    lanController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
