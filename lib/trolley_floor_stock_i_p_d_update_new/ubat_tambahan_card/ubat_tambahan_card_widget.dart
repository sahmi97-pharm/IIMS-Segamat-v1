import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ubat_tambahan_card_model.dart';
export 'ubat_tambahan_card_model.dart';

class UbatTambahanCardWidget extends StatefulWidget {
  const UbatTambahanCardWidget({
    super.key,
    required this.locationRecord,
    this.ubatRecord,
  });

  final LocationsNewRecord? locationRecord;
  final UbatTambahanRecord? ubatRecord;

  @override
  State<UbatTambahanCardWidget> createState() => _UbatTambahanCardWidgetState();
}

class _UbatTambahanCardWidgetState extends State<UbatTambahanCardWidget>
    with TickerProviderStateMixin {
  late UbatTambahanCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UbatTambahanCardModel());

    _model.switchCValue =
        widget.ubatRecord?.status == 'Completed' ? true : false;
    _model.switchFValue = widget.ubatRecord!.fridgeItem;
    _model.switchCoolboxValue = widget.ubatRecord!.coolbox;
    _model.switchDDValue = widget.ubatRecord!.ddPatientBasis;
    _model.switchDDBookValue = widget.ubatRecord!.ddPatientBasisBook;
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
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
      child: StreamBuilder<UbatTambahanRecord>(
        stream: UbatTambahanRecord.getDocument(_model.currentUbatDocRef!),
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

          final containerUbatTambahanRecord = snapshot.data!;

          return Material(
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
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9BB14),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.pills,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'No: ${valueOrDefault<String>(
                                            widget.ubatRecord?.runningNumber
                                                .toString(),
                                            '0',
                                          )}',
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
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.currentUbatDocRef != null)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 16.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).error,
                                    icon: Icon(
                                      Icons.delete_rounded,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      await _model.currentUbatDocRef!.delete();
                                      _model.currentUbatDocRef = null;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 10.0, 5.0, 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: _model.switchCValue == true
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Status',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: _model.switchCValue ==
                                                          true
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
                                                  color: _model.switchCValue ==
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
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Switch.adaptive(
                                        value: _model.switchCValue!,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.switchCValue = newValue);
                                          if (newValue) {
                                            _model.latestRecord =
                                                await queryUbatTambahanRecordOnce(
                                              queryBuilder:
                                                  (ubatTambahanRecord) =>
                                                      ubatTambahanRecord
                                                          .where(
                                                            'location_ref',
                                                            isEqualTo: widget
                                                                .locationRecord
                                                                ?.reference,
                                                          )
                                                          .where(
                                                            'operational_date',
                                                            isEqualTo: functions
                                                                .getShiftDate(
                                                                    getCurrentTimestamp),
                                                          )
                                                          .orderBy(
                                                              'running_number',
                                                              descending: true),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);

                                            await _model.currentUbatDocRef!
                                                .update(
                                                    createUbatTambahanRecordData(
                                              status: 'Completed',
                                              finishedTime: getCurrentTimestamp,
                                              runningNumber:
                                                  valueOrDefault<int>(
                                                _model.latestRecord!
                                                        .runningNumber +
                                                    1,
                                                0,
                                              ),
                                            ));
                                            _model.rulebookSettingsUTC =
                                                await queryNotificationSettingsRecordOnce(
                                              queryBuilder:
                                                  (notificationSettingsRecord) =>
                                                      notificationSettingsRecord
                                                          .where(
                                                'trigger_name',
                                                isEqualTo:
                                                    'ubat_tambahan_completed',
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            if (_model.rulebookSettingsUTC
                                                    ?.isActive ==
                                                true) {
                                              _model.targetDevicesUTC =
                                                  await queryDeviceSubscriptionsRecordOnce(
                                                queryBuilder:
                                                    (deviceSubscriptionsRecord) =>
                                                        deviceSubscriptionsRecord
                                                            .whereIn(
                                                                'role',
                                                                _model
                                                                    .rulebookSettingsUTC
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
                                                      .targetDevicesUTC!
                                                      .map((e) => e.fcmToken)
                                                      .toList(),
                                                  "title": _model
                                                      .rulebookSettingsUTC!
                                                      .title,
                                                  "body":
                                                      'Ubat Tambahan ${widget.locationRecord?.locationName} selesai. Sila ambil dengan kadar segera.',
                                                  "locationPath": widget
                                                      .locationRecord
                                                      ?.reference
                                                      .path,
                                                });
                                                _model.cloudFunctionUTC =
                                                    SendTargetedPushCloudFunctionCallResponse(
                                                  data: result.data,
                                                  succeeded: true,
                                                  resultAsString:
                                                      result.data.toString(),
                                                  jsonBody: result.data,
                                                );
                                              } on FirebaseFunctionsException catch (error) {
                                                _model.cloudFunctionUTC =
                                                    SendTargetedPushCloudFunctionCallResponse(
                                                  errorCode: error.code,
                                                  succeeded: false,
                                                );
                                              }

                                              if (_model.cloudFunctionUTC!
                                                  .succeeded!) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Notifikasi berjaya dihantar!',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                            await _model.currentUbatDocRef!
                                                .update({
                                              ...createUbatTambahanRecordData(
                                                status: 'Pending',
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'finished_time':
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.ubatRecord?.fridgeItem == true
                                    ? FlutterFlowTheme.of(context).accent2
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent2,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              'Item Sejuk',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.montserrat(
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
                                                    color: widget.ubatRecord
                                                                ?.fridgeItem ==
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
                                            value: _model.switchFValue!,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchFValue = newValue);
                                              if (newValue) {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  fridgeItem:
                                                      _model.switchFValue,
                                                ));
                                              } else {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  fridgeItem:
                                                      _model.switchFValue,
                                                ));
                                              }
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                                color: widget.ubatRecord
                                                            ?.fridgeItem ==
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                    color: widget.ubatRecord
                                                                ?.fridgeItem ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchCoolboxValue!,
                                            onChanged: (newValue) async {
                                              safeSetState(() =>
                                                  _model.switchCoolboxValue =
                                                      newValue);
                                              if (newValue) {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  coolbox:
                                                      _model.switchCoolboxValue,
                                                ));
                                              } else {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  coolbox:
                                                      _model.switchCoolboxValue,
                                                ));
                                              }
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
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
                                5.0, 10.0, 5.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    widget.ubatRecord?.ddPatientBasis == true
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              'DD Patient Basis',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.montserrat(
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
                                                    color: widget.ubatRecord
                                                                ?.ddPatientBasis ==
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
                                            value: _model.switchDDValue!,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchDDValue = newValue);
                                              if (newValue) {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  ddPatientBasis:
                                                      _model.switchDDValue,
                                                ));
                                              } else {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  ddPatientBasis:
                                                      _model.switchDDValue,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                                color: widget.ubatRecord
                                                            ?.ddPatientBasis ==
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                    color: widget.ubatRecord
                                                                ?.ddPatientBasis ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchDDBookValue!,
                                            onChanged: (newValue) async {
                                              safeSetState(() =>
                                                  _model.switchDDBookValue =
                                                      newValue);
                                              if (newValue) {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  ddPatientBasisBook:
                                                      _model.switchDDBookValue,
                                                ));
                                              } else {
                                                await _model.currentUbatDocRef!
                                                    .update(
                                                        createUbatTambahanRecordData(
                                                  ddPatientBasisBook:
                                                      _model.switchDDBookValue,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 10.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent4,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
        },
      ),
    );
  }
}
