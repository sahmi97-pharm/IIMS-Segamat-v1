import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifikasi_setting_model.dart';
export 'notifikasi_setting_model.dart';

class NotifikasiSettingWidget extends StatefulWidget {
  const NotifikasiSettingWidget({super.key});

  static String routeName = 'NotifikasiSetting';
  static String routePath = '/notifikasiSetting';

  @override
  State<NotifikasiSettingWidget> createState() =>
      _NotifikasiSettingWidgetState();
}

class _NotifikasiSettingWidgetState extends State<NotifikasiSettingWidget> {
  late NotifikasiSettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotifikasiSettingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!loggedIn) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Akses tidak dibenarkan. Sila log masuk.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );

        context.goNamed(LoginWidget.routeName);
      }
      _model.isPushEnabled = FFAppState().isPushEnabled;
      _model.isSoundEnabled = FFAppState().isSoundEnabled;
      safeSetState(() {});
    });

    _model.switchPNValue = FFAppState().isPushEnabled;
    _model.switchPSValue = FFAppState().isSoundEnabled;
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
          backgroundColor: FlutterFlowTheme.of(context).accent2,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Tetapan Notifikasi',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.montserrat(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 10.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(2.5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.notifications_active_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Notifikasi Aplikasi',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            'Terima makluman Status Troli Ubat',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Switch.adaptive(
                                  value: _model.switchPNValue!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                        () => _model.switchPNValue = newValue);
                                    if (newValue) {
                                      _model.isPushEnabled =
                                          _model.switchPNValue!;
                                      safeSetState(() {});
                                      FFAppState().isPushEnabled =
                                          _model.switchPNValue!;
                                      safeSetState(() {});
                                    } else {
                                      _model.isPushEnabled =
                                          _model.switchPNValue!;
                                      safeSetState(() {});
                                      FFAppState().isPushEnabled =
                                          _model.switchPNValue!;
                                      safeSetState(() {});
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.speaker_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Bunyi Makluman',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Switch.adaptive(
                                  value: _model.switchPSValue!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                        () => _model.switchPSValue = newValue);
                                    if (newValue) {
                                      _model.isSoundEnabled =
                                          _model.switchPSValue!;
                                      safeSetState(() {});
                                      FFAppState().isSoundEnabled =
                                          _model.switchPSValue!;
                                      safeSetState(() {});
                                    } else {
                                      _model.isSoundEnabled =
                                          _model.switchPSValue!;
                                      safeSetState(() {});
                                      FFAppState().isSoundEnabled =
                                          _model.switchPSValue!;
                                      safeSetState(() {});
                                    }
                                  },
                                  activeColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.5),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsets.all(2.5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.5, 2.5, 2.5, 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.5, 2.5, 2.5, 0.0),
                                        child: Text(
                                          'Lokasi Notifikasi',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Notifikasi hanya akan dihantar untuk lokasi ini',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle: FontStyle.italic,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 2.5),
                                  child: Text(
                                    'Wad/Unit',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 2.5, 5.0, 2.5),
                                child: StreamBuilder<List<LocationsRecord>>(
                                  stream: queryLocationsRecord()
                                    ..listen((snapshot) {
                                      List<LocationsRecord>
                                          dropDownLocationsRecordList =
                                          snapshot;
                                      if (_model.dropDownPreviousSnapshot !=
                                              null &&
                                          !const ListEquality(
                                                  LocationsRecordDocumentEquality())
                                              .equals(
                                                  dropDownLocationsRecordList,
                                                  _model
                                                      .dropDownPreviousSnapshot)) {
                                        () async {
                                          safeSetState(() {
                                            _model.dropDownValueController2
                                                ?.reset();
                                            _model.dropDownValue2 = null;
                                          });

                                          safeSetState(() {});
                                        }();
                                      }
                                      _model.dropDownPreviousSnapshot =
                                          snapshot;
                                    }),
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
                                    List<LocationsRecord>
                                        dropDownLocationsRecordList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                      options: ['Ward', 'Unit'],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropDownValue1 = val),
                                      width: double.infinity,
                                      height: 40.0,
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
                                      hintText: 'Sila pilih...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: Color(0xFFF0F2F5),
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                              ),
                              if (_model.dropDownValue1 != null &&
                                  _model.dropDownValue1 != '')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 2.5),
                                    child: Text(
                                      'Pilih wad/unit spesifik',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              if (_model.dropDownValue1 != null &&
                                  _model.dropDownValue1 != '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 2.5, 5.0, 5.0),
                                  child: StreamBuilder<List<LocationsRecord>>(
                                    stream: queryLocationsRecord(
                                      queryBuilder: (locationsRecord) =>
                                          locationsRecord.orderBy('name'),
                                    ),
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
                                      List<LocationsRecord>
                                          dropDownLocationsRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                        options: dropDownLocationsRecordList
                                            .where((e) =>
                                                e.type == _model.dropDownValue1)
                                            .toList()
                                            .map((e) => e.name)
                                            .toList()
                                            .sortedList(
                                                keyOf: (e) => e, desc: false),
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue2 = val),
                                        width: double.infinity,
                                        height: 40.0,
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
                                        hintText: 'Sila pilih...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: Color(0xFFF0F2F5),
                                        elevation: 2.0,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 16.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent4,
                      icon: Icon(
                        Icons.restart_alt_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.tokenToReset = FFAppState().fcmToken;
                        _model.wardToReset = FFAppState().currentWardUnitName;
                        safeSetState(() {});
                        if ((_model.tokenToReset != '') &&
                            (_model.wardToReset != '')) {
                          try {
                            final result = await FirebaseFunctions.instanceFor(
                                    region: 'asia-southeast1')
                                .httpsCallable('unsubscribeFromWardTopic')
                                .call({
                              "fcmToken": _model.tokenToReset,
                              "wardName": _model.wardToReset,
                            });
                            _model.unsubResult =
                                UnsubscribeFromWardTopicCloudFunctionCallResponse(
                              data: result.data,
                              succeeded: true,
                              resultAsString: result.data.toString(),
                              jsonBody: result.data,
                            );
                          } on FirebaseFunctionsException catch (error) {
                            _model.unsubResult =
                                UnsubscribeFromWardTopicCloudFunctionCallResponse(
                              errorCode: error.code,
                              succeeded: false,
                            );
                          }

                          if (_model.unsubResult?.succeeded == true) {
                            _model.existingSubReset =
                                await queryDeviceSubscriptionsRecordOnce(
                              queryBuilder: (deviceSubscriptionsRecord) =>
                                  deviceSubscriptionsRecord.where(
                                'fcm_token',
                                isEqualTo: _model.tokenToReset,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (_model.existingSubReset != null) {
                              await _model.existingSubReset!.reference.delete();
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Amaran: Gagal unsubscribe notifikasi sepenuhnya.',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        }
                        FFAppState().currentWardUnitName = '';
                        FFAppState().selectedType = '';
                        FFAppState().isPushEnabled = false;
                        FFAppState().isSoundEnabled = false;
                        FFAppState().mySelectedWards = [];
                        FFAppState().fcmToken = '';
                        safeSetState(() {});

                        context
                            .goNamed(WadDashboardMainUpdatedWidget.routeName);

                        safeSetState(() {});
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.dropdownValidation = true;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              safeSetState(
                                  () => _model.dropdownValidation = false);
                              return;
                            }
                            if (_model.dropDownValue1 == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Sila Pilih Wad/Unit',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                              _model.dropdownValidation = false;
                              safeSetState(() {});
                              return;
                            }
                            if (_model.dropDownValue2 == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Sila pilih spesifik Wad/Unit',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                              _model.dropdownValidation = false;
                              safeSetState(() {});
                              return;
                            }
                            _shouldSetState = true;
                            _model.oldWardName =
                                FFAppState().currentWardUnitName;
                            safeSetState(() {});
                            _model.currentToken =
                                await actions.getBrowserToken();
                            _shouldSetState = true;
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            if (valueOrDefault<bool>(
                                  _model.currentToken == null ||
                                      _model.currentToken == '',
                                  false,
                                ) ||
                                valueOrDefault<bool>(
                                  _model.currentToken == 'ERROR',
                                  false,
                                ) ||
                                (_model.currentToken == 'NO_PERMISSION') ||
                                (_model.currentToken == 'PERMISSION_DENIED') ||
                                (_model.currentToken == 'null')) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Sila benarkan notifikasi di browser.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                            _model.existingSub =
                                await queryDeviceSubscriptionsRecordOnce(
                              queryBuilder: (deviceSubscriptionsRecord) =>
                                  deviceSubscriptionsRecord.where(
                                'fcm_token',
                                isEqualTo: _model.currentToken,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            _shouldSetState = true;
                            try {
                              final result =
                                  await FirebaseFunctions.instanceFor(
                                          region: 'asia-southeast1')
                                      .httpsCallable('subscribeToWardTopic')
                                      .call({
                                "fcmToken": _model.currentToken!,
                                "wardName": _model.dropDownValue2!,
                                "oldWardName": _model.oldWardName,
                              });
                              _model.subResult =
                                  SubscribeToWardTopicCloudFunctionCallResponse(
                                succeeded: true,
                              );
                            } on FirebaseFunctionsException catch (error) {
                              _model.subResult =
                                  SubscribeToWardTopicCloudFunctionCallResponse(
                                errorCode: error.code,
                                succeeded: false,
                              );
                            }

                            _shouldSetState = true;
                            if (_model.subResult!.succeeded!) {
                              FFAppState().mySelectedWards = [];
                              FFAppState().selectedType =
                                  _model.dropDownValue1!;
                              FFAppState().currentWardUnitName =
                                  _model.dropDownValue2!;
                              FFAppState().fcmToken = _model.currentToken!;
                              safeSetState(() {});
                              FFAppState()
                                  .addToMySelectedWards(_model.dropDownValue2!);
                              safeSetState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Gagal melanggan notifikasi. Sila cuba lagi.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_model.existingSub?.reference != null) {
                              await _model.existingSub!.reference
                                  .update(createDeviceSubscriptionsRecordData(
                                createdAt: getCurrentTimestamp,
                                wardunitName: _model.dropDownValue2,
                              ));
                            } else {
                              await DeviceSubscriptionsRecord.collection
                                  .doc()
                                  .set(createDeviceSubscriptionsRecordData(
                                    fcmToken: _model.currentToken,
                                    wardunitName: _model.dropDownValue2,
                                    createdAt: getCurrentTimestamp,
                                  ));
                            }

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Notifikasi diaktifkan untuk ${_model.dropDownValue2}',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).success,
                              ),
                            );

                            context.goNamed(
                                WadDashboardMainUpdatedWidget.routeName);

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: 'Confirm',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.warning_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 16.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Perhatian',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
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
                              Text(
                                'Nota: Jika tiada lokasi dipilih, anda tidak akan menerima sebarang makluman notifikasi.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
