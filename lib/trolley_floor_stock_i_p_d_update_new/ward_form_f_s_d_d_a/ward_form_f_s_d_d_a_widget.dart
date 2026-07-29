import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
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
import 'ward_form_f_s_d_d_a_model.dart';
export 'ward_form_f_s_d_d_a_model.dart';

class WardFormFSDDAWidget extends StatefulWidget {
  const WardFormFSDDAWidget({
    super.key,
    required this.locationRecord,
  });

  final LocationsNewRecord? locationRecord;

  @override
  State<WardFormFSDDAWidget> createState() => _WardFormFSDDAWidgetState();
}

class _WardFormFSDDAWidgetState extends State<WardFormFSDDAWidget>
    with TickerProviderStateMixin {
  late WardFormFSDDAModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WardFormFSDDAModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentFSDDDocRef = null;
      safeSetState(() {});
      _model.existingTodayRecord = await queryFloorStockDdaRecordOnce(
        queryBuilder: (floorStockDdaRecord) => floorStockDdaRecord
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
        _model.currentFSDDDocRef = _model.existingTodayRecord;
        safeSetState(() {});
      }
    });

    _model.switchFSDDValue = () {
      if (_model.currentFSDDDocRef != null) {
        return true;
      } else if (_model.switchFDDCValue == true) {
        return true;
      } else {
        return false;
      }
    }();

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

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
    return Visibility(
      visible: widget.locationRecord?.reference != null,
      child: Padding(
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                                      'Floor Stock DDA',
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
                                  if (widget.locationRecord?.reference != null)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 15.0, 0.0),
                          child: Switch.adaptive(
                            value: _model.switchFSDDValue!,
                            onChanged: (_model.switchFDDCValue == true)
                                ? null
                                : (newValue) async {
                                    safeSetState(() =>
                                        _model.switchFSDDValue = newValue);
                                    if (newValue) {
                                      var floorStockDdaRecordReference =
                                          FloorStockDdaRecord.collection.doc();
                                      await floorStockDdaRecordReference
                                          .set(createFloorStockDdaRecordData(
                                        recordDate: dateTimeFormat(
                                            "yyyy-MM-dd", getCurrentTimestamp),
                                        locationRef:
                                            widget.locationRecord?.reference,
                                        fsddStatus: 'Pending',
                                      ));
                                      _model.newFloorStockDDA =
                                          FloorStockDdaRecord
                                              .getDocumentFromData(
                                                  createFloorStockDdaRecordData(
                                                    recordDate: dateTimeFormat(
                                                        "yyyy-MM-dd",
                                                        getCurrentTimestamp),
                                                    locationRef: widget
                                                        .locationRecord
                                                        ?.reference,
                                                    fsddStatus: 'Pending',
                                                  ),
                                                  floorStockDdaRecordReference);
                                      _model.currentFSDDDocRef =
                                          _model.currentFSDDDocRef;
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    } else {
                                      await _model.currentFSDDDocRef!.reference
                                          .delete();
                                      _model.currentFSDDDocRef = null;
                                      safeSetState(() {});
                                    }
                                  },
                            activeColor: (_model.switchFDDCValue == true)
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            activeTrackColor: (_model.switchFDDCValue == true)
                                ? FlutterFlowTheme.of(context).alternate
                                : Color(0xFFF9BB14),
                            inactiveTrackColor: (_model.switchFDDCValue == true)
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: (_model.switchFDDCValue == true)
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                          ).animateOnPageLoad(
                              animationsMap['switchOnPageLoadAnimation1']!),
                        ),
                      ],
                    ),
                  ),
                  if (_model.currentFSDDDocRef != null)
                    StreamBuilder<FloorStockDdaRecord>(
                      stream: FloorStockDdaRecord.getDocument(
                          _model.currentFSDDDocRef!.reference),
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

                        final containerFloorStockDdaRecord = snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: containerFloorStockDdaRecord
                                                .fsddStatus ==
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
                                    padding: EdgeInsets.all(5.0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                      color: containerFloorStockDdaRecord
                                                                  .fsddStatus ==
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
                                                      color: containerFloorStockDdaRecord
                                                                  .fsddStatus ==
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
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Switch.adaptive(
                                            value: _model.switchFDDCValue ??=
                                                containerFloorStockDdaRecord
                                                            .fsddStatus ==
                                                        'Completed'
                                                    ? true
                                                    : false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchFDDCValue = newValue);
                                              if (newValue) {
                                                await _model.currentFSDDDocRef!
                                                    .reference
                                                    .update(
                                                        createFloorStockDdaRecordData(
                                                  fsddStatus: 'Completed',
                                                ));
                                                _model.rulebookSettingsFSDDA =
                                                    await queryNotificationSettingsRecordOnce(
                                                  queryBuilder:
                                                      (notificationSettingsRecord) =>
                                                          notificationSettingsRecord
                                                              .where(
                                                    'trigger_name',
                                                    isEqualTo:
                                                        'floor_stock_dda_completed',
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);
                                                if (_model.rulebookSettingsFSDDA
                                                        ?.isActive ==
                                                    true) {
                                                  _model.targetDevicesFSIVDripC =
                                                      await queryDeviceSubscriptionsRecordOnce(
                                                    queryBuilder: (deviceSubscriptionsRecord) =>
                                                        deviceSubscriptionsRecord
                                                            .whereIn(
                                                                'role',
                                                                _model
                                                                    .rulebookSettingsFSDDA
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
                                                          .map(
                                                              (e) => e.fcmToken)
                                                          .toList(),
                                                      "title": _model
                                                          .rulebookSettingsFSDDA!
                                                          .title,
                                                      "body":
                                                          'Floor Stock DD ${widget.locationRecord?.locationName} telah selesai. Sila ambil dengan kadar segera.',
                                                      "locationPath": widget
                                                          .locationRecord
                                                          ?.reference
                                                          .path,
                                                    });
                                                    _model.cloudFunctionFSDD =
                                                        SendTargetedPushCloudFunctionCallResponse(
                                                      data: result.data,
                                                      succeeded: true,
                                                      resultAsString: result
                                                          .data
                                                          .toString(),
                                                      jsonBody: result.data,
                                                    );
                                                  } on FirebaseFunctionsException catch (error) {
                                                    _model.cloudFunctionFSDD =
                                                        SendTargetedPushCloudFunctionCallResponse(
                                                      errorCode: error.code,
                                                      succeeded: false,
                                                    );
                                                  }

                                                  if (_model.cloudFunctionFSDD!
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
                                              }
                                            },
                                            activeColor: Color(0xFF249689),
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
                                            'Permasalahan Floor Stock DDA',
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Buku rekod tiada/ tidak lengkap',
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
                                                          .switchddarbValue ??=
                                                      containerFloorStockDdaRecord
                                                          .fsddRb,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                            .switchddarbValue =
                                                        newValue);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_model.switchddarbValue ?? true)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController1 ??=
                                                          TextEditingController(
                                                    text:
                                                        containerFloorStockDdaRecord
                                                            .fsddRbExp,
                                                  ),
                                                  focusNode: _model
                                                      .textFieldFocusNode1,
                                                  autofocus: false,
                                                  enabled: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
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
                                                          font:
                                                              GoogleFonts.inter(
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
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
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
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .textController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          Divider(
                                            thickness: 2.0,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Tiada indent PHiS/ tidak lengkap',
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
                                                          .switchfsddaphisValue ??=
                                                      containerFloorStockDdaRecord
                                                          .fsddPhis,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                            .switchfsddaphisValue =
                                                        newValue);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_model.switchfsddaphisValue ??
                                              true)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController2 ??=
                                                          TextEditingController(
                                                    text:
                                                        containerFloorStockDdaRecord
                                                            .fsddPhisExp,
                                                  ),
                                                  focusNode: _model
                                                      .textFieldFocusNode2,
                                                  autofocus: false,
                                                  enabled: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
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
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
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
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .textController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          if (() {
                                            if (_model.switchddarbValue!) {
                                              return true;
                                            } else if (_model
                                                .switchfsddaphisValue!) {
                                              return true;
                                            } else {
                                              return false;
                                            }
                                          }())
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await _model
                                                        .currentFSDDDocRef!
                                                        .reference
                                                        .update(
                                                            createFloorStockDdaRecordData(
                                                      fsddRb: _model
                                                          .switchddarbValue,
                                                      fsddRbExp: _model
                                                          .textController1.text,
                                                      fsddPhis: _model
                                                          .switchfsddaphisValue,
                                                      fsddPhisExp: _model
                                                          .textController2.text,
                                                    ));
                                                    _model.rulebookSettingsFSDDAP =
                                                        await queryNotificationSettingsRecordOnce(
                                                      queryBuilder:
                                                          (notificationSettingsRecord) =>
                                                              notificationSettingsRecord
                                                                  .where(
                                                        'trigger_name',
                                                        isEqualTo:
                                                            'floor_stock_dda_masalah',
                                                      ),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    if (_model
                                                            .rulebookSettingsFSDDAP
                                                            ?.isActive ==
                                                        true) {
                                                      _model.targetDevicesFSDDAP =
                                                          await queryDeviceSubscriptionsRecordOnce(
                                                        queryBuilder: (deviceSubscriptionsRecord) =>
                                                            deviceSubscriptionsRecord
                                                                .whereIn(
                                                                    'role',
                                                                    _model
                                                                        .rulebookSettingsFSDDAP
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
                                                              .targetDevicesFSDDAP!
                                                              .map((e) =>
                                                                  e.fcmToken)
                                                              .toList(),
                                                          "title": _model
                                                              .rulebookSettingsFSDDAP!
                                                              .title,
                                                          "body": _model
                                                              .rulebookSettingsFSDDAP!
                                                              .body,
                                                          "locationPath": widget
                                                              .locationRecord
                                                              ?.reference
                                                              .id,
                                                        });
                                                        _model.cloudFunctionFSDDAP =
                                                            SendTargetedPushCloudFunctionCallResponse(
                                                          data: result.data,
                                                          succeeded: true,
                                                          resultAsString: result
                                                              .data
                                                              .toString(),
                                                          jsonBody: result.data,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.cloudFunctionFSDDAP =
                                                            SendTargetedPushCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .cloudFunctionFSDDAP!
                                                          .succeeded!) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Notifikasi berjaya dihantar!',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                              child:
                                                                  AlertDialog(
                                                                title: Text(
                                                                    'Ralat'),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFF9BB14),
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .montserrat(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              letterSpacing:
                                                                  0.0,
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
      ),
    );
  }
}
