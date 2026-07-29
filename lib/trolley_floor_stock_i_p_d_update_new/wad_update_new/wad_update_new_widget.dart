import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/trolley_floor_stock_i_p_d_update_new/ubat_tambahan_activator/ubat_tambahan_activator_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ubat_tambahan_card/ubat_tambahan_card_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_d_d_a/ward_form_f_s_d_d_a_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_i_v_drip/ward_form_f_s_i_v_drip_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_f_s_u/ward_form_f_s_u_widget.dart';
import '/trolley_floor_stock_i_p_d_update_new/ward_form_troli_ubat/ward_form_troli_ubat_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'wad_update_new_model.dart';
export 'wad_update_new_model.dart';

class WadUpdateNewWidget extends StatefulWidget {
  const WadUpdateNewWidget({super.key});

  static String routeName = 'WadUpdateNew';
  static String routePath = '/wadUpdateNew';

  @override
  State<WadUpdateNewWidget> createState() => _WadUpdateNewWidgetState();
}

class _WadUpdateNewWidgetState extends State<WadUpdateNewWidget>
    with TickerProviderStateMixin {
  late WadUpdateNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WadUpdateNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        if (valueOrDefault(currentUserDocument?.role, '') == 't1') {
          context.pushNamed(WadDashboardMainUpdatedWidget.routeName);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Akses tanpa izin.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).tertiary,
            ),
          );
        }
      } else {
        context.pushNamed(LoginWidget.routeName);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Akses tanpa izin. Sila log masuk.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
          ),
        );
      }

      if (FFAppState().globalActiveWard != '') {
        await Future.delayed(
          Duration(
            milliseconds: 100,
          ),
        );
        _model.selectedLocationName = FFAppState().globalActiveWard;
        _model.selectedType = FFAppState().globalActiveType;
        safeSetState(() {});
        FFAppState().globalActiveWard = '';
        safeSetState(() {});
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'conditionalBuilderOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'MyUpdate',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 30.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: StreamBuilder<List<LocationsNewRecord>>(
                                  stream: queryLocationsNewRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<LocationsNewRecord>
                                        containerLocationsNewRecordList =
                                        snapshot.data!;

                                    return Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Container(
                                        width: 400.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Wad/ Unit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 10.0),
                                                child: FlutterFlowChoiceChips(
                                                  options: [
                                                    ChipData('Ward'),
                                                    ChipData('Unit')
                                                  ],
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                            .choiceChipsWardUnitValue =
                                                        val?.firstOrNull);
                                                    safeSetState(() {
                                                      _model
                                                          .dropDownValueController
                                                          ?.reset();
                                                      _model.dropDownValue =
                                                          null;
                                                    });
                                                    _model.selectedLocationName =
                                                        '';
                                                    _model.selectedType = _model
                                                        .choiceChipsWardUnitValue;
                                                    safeSetState(() {});
                                                    await Future.delayed(
                                                      Duration(
                                                        milliseconds: 200,
                                                      ),
                                                    );
                                                    safeSetState(() {});
                                                  },
                                                  selectedChipStyle: ChipStyle(
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    iconSize: 18.0,
                                                    elevation: 5.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  unselectedChipStyle:
                                                      ChipStyle(
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    iconSize: 18.0,
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  chipSpacing: 10.0,
                                                  rowSpacing: 8.0,
                                                  multiselect: false,
                                                  initialized: _model
                                                          .choiceChipsWardUnitValue !=
                                                      null,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  controller: _model
                                                          .choiceChipsWardUnitValueController ??=
                                                      FormFieldController<
                                                          List<String>>(
                                                    [
                                                      valueOrDefault<String>(
                                                        FFAppState()
                                                            .globalActiveType,
                                                        'Ward',
                                                      )
                                                    ],
                                                  ),
                                                  wrapped: false,
                                                ),
                                              ),
                                              if (_model.choiceChipsWardUnitValue !=
                                                      null &&
                                                  _model.choiceChipsWardUnitValue !=
                                                      '')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Sila Pilih',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              if (_model.choiceChipsWardUnitValue !=
                                                      null &&
                                                  _model.choiceChipsWardUnitValue !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 10.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropDownValue ??=
                                                          FFAppState()
                                                              .globalActiveWard,
                                                    ),
                                                    options:
                                                        containerLocationsNewRecordList
                                                            .where((e) =>
                                                                (e.category ==
                                                                    _model
                                                                        .selectedType) &&
                                                                (e.isActive ==
                                                                    true))
                                                            .toList()
                                                            .map((e) =>
                                                                valueOrDefault<
                                                                    String>(
                                                                  e.locationName,
                                                                  'none',
                                                                ))
                                                            .toList()
                                                            .sortedList(
                                                                keyOf: (e) => e,
                                                                desc: false),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                          .dropDownValue = val);
                                                      _model.selectedLocationName =
                                                          _model.dropDownValue;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 200,
                                                        ),
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    width: 400.0,
                                                    height: 40.0,
                                                    searchHintTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                    searchTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText: 'Select...',
                                                    searchHintText: 'Wad..',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderWidth: 0.0,
                                                    borderRadius: 16.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation1']!);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: StreamBuilder<List<LocationsNewRecord>>(
                          stream: queryLocationsNewRecord(
                            queryBuilder: (locationsNewRecord) =>
                                locationsNewRecord.where(
                              'location_name',
                              isEqualTo: _model.selectedLocationName,
                            ),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<LocationsNewRecord>
                                containerLocationsNewRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final containerLocationsNewRecord =
                                containerLocationsNewRecordList.isNotEmpty
                                    ? containerLocationsNewRecordList.first
                                    : null;

                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 10.0, 10.0),
                                    child: FlutterFlowChoiceChips(
                                      options: functions
                                          .getBottomOptions(
                                              containerLocationsNewRecord
                                                  ?.useTrolleyCheck,
                                              containerLocationsNewRecord
                                                  ?.useUbatTambahan)
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsPerkaraValue =
                                              val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).info,
                                        iconSize: 16.0,
                                        elevation: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 16.0,
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      chipSpacing: 10.0,
                                      rowSpacing: 10.0,
                                      multiselect: false,
                                      initialized:
                                          _model.choiceChipsPerkaraValue !=
                                              null,
                                      alignment: WrapAlignment.center,
                                      controller: _model
                                              .choiceChipsPerkaraValueController ??=
                                          FormFieldController<List<String>>(
                                        [
                                          functions.getDefaultPerkaraOption(
                                              containerLocationsNewRecord
                                                  ?.useTrolleyCheck,
                                              containerLocationsNewRecord
                                                  ?.useUbatTambahan)
                                        ],
                                      ),
                                      wrapped: true,
                                    ),
                                  ),
                                  if (_model.selectedLocationName != null &&
                                      _model.selectedLocationName != '')
                                    Builder(
                                      builder: (context) {
                                        if (_model.choiceChipsPerkaraValue ==
                                            'Troli Ubat') {
                                          return wrapWithModel(
                                            model:
                                                _model.wardFormTroliUbatModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WardFormTroliUbatWidget(
                                              key: ValueKey(
                                                  containerLocationsNewRecord!
                                                      .reference.id),
                                              locationRecord:
                                                  containerLocationsNewRecord,
                                            ),
                                          );
                                        } else if (_model
                                                .choiceChipsPerkaraValue ==
                                            'FS Ubat') {
                                          return wrapWithModel(
                                            model: _model.wardFormFSUModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WardFormFSUWidget(
                                              key: ValueKey(
                                                  containerLocationsNewRecord!
                                                      .reference.id),
                                              locationRecord:
                                                  containerLocationsNewRecord,
                                            ),
                                          );
                                        } else if (_model
                                                .choiceChipsPerkaraValue ==
                                            'FS IV Drip') {
                                          return wrapWithModel(
                                            model: _model.wardFormFSIVDripModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WardFormFSIVDripWidget(
                                              key: ValueKey(
                                                  containerLocationsNewRecord!
                                                      .reference.id),
                                              locationRecord:
                                                  containerLocationsNewRecord,
                                            ),
                                          );
                                        } else if (_model
                                                .choiceChipsPerkaraValue ==
                                            'FS DD') {
                                          return wrapWithModel(
                                            model: _model.wardFormFSDDAModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: WardFormFSDDAWidget(
                                              key: ValueKey(
                                                  containerLocationsNewRecord!
                                                      .reference.id),
                                              locationRecord:
                                                  containerLocationsNewRecord,
                                            ),
                                          );
                                        } else if (_model
                                                .choiceChipsPerkaraValue ==
                                            'Ubat Tambahan') {
                                          return Container(
                                            width: 500.0,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .ubatTambahanActivatorModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        UbatTambahanActivatorWidget(
                                                      locationRecord:
                                                          containerLocationsNewRecord!,
                                                    ),
                                                  ),
                                                  PagedListView<
                                                      DocumentSnapshot<
                                                          Object?>?,
                                                      UbatTambahanRecord>(
                                                    pagingController: _model
                                                        .setListViewController(
                                                      UbatTambahanRecord
                                                          .collection
                                                          .where(
                                                            'operational_date',
                                                            isEqualTo: functions
                                                                .getShiftDate(
                                                                    getCurrentTimestamp),
                                                          )
                                                          .where(
                                                            'location_ref',
                                                            isEqualTo:
                                                                containerLocationsNewRecord
                                                                    .reference,
                                                          )
                                                          .orderBy(
                                                              'create_time',
                                                              descending: true),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    reverse: false,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    builderDelegate:
                                                        PagedChildBuilderDelegate<
                                                            UbatTambahanRecord>(
                                                      // Customize what your widget looks like when it's loading the first page.
                                                      firstPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      // Customize what your widget looks like when it's loading another page.
                                                      newPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      ),

                                                      itemBuilder: (context, _,
                                                          listViewIndex) {
                                                        final listViewUbatTambahanRecord =
                                                            _model.listViewPagingController!
                                                                    .itemList![
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Container(
                                                            key: ValueKey(
                                                                listViewUbatTambahanRecord
                                                                    .reference
                                                                    .id),
                                                            child:
                                                                UbatTambahanCardWidget(
                                                              key: Key(
                                                                  'Key86d_${listViewIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                              locationRecord:
                                                                  containerLocationsNewRecord,
                                                              ubatRecord:
                                                                  listViewUbatTambahanRecord,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Container(
                                            decoration: BoxDecoration(),
                                          );
                                        }
                                      },
                                    ).animateOnPageLoad(animationsMap[
                                        'conditionalBuilderOnPageLoadAnimation']!),
                                ],
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
