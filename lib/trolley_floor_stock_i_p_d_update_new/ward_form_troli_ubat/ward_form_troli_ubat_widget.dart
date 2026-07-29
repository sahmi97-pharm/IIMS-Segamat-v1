import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ward_form_troli_ubat_model.dart';
export 'ward_form_troli_ubat_model.dart';

class WardFormTroliUbatWidget extends StatefulWidget {
  const WardFormTroliUbatWidget({
    super.key,
    required this.locationRecord,
  });

  final LocationsNewRecord? locationRecord;

  @override
  State<WardFormTroliUbatWidget> createState() =>
      _WardFormTroliUbatWidgetState();
}

class _WardFormTroliUbatWidgetState extends State<WardFormTroliUbatWidget>
    with TickerProviderStateMixin {
  late WardFormTroliUbatModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WardFormTroliUbatModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentTroliDocRef = null;
      safeSetState(() {});
      _model.existingTodayRecord = await queryTroliUbatRecordOnce(
        queryBuilder: (troliUbatRecord) => troliUbatRecord
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
        _model.currentTroliDocRef = _model.existingTodayRecord?.reference;
        safeSetState(() {});
      } else {
        _model.currentTroliDocRef = null;
        safeSetState(() {});
      }
    });

    _model.switchTValue = () {
      if (_model.currentTroliDocRef != null) {
        return true;
      } else if (_model.switchCTValue == true) {
        return true;
      } else {
        return false;
      }
    }();
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
      'switchOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
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
      'switchOnPageLoadAnimation3': AnimationInfo(
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
      'switchOnPageLoadAnimation4': AnimationInfo(
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
      'switchOnPageLoadAnimation5': AnimationInfo(
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
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
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
            padding: EdgeInsets.all(10.0),
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
                            Icon(
                              FFIcons.ktrolleyIcon,
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
                                    'Troli Ubat',
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
                                      'Wad Name',
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
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Switch.adaptive(
                          value: _model.switchTValue!,
                          onChanged: (_model.switchCTValue == true)
                              ? null
                              : (newValue) async {
                                  safeSetState(
                                      () => _model.switchTValue = newValue);
                                  if (newValue) {
                                    if (!(_model.currentTroliDocRef != null)) {
                                      var troliUbatRecordReference =
                                          TroliUbatRecord.collection.doc();
                                      await troliUbatRecordReference
                                          .set(createTroliUbatRecordData(
                                        troliArrivalTime: getCurrentTimestamp,
                                        recordDate: dateTimeFormat(
                                            "yyyy-MM-dd", getCurrentTimestamp),
                                        locationRef:
                                            widget.locationRecord?.reference,
                                        namaPenghantar: 'Manual - Farmasi',
                                        troliStatus: 'Pending',
                                      ));
                                      _model.newManualTroli =
                                          TroliUbatRecord.getDocumentFromData(
                                              createTroliUbatRecordData(
                                                troliArrivalTime:
                                                    getCurrentTimestamp,
                                                recordDate: dateTimeFormat(
                                                    "yyyy-MM-dd",
                                                    getCurrentTimestamp),
                                                locationRef: widget
                                                    .locationRecord?.reference,
                                                namaPenghantar:
                                                    'Manual - Farmasi',
                                                troliStatus: 'Pending',
                                              ),
                                              troliUbatRecordReference);
                                      _model.currentTroliDocRef =
                                          _model.newManualTroli?.reference;
                                      safeSetState(() {});
                                    }
                                    _model.rulebookSettings =
                                        await queryNotificationSettingsRecordOnce(
                                      queryBuilder:
                                          (notificationSettingsRecord) =>
                                              notificationSettingsRecord.where(
                                        'trigger_name',
                                        isEqualTo: 'troli_ubat_sampai',
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    if (_model.rulebookSettings?.isActive ==
                                        true) {
                                      _model.targetDevices =
                                          await queryDeviceSubscriptionsRecordOnce(
                                        queryBuilder:
                                            (deviceSubscriptionsRecord) =>
                                                deviceSubscriptionsRecord
                                                    .whereIn(
                                                        'role',
                                                        _model.rulebookSettings
                                                            ?.targetRoles),
                                      );
                                      try {
                                        final result =
                                            await FirebaseFunctions.instanceFor(
                                                    region: 'asia-southeast1')
                                                .httpsCallable(
                                                    'sendTargetedPush')
                                                .call({
                                          "token": _model.targetDevices!
                                              .map((e) => e.fcmToken)
                                              .toList(),
                                          "title":
                                              _model.rulebookSettings!.title,
                                          "body":
                                              'Troli Ubat ${widget.locationRecord?.locationName} telah sampai. Bertindak Segera!',
                                          "locationPath": widget
                                              .locationRecord?.reference.path,
                                        });
                                        _model.cloudFunctionResult =
                                            SendTargetedPushCloudFunctionCallResponse(
                                          data: result.data,
                                          succeeded: true,
                                          resultAsString:
                                              result.data.toString(),
                                          jsonBody: result.data,
                                        );
                                      } on FirebaseFunctionsException catch (error) {
                                        _model.cloudFunctionResult =
                                            SendTargetedPushCloudFunctionCallResponse(
                                          errorCode: error.code,
                                          succeeded: false,
                                        );
                                      }

                                      if (_model
                                          .cloudFunctionResult!.succeeded!) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Notifikasi berjaya dihantar!',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
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
                                    await _model.currentTroliDocRef!.delete();
                                    _model.currentTroliDocRef = null;
                                    safeSetState(() {});
                                  }
                                },
                          activeColor: (_model.switchCTValue == true)
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          activeTrackColor: (_model.switchCTValue == true)
                              ? FlutterFlowTheme.of(context).alternate
                              : Color(0xFFF9BB14),
                          inactiveTrackColor: (_model.switchCTValue == true)
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor: (_model.switchCTValue == true)
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                        ).animateOnActionTrigger(
                          animationsMap['switchOnActionTriggerAnimation']!,
                        ),
                      ),
                    ],
                  ),
                ),
                if (_model.currentTroliDocRef != null)
                  StreamBuilder<TroliUbatRecord>(
                    stream:
                        TroliUbatRecord.getDocument(_model.currentTroliDocRef!),
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

                      final containerTroliUbatRecord = snapshot.data!;

                      return Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 5.0, 10.0),
                                child: Container(
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color:
                                        containerTroliUbatRecord.troliStatus ==
                                                'Completed'
                                            ? Color(0xFF18BAAD)
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: Color(0xFF18BAAD),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                      color: containerTroliUbatRecord
                                                                  .troliStatus ==
                                                              'Completed'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      color: containerTroliUbatRecord
                                                                  .troliStatus ==
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Switch.adaptive(
                                            value: _model.switchCTValue ??=
                                                containerTroliUbatRecord
                                                            .troliStatus ==
                                                        'Completed'
                                                    ? true
                                                    : false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchCTValue = newValue);
                                              if (newValue) {
                                                await _model.currentTroliDocRef!
                                                    .update(
                                                        createTroliUbatRecordData(
                                                  troliStatus: 'Completed',
                                                  troliFinishTime:
                                                      getCurrentTimestamp,
                                                ));
                                                _model.rulebookSettingsTC =
                                                    await queryNotificationSettingsRecordOnce(
                                                  queryBuilder:
                                                      (notificationSettingsRecord) =>
                                                          notificationSettingsRecord
                                                              .where(
                                                    'trigger_name',
                                                    isEqualTo:
                                                        'troli_ubat_completed',
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);
                                                if (_model.rulebookSettingsTC
                                                        ?.isActive ==
                                                    true) {
                                                  _model.targetDevicesTC =
                                                      await queryDeviceSubscriptionsRecordOnce(
                                                    queryBuilder: (deviceSubscriptionsRecord) =>
                                                        deviceSubscriptionsRecord
                                                            .whereIn(
                                                                'role',
                                                                _model
                                                                    .rulebookSettingsTC
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
                                                          .targetDevicesTC!
                                                          .map(
                                                              (e) => e.fcmToken)
                                                          .toList(),
                                                      "title": _model
                                                          .rulebookSettings!
                                                          .title,
                                                      "body":
                                                          'Troli Ubat ${widget.locationRecord?.locationName}telah sampai. Bertindak Segera!',
                                                      "locationPath": widget
                                                          .locationRecord
                                                          ?.reference
                                                          .path,
                                                    });
                                                    _model.cloudFunctionTC =
                                                        SendTargetedPushCloudFunctionCallResponse(
                                                      data: result.data,
                                                      succeeded: true,
                                                      resultAsString: result
                                                          .data
                                                          .toString(),
                                                      jsonBody: result.data,
                                                    );
                                                  } on FirebaseFunctionsException catch (error) {
                                                    _model.cloudFunctionTC =
                                                        SendTargetedPushCloudFunctionCallResponse(
                                                      errorCode: error.code,
                                                      succeeded: false,
                                                    );
                                                  }

                                                  if (_model.cloudFunctionTC!
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
                                                            title:
                                                                Text('Ralat'),
                                                            content: Text(
                                                                ' Notifikasi gagal dihantar. Sila cuba lagi.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
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
                                                await _model.currentTroliDocRef!
                                                    .update({
                                                  ...createTroliUbatRecordData(
                                                    troliStatus: 'Pending',
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'troli_finish_time':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });
                                              }
                                            },
                                            activeColor: Color(0xFF18BAAD),
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
                                              'switchOnPageLoadAnimation1']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: containerTroliUbatRecord.fridgeItem ==
                                          true
                                      ? FlutterFlowTheme.of(context).accent2
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'Item Sejuk',
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color: containerTroliUbatRecord
                                                                  .coolbox ==
                                                              true
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
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Switch.adaptive(
                                              value: _model.switchTFValue ??=
                                                  containerTroliUbatRecord
                                                              .fridgeItem ==
                                                          true
                                                      ? true
                                                      : false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchTFValue = newValue);
                                                if (newValue) {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    fridgeItem:
                                                        _model.switchTFValue,
                                                  ));
                                                } else {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    fridgeItem:
                                                        _model.switchTFValue,
                                                  ));
                                                }
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
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
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  color: containerTroliUbatRecord
                                                              .fridgeItem ==
                                                          true
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Cool Box',
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
                                                      color: containerTroliUbatRecord
                                                                  .fridgeItem ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Switch.adaptive(
                                              value: _model.switchValue1 ??=
                                                  containerTroliUbatRecord
                                                              .coolbox ==
                                                          true
                                                      ? true
                                                      : false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchValue1 = newValue);
                                                if (newValue) {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    coolbox:
                                                        _model.switchValue1,
                                                  ));
                                                } else {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    coolbox:
                                                        _model.switchValue1,
                                                  ));
                                                }
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
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
                                                'switchOnPageLoadAnimation3']!),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 10.0, 5.0, 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: containerTroliUbatRecord
                                              .ddaPatientBasis ==
                                          true
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).error,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'DD Patient Basis',
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color: containerTroliUbatRecord
                                                                  .ddaPatientBasis ==
                                                              true
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
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Switch.adaptive(
                                              value: _model.switchTDDValue ??=
                                                  containerTroliUbatRecord
                                                              .ddaPatientBasis ==
                                                          true
                                                      ? true
                                                      : false,
                                              onChanged: (newValue) async {
                                                safeSetState(() =>
                                                    _model.switchTDDValue =
                                                        newValue);
                                                if (newValue) {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    ddaPatientBasis:
                                                        _model.switchTDDValue,
                                                  ));
                                                } else {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    ddaPatientBasis:
                                                        _model.switchTDDValue,
                                                  ));
                                                }
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
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
                                                'switchOnPageLoadAnimation4']!),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  color: containerTroliUbatRecord
                                                              .ddaPatientBasis ==
                                                          true
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Buku DD Patient Basis',
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
                                                      color: containerTroliUbatRecord
                                                                  .ddaPatientBasis ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Switch.adaptive(
                                              value: _model.switchValue2 ??=
                                                  containerTroliUbatRecord
                                                              .ddaBook ==
                                                          true
                                                      ? true
                                                      : false,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                    .switchValue2 = newValue);
                                                if (newValue) {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    ddaBook:
                                                        _model.switchValue2,
                                                  ));
                                                } else {
                                                  await _model
                                                      .currentTroliDocRef!
                                                      .update(
                                                          createTroliUbatRecordData(
                                                    ddaBook:
                                                        _model.switchValue2,
                                                  ));
                                                }
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
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
                                                'switchOnPageLoadAnimation5']!),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 5.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  5.0),
                                                      child: Text(
                                                        'Waktu Penghantaran',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  10.0,
                                                                  5.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                              "jm",
                                                              containerTroliUbatRecord
                                                                  .troliArrivalTime),
                                                          '--:--',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    5.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Text(
                                                          'Waktu Siap ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                                "jm",
                                                                containerTroliUbatRecord
                                                                    .troliFinishTime),
                                                            '--:--',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 70.0,
                                          child: VerticalDivider(
                                            thickness: 2.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 10.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: FlutterFlowIconButton(
                                                  borderRadius: 8.0,
                                                  buttonSize: 30.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent2,
                                                  disabledColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  disabledIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.clock,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 15.0,
                                                  ),
                                                  onPressed:
                                                      (_model.currentTroliDocRef ==
                                                              null)
                                                          ? null
                                                          : () async {
                                                              final _datePicked1Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.montserrat(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                              if (_datePicked1Time !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked1 =
                                                                      DateTime(
                                                                    getCurrentTimestamp
                                                                        .year,
                                                                    getCurrentTimestamp
                                                                        .month,
                                                                    getCurrentTimestamp
                                                                        .day,
                                                                    _datePicked1Time
                                                                        .hour,
                                                                    _datePicked1Time
                                                                        .minute,
                                                                  );
                                                                });
                                                              } else if (_model
                                                                      .datePicked1 !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked1 =
                                                                      getCurrentTimestamp;
                                                                });
                                                              }

                                                              await _model
                                                                  .currentTroliDocRef!
                                                                  .update(
                                                                      createTroliUbatRecordData(
                                                                troliArrivalTime:
                                                                    _model
                                                                        .datePicked1,
                                                              ));
                                                            },
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderRadius: 8.0,
                                                buttonSize: 30.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.solidClock,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 15.0,
                                                ),
                                                onPressed: (_model
                                                            .switchCTValue ==
                                                        false)
                                                    ? null
                                                    : () async {
                                                        final _datePicked2Time =
                                                            await showTimePicker(
                                                          context: context,
                                                          initialTime: TimeOfDay
                                                              .fromDateTime(
                                                                  getCurrentTimestamp),
                                                          builder:
                                                              (context, child) {
                                                            return wrapInMaterialTimePickerTheme(
                                                              context,
                                                              child!,
                                                              headerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              headerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              headerTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .montserrat(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .fontStyle,
                                                                      ),
                                                              pickerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              pickerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              selectedDateTimeBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                              selectedDateTimeForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              actionButtonForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              iconSize: 24.0,
                                                            );
                                                          },
                                                        );
                                                        if (_datePicked2Time !=
                                                            null) {
                                                          safeSetState(() {
                                                            _model.datePicked2 =
                                                                DateTime(
                                                              getCurrentTimestamp
                                                                  .year,
                                                              getCurrentTimestamp
                                                                  .month,
                                                              getCurrentTimestamp
                                                                  .day,
                                                              _datePicked2Time
                                                                  .hour,
                                                              _datePicked2Time
                                                                  .minute,
                                                            );
                                                          });
                                                        } else if (_model
                                                                .datePicked2 !=
                                                            null) {
                                                          safeSetState(() {
                                                            _model.datePicked2 =
                                                                getCurrentTimestamp;
                                                          });
                                                        }

                                                        await _model
                                                            .currentTroliDocRef!
                                                            .update(
                                                                createTroliUbatRecordData(
                                                          troliFinishTime:
                                                              _model
                                                                  .datePicked2,
                                                        ));
                                                      },
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
