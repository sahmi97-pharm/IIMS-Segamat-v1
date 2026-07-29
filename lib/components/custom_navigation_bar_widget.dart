import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_navigation_bar_model.dart';
export 'custom_navigation_bar_model.dart';

class CustomNavigationBarWidget extends StatefulWidget {
  const CustomNavigationBarWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int? selectedIndex;
  final Future Function(int tabIndex)? onItemTapped;

  @override
  State<CustomNavigationBarWidget> createState() =>
      _CustomNavigationBarWidgetState();
}

class _CustomNavigationBarWidgetState extends State<CustomNavigationBarWidget> {
  late CustomNavigationBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavigationBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 65.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.onItemTapped?.call(
                            0,
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: widget.selectedIndex == 0 ? 5.0 : 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 0
                                  ? Color(0xFFF9BB14)
                                  : Color(0x00000000),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.space_dashboard_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 25.0,
                                  ),
                                  Text(
                                    'Wad List',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 9.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (valueOrDefault(currentUserDocument?.role, '') !=
                              't1') {
                            await widget.onItemTapped?.call(
                              1,
                            );
                          }
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: widget.selectedIndex == 1 ? 5.0 : 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 1
                                  ? Color(0xFFF9BB14)
                                  : Color(0x00000000),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Icon(
                                      FFIcons.ktrolleyIcon,
                                      color: valueOrDefault<Color>(
                                        valueOrDefault(
                                                    currentUserDocument?.role,
                                                    '') ==
                                                't1'
                                            ? FlutterFlowTheme.of(context)
                                                .accent4
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        FlutterFlowTheme.of(context).accent4,
                                      ),
                                      size: 25.0,
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Update',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: valueOrDefault<Color>(
                                              valueOrDefault(
                                                          currentUserDocument
                                                              ?.role,
                                                          '') ==
                                                      't1'
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent4
                                                  : FlutterFlowTheme.of(context)
                                                      .primary,
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                            ),
                                            fontSize: 9.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.onItemTapped?.call(
                    2,
                  );
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: valueOrDefault<double>(
                    widget.selectedIndex == 2 ? 5.0 : 2.5,
                    2.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99.0),
                  ),
                  child: Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.selectedIndex == 2
                            ? Color(0xFFF9BB14)
                            : FlutterFlowTheme.of(context).accent1,
                        FlutterFlowTheme.of(context).accent1,
                      ),
                      borderRadius: BorderRadius.circular(99.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_rounded,
                            color: valueOrDefault<Color>(
                              widget.selectedIndex == 3
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (valueOrDefault(currentUserDocument?.role, '') !=
                              't1') {
                            await widget.onItemTapped?.call(
                              3,
                            );
                          }
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: widget.selectedIndex == 3 ? 5.0 : 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 3
                                  ? Color(0xFFF9BB14)
                                  : Color(0x00000000),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Icon(
                                      FFIcons.kmyPassOverIcon,
                                      color: valueOrDefault<Color>(
                                        valueOrDefault(
                                                    currentUserDocument?.role,
                                                    '') ==
                                                't1'
                                            ? FlutterFlowTheme.of(context)
                                                .accent4
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        FlutterFlowTheme.of(context).accent4,
                                      ),
                                      size: 25.0,
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'MyPO',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: valueOrDefault<Color>(
                                              valueOrDefault(
                                                          currentUserDocument
                                                              ?.role,
                                                          '') ==
                                                      't1'
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent4
                                                  : FlutterFlowTheme.of(context)
                                                      .primary,
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                            ),
                                            fontSize: 9.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.onItemTapped?.call(
                            4,
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: widget.selectedIndex == 4 ? 5.0 : 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 4
                                  ? Color(0xFFF9BB14)
                                  : Color(0x00000000),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.settings_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 25.0,
                                  ),
                                  Text(
                                    'Setting',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 9.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
