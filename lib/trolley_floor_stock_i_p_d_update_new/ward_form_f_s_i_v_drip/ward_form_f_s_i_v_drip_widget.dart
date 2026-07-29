import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ward_form_f_s_i_v_drip_model.dart';
export 'ward_form_f_s_i_v_drip_model.dart';

class WardFormFSIVDripWidget extends StatefulWidget {
  const WardFormFSIVDripWidget({
    super.key,
    required this.locationRecord,
  });

  final LocationsNewRecord? locationRecord;

  @override
  State<WardFormFSIVDripWidget> createState() => _WardFormFSIVDripWidgetState();
}

class _WardFormFSIVDripWidgetState extends State<WardFormFSIVDripWidget>
    with TickerProviderStateMixin {
  late WardFormFSIVDripModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WardFormFSIVDripModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentFSIVDripDocRef = null;
      safeSetState(() {});
      _model.existingTodayRecord = await queryFloorStockIvdripRecordOnce(
        queryBuilder: (floorStockIvdripRecord) => floorStockIvdripRecord
            .where(
              'location_ref',
              isEqualTo: widget.locationRecord?.reference,
            )
            .where(
              'record_date',
              isEqualTo: dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp),
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.existingTodayRecord?.reference != null) {
        _model.currentFSIVDripDocRef = _model.existingTodayRecord?.reference;
        safeSetState(() {});
      }
    });

    _model.switchFSIVDValue = () {
      if (_model.currentFSIVDripDocRef != null) {
        return true;
      } else if (_model.switchFIVDCValue == true) {
        return true;
      } else {
        return false;
      }
    }();

    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'switchOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.1, 1.1),
          ),
        ],
      ),
      'switchOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.1, 1.1),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 500.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.accessibleIcon,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 28.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Floor Stock IV Drip',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.locationRecord?.locationName,
                                      '...',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: Switch.adaptive(
                          value: _model.switchFSIVDValue!,
                          onChanged: (_model.switchFIVDCValue == true)
                              ? null
                              : (newValue) async {
                                  safeSetState(() =>
                                      _model.switchFSIVDValue = newValue);
                                  if (newValue) {
                                    var floorStockIvdripRecordReference =
                                        FloorStockIvdripRecord.collection.doc();
                                    await floorStockIvdripRecordReference
                                        .set(createFloorStockIvdripRecordData(
                                      recordDate: dateTimeFormat(
                                          "yyyy-MM-dd", getCurrentTimestamp),
                                      fsivdripStatus: 'Pending',
                                      locationRef:
                                          widget.locationRecord?.reference,
                                    ));
                                    _model.newFloorStockIVDrip =
                                        FloorStockIvdripRecord
                                            .getDocumentFromData(
                                                createFloorStockIvdripRecordData(
                                                  recordDate: dateTimeFormat(
                                                      "yyyy-MM-dd",
                                                      getCurrentTimestamp),
                                                  fsivdripStatus: 'Pending',
                                                  locationRef: widget
                                                      .locationRecord
                                                      ?.reference,
                                                ),
                                                floorStockIvdripRecordReference);
                                    _model.currentFSIVDripDocRef =
                                        _model.newFloorStockIVDrip?.reference;
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  } else {
                                    await _model.currentFSIVDripDocRef!
                                        .delete();
                                    _model.currentFSIVDripDocRef = null;
                                    safeSetState(() {});
                                  }
                                },
                          activeColor: (_model.switchFIVDCValue == true)
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          activeTrackColor: (_model.switchFIVDCValue == true)
                              ? FlutterFlowTheme.of(context).alternate
                              : Color(0xFFF9BB14),
                          inactiveTrackColor: (_model.switchFIVDCValue == true)
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor: (_model.switchFIVDCValue == true)
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                        ).animateOnPageLoad(
                            animationsMap['switchOnPageLoadAnimation1']!),
                      ),
                    ],
                  ),
                ),
                if (_model.currentFSIVDripDocRef != null)
                  StreamBuilder<FloorStockIvdripRecord>(
                    stream: FloorStockIvdripRecord.getDocument(
                        _model.currentFSIVDripDocRef!),
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

                      final containerFloorStockIvdripRecord = snapshot.data!;

                      return Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: containerFloorStockIvdripRecord
                                              .fsivdripStatus ==
                                          'Completed'
                                      ? Color(0xFF18BAAD)
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: Color(0xFF18BAAD),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Status',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: containerFloorStockIvdripRecord
                                                                .fsivdripStatus ==
                                                            'Completed'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'Complete',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
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
                                                    color: containerFloorStockIvdripRecord
                                                                .fsivdripStatus ==
                                                            'Completed'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Switch.adaptive(
                                          value: _model.switchFIVDCValue ??=
                                              containerFloorStockIvdripRecord
                                                          .fsivdripStatus ==
                                                      'Completed'
                                                  ? true
                                                  : false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .switchFIVDCValue = newValue);
                                            if (newValue) {
                                              await _model
                                                  .currentFSIVDripDocRef!
                                                  .update(
                                                      createFloorStockIvdripRecordData(
                                                fsivdripStatus: 'Completed',
                                              ));
                                              _model.rulebookSettingsFSIVDripC =
                                                  await queryNotificationSettingsRecordOnce(
                                                queryBuilder:
                                                    (notificationSettingsRecord) =>
                                                        notificationSettingsRecord
                                                            .where(
                                                  'trigger_name',
                                                  isEqualTo:
                                                      'floor_stock_iv_drip_completed',
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              if (_model
                                                      .rulebookSettingsFSIVDripC
                                                      ?.isActive ==
                                                  true) {
                                                _model.targetDevicesFSIVDripC =
                                                    await queryDeviceSubscriptionsRecordOnce(
                                                  queryBuilder: (deviceSubscriptionsRecord) =>
                                                      deviceSubscriptionsRecord
                                                          .whereIn(
                                                              'role',
                                                              _model
                                                                  .rulebookSettingsFSIVDripC
                                                                  ?.targetRoles),
                                                );
                                                try {
                                                  final result =
                                                      await FirebaseFunctions
                                                              .instanceFor(
                                                                  region:
                                                                      'asia-southeast1')
                                                          .httpsCallable(
                                                              'sendTargetedPush')
                                                          .call({
                                                    "token": _model
                                                        .targetDevicesFSIVDripC!
                                                        .map((e) => e.fcmToken)
                                                        .toList(),
                                                    "title": _model
                                                        .rulebookSettingsFSIVDripC!
                                                        .title,
                                                    "body":
                                                        'Floor Stock IV Drip${widget.locationRecord?.locationName} telah selesai. Sila ambil dengan kadar segera.',
                                                    "locationPath": widget
                                                        .locationRecord
                                                        ?.reference
                                                        .path,
                                                  });
                                                  _model.cloudFunctionFSIVDripC =
                                                      SendTargetedPushCloudFunctionCallResponse(
                                                    data: result.data,
                                                    succeeded: true,
                                                    resultAsString:
                                                        result.data.toString(),
                                                    jsonBody: result.data,
                                                  );
                                                } on FirebaseFunctionsException catch (error) {
                                                  _model.cloudFunctionFSIVDripC =
                                                      SendTargetedPushCloudFunctionCallResponse(
                                                    errorCode: error.code,
                                                    succeeded: false,
                                                  );
                                                }

                                                if (_model
                                                    .cloudFunctionFSIVDripC!
                                                    .succeeded!) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Notifikasi berjaya dihantar!',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: Text('Ralat'),
                                                          content: Text(
                                                              ' Notifikasi gagal dihantar. Sila cuba lagi.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                }
                                              }

                                              safeSetState(() {});
                                            } else {
                                              await _model
                                                  .currentFSIVDripDocRef!
                                                  .update(
                                                      createFloorStockIvdripRecordData(
                                                fsivdripStatus: 'Pending',
                                              ));
                                            }
                                          },
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          activeTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          inactiveThumbColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ).animateOnPageLoad(animationsMap[
                                            'switchOnPageLoadAnimation2']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEAE2EF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Permasalahan Floor Stock IV Drip',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Tiada issue PHiS/ tidak lengkap',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
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
                                              ),
                                              Switch.adaptive(
                                                value: _model
                                                        .switchfsivdphisValue ??=
                                                    containerFloorStockIvdripRecord
                                                        .fsivdripPhis,
                                                onChanged: (newValue) async {
                                                  safeSetState(() => _model
                                                          .switchfsivdphisValue =
                                                      newValue);
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                inactiveThumbColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (_model.switchfsivdphisValue ?? true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController ??=
                                                        TextEditingController(
                                                  text:
                                                      containerFloorStockIvdripRecord
                                                          .fsivdripPhisExp,
                                                ),
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                autofocus: false,
                                                enabled: true,
                                                textInputAction:
                                                    TextInputAction.send,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
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
                                                  hintText: 'TextField',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                        letterSpacing: 0.0,
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
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                          fontSize: 12.0,
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
                                                maxLines: null,
                                                minLines: 2,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                enableInteractiveSelection:
                                                    true,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        if (_model.switchfsivdphisValue!
                                            ? true
                                            : false)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await _model
                                                      .currentFSIVDripDocRef!
                                                      .update(
                                                          createFloorStockIvdripRecordData(
                                                    fsivdripPhis: _model
                                                        .switchfsivdphisValue,
                                                    fsivdripPhisExp: _model
                                                        .textController.text,
                                                  ));
                                                  _model.rulebookSettingsFSIVDripP =
                                                      await queryNotificationSettingsRecordOnce(
                                                    queryBuilder:
                                                        (notificationSettingsRecord) =>
                                                            notificationSettingsRecord
                                                                .where(
                                                      'trigger_name',
                                                      isEqualTo:
                                                          'floor_stock_iv_drip_masalah',
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  if (_model
                                                          .rulebookSettingsFSIVDripP
                                                          ?.isActive ==
                                                      true) {
                                                    _model.targetDevicesFSIVDripP =
                                                        await queryDeviceSubscriptionsRecordOnce(
                                                      queryBuilder: (deviceSubscriptionsRecord) =>
                                                          deviceSubscriptionsRecord
                                                              .whereIn(
                                                                  'role',
                                                                  _model
                                                                      .rulebookSettingsFSIVDripP
                                                                      ?.targetRoles),
                                                    );
                                                    try {
                                                      final result =
                                                          await FirebaseFunctions
                                                                  .instanceFor(
                                                                      region:
                                                                          'asia-southeast1')
                                                              .httpsCallable(
                                                                  'sendTargetedPush')
                                                              .call({
                                                        "token": _model
                                                            .targetDevicesFSIVDripP!
                                                            .map((e) =>
                                                                e.fcmToken)
                                                            .toList(),
                                                        "title": _model
                                                            .rulebookSettingsFSIVDripP!
                                                            .title,
                                                        "body": _model
                                                            .rulebookSettingsFSIVDripP!
                                                            .body,
                                                        "locationPath": widget
                                                            .locationRecord
                                                            ?.reference
                                                            .path,
                                                      });
                                                      _model.cloudFunctionFSIVDripP =
                                                          SendTargetedPushCloudFunctionCallResponse(
                                                        data: result.data,
                                                        succeeded: true,
                                                        resultAsString: result
                                                            .data
                                                            .toString(),
                                                        jsonBody: result.data,
                                                      );
                                                    } on FirebaseFunctionsException catch (error) {
                                                      _model.cloudFunctionFSIVDripP =
                                                          SendTargetedPushCloudFunctionCallResponse(
                                                        errorCode: error.code,
                                                        succeeded: false,
                                                      );
                                                    }

                                                    if (_model
                                                        .cloudFunctionFSIVDripP!
                                                        .succeeded!) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Notifikasi berjaya dihantar!',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              title:
                                                                  Text('Ralat'),
                                                              content: Text(
                                                                  ' Notifikasi gagal dihantar. Sila cuba lagi.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'Confirm',
                                                options: FFButtonOptions(
                                                  width: 150.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFFF9BB14),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .montserrat(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 5.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Jumlah item tidak supply',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
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
                                        Container(
                                          width: 120.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: FlutterFlowCountController(
                                            decrementIconBuilder: (enabled) =>
                                                Icon(
                                              Icons.remove_rounded,
                                              color: enabled
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                Icon(
                                              Icons.add_rounded,
                                              color: enabled
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font:
                                                        GoogleFonts.montserrat(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                            count: _model
                                                    .countControllerValue ??=
                                                containerFloorStockIvdripRecord
                                                    .fsivdripItem,
                                            updateCount: (count) async {
                                              safeSetState(() =>
                                                  _model.countControllerValue =
                                                      count);
                                              await _model
                                                  .currentFSIVDripDocRef!
                                                  .update(
                                                      createFloorStockIvdripRecordData(
                                                fsivdripItem:
                                                    _model.countControllerValue,
                                              ));
                                            },
                                            stepSize: 1,
                                            minimum: 0,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
