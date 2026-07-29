import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ward_form_status_updated_model.dart';
export 'ward_form_status_updated_model.dart';

class WardFormStatusUpdatedWidget extends StatefulWidget {
  const WardFormStatusUpdatedWidget({
    super.key,
    required this.locationRecord,
  });

  final LocationsRecord? locationRecord;

  @override
  State<WardFormStatusUpdatedWidget> createState() =>
      _WardFormStatusUpdatedWidgetState();
}

class _WardFormStatusUpdatedWidgetState
    extends State<WardFormStatusUpdatedWidget> with TickerProviderStateMixin {
  late WardFormStatusUpdatedModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WardFormStatusUpdatedModel());

    _model.switchTValue = widget.locationRecord?.trolleyStatus == 'Pending' ||
        widget.locationRecord?.trolleyStatus == 'Complete';
    _model.switchCTValue = widget.locationRecord?.trolleyStatus == 'Complete';
    _model.switchTFValue = widget.locationRecord!.trolleyFridgeItem;
    _model.switchValue1 = widget.locationRecord!.tdkTUCoolbox;
    _model.switchTDDValue = widget.locationRecord!.trolleyDDPatientBasis;
    _model.switchValue2 = widget.locationRecord!.tdkTUDDPatientBasis;
    _model.switchFSUValue = widget.locationRecord?.fsMedStatus == 'Pending' ||
        widget.locationRecord?.fsMedStatus == 'Complete';
    _model.switchFSCValue = widget.locationRecord?.fsMedStatus == 'Complete';
    _model.switchFSUFValue = widget.locationRecord!.trolleyFridgeItem;
    _model.switchFSUCBValue = widget.locationRecord!.tdkTUCoolbox;
    _model.switchfsubebValue = widget.locationRecord!.fsuBeb;
    _model.textController1 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsuBebr
            : '');
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.switchfsurbValue = widget.locationRecord!.fsuRb;
    _model.textController2 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsuRbr
            : '');
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.switchfsuphisValue = widget.locationRecord!.fsuPhis;
    _model.textController3 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsuPhisr
            : '');
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.switchFSIVDValue =
        widget.locationRecord?.fsIvdripStatus == 'Pending' ||
            widget.locationRecord?.fsIvdripStatus == 'Complete';
    _model.switchFIVDCValue =
        widget.locationRecord?.fsIvdripStatus == 'Complete';
    _model.switchfsivdphisValue = widget.locationRecord!.fsivdPhis;
    _model.textController4 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsivdPhisr
            : '');
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.switchFSDDValue = widget.locationRecord?.fsDdStatus == 'Pending' ||
        widget.locationRecord?.fsDdStatus == 'Complete';
    _model.switchFDDCValue = widget.locationRecord?.fsDdStatus == 'Complete';
    _model.switchddarbValue = widget.locationRecord!.fsddRb;
    _model.textController5 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsddRbr
            : '');
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.switchfsddaphisValue = widget.locationRecord!.fsddPhis;
    _model.textController6 ??= TextEditingController(
        text: widget.locationRecord != null
            ? widget.locationRecord?.fsddPhisr
            : '');
    _model.textFieldFocusNode6 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
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
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'switchOnPageLoadAnimation6': AnimationInfo(
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
      'switchOnPageLoadAnimation7': AnimationInfo(
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
      'switchOnPageLoadAnimation8': AnimationInfo(
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
      'switchOnPageLoadAnimation9': AnimationInfo(
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
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'switchOnPageLoadAnimation10': AnimationInfo(
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
      'switchOnPageLoadAnimation11': AnimationInfo(
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
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'switchOnPageLoadAnimation12': AnimationInfo(
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
      'switchOnPageLoadAnimation13': AnimationInfo(
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
    return Container(
      key: ValueKey('Key(\'form_\${_model.refreshKey}\')'),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if ((widget.locationRecord?.reference != null) &&
                          (widget.locationRecord?.type == 'Ward'))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 10.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: 600.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  FFIcons.ktrolleyIcon,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Troli Ubat',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .montserrat(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    if (widget.locationRecord
                                                            ?.reference !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .locationRecord
                                                                ?.name,
                                                            '...',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchTValue!,
                                            onChanged: (_model.switchCTValue ==
                                                    true)
                                                ? null
                                                : (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchTValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        trolleyStatus:
                                                            'Pending',
                                                        trolleyArrivalTime:
                                                            getCurrentTimestamp,
                                                        lastUpdate:
                                                            getCurrentTimestamp,
                                                      ));
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update({
                                                        ...createLocationsRecordData(
                                                          trolleyStatus: 'N/A',
                                                          lastUpdate:
                                                              getCurrentTimestamp,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'trolley_arrival_time':
                                                                FieldValue
                                                                    .delete(),
                                                          },
                                                        ),
                                                      });
                                                    }
                                                  },
                                            activeColor: (_model
                                                        .switchCTValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor: (_model
                                                        .switchCTValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveTrackColor:
                                                (_model.switchCTValue == true)
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .alternate
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                            inactiveThumbColor: (_model
                                                        .switchCTValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'switchOnActionTriggerAnimation']!,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.switchCTValue == true
                                                ? Color(0xFF18BAAD)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: Color(0xFF18BAAD),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Status',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: _model
                                                                          .switchCTValue ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Complete',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: _model
                                                                              .switchCTValue ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Switch.adaptive(
                                                  value: _model.switchCTValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchCTValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        trolleyStatus:
                                                            'Complete',
                                                        lastUpdate:
                                                            getCurrentTimestamp,
                                                        trolleyFinishedTime:
                                                            getCurrentTimestamp,
                                                      ));
                                                      try {
                                                        final result =
                                                            await FirebaseFunctions
                                                                    .instanceFor(
                                                                        region:
                                                                            'asia-southeast1')
                                                                .httpsCallable(
                                                                    'sendTopicPush')
                                                                .call({
                                                          "topic": functions
                                                              .getSafeTopicName(
                                                                  widget
                                                                      .locationRecord
                                                                      ?.name),
                                                          "title":
                                                              'Status Troli Ubat',
                                                          "body":
                                                              'Troli Floor Stock Ubat ${widget.locationRecord?.name} telah siap. Sila ambil dengan kadar segera.',
                                                          "locationPath": widget
                                                              .locationRecord
                                                              ?.reference
                                                              .path,
                                                        });
                                                        _model.cloudFunctionTU =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          succeeded: true,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.cloudFunctionTU =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .cloudFunctionTU!
                                                          .succeeded!) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Notifikasi dihantar ke ${widget.locationRecord?.name}',
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
                                                                    .accent2,
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
                                                                    'Notifikasi Gagal Dihantar!'),
                                                                content: Text(
                                                                    'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
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

                                                      safeSetState(() {});
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        trolleyStatus:
                                                            'Pending',
                                                      ));
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF18BAAD),
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ).animateOnPageLoad(animationsMap[
                                                    'switchOnPageLoadAnimation1']!),
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
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
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Item Sejuk',
                                                        style:
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    Switch.adaptive(
                                                      value:
                                                          _model.switchTFValue!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                .switchTFValue =
                                                            newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            trolleyFridgeItem:
                                                                _model
                                                                    .switchTFValue,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            trolleyFridgeItem:
                                                                _model
                                                                    .switchTFValue,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'switchOnPageLoadAnimation2']!),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 5.0, 10.0, 5.0),
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
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Cool Box',
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                    Switch.adaptive(
                                                      value:
                                                          _model.switchValue1!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue1 =
                                                                newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkTUCoolbox: true,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkTUCoolbox: false,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ).animateOnPageLoad(
                                                        animationsMap[
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
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
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Text(
                                                        'DD Patient Basis',
                                                        style:
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                          .switchTDDValue!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                .switchTDDValue =
                                                            newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            trolleyDDPatientBasis:
                                                                _model
                                                                    .switchTDDValue,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            trolleyDDPatientBasis:
                                                                _model
                                                                    .switchTDDValue,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'switchOnPageLoadAnimation4']!),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 5.0, 10.0, 5.0),
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
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Buku DD Patient Basis',
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                    Switch.adaptive(
                                                      value:
                                                          _model.switchValue2!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() =>
                                                            _model.switchValue2 =
                                                                newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkTUDDPatientBasis:
                                                                true,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkTUDDPatientBasis:
                                                                false,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ).animateOnPageLoad(
                                                        animationsMap[
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
                                          5.0, 0.0, 5.0, 10.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 10.0, 5.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
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
                                                              valueOrDefault<
                                                                  String>(
                                                                dateTimeFormat(
                                                                    "jm",
                                                                    widget
                                                                        .locationRecord
                                                                        ?.trolleyArrivalTime),
                                                                '--:--',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
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
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
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
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                                      widget
                                                                          .locationRecord
                                                                          ?.trolleyFinishedTime),
                                                                  '--:--',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 10.0, 5.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowIconButton(
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
                                                          FontAwesomeIcons
                                                              .clock,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 15.0,
                                                        ),
                                                        onPressed: (widget
                                                                    .locationRecord
                                                                    ?.trolleyArrivalTime ==
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
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                32.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                          ),
                                                                      pickerBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      pickerForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      selectedDateTimeBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
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

                                                                await widget
                                                                    .locationRecord!
                                                                    .reference
                                                                    .update(
                                                                        createLocationsRecordData(
                                                                  trolleyArrivalTime:
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
                                                      disabledColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      icon: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidClock,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        size: 15.0,
                                                      ),
                                                      onPressed: (widget
                                                                  .locationRecord
                                                                  ?.trolleyFinishedTime ==
                                                              null)
                                                          ? null
                                                          : () async {
                                                              final _datePicked2Time =
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
                                                                            .primary,
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
                                                              if (_datePicked2Time !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
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
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked2 =
                                                                      getCurrentTimestamp;
                                                                });
                                                              }

                                                              await widget
                                                                  .locationRecord!
                                                                  .reference
                                                                  .update(
                                                                      createLocationsRecordData(
                                                                trolleyFinishedTime:
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
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                      if (widget.locationRecord?.reference != null)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: 600.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons
                                                      .accessibleIcon,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Floor Stock Ubat',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .montserrat(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    if (widget.locationRecord
                                                            ?.reference !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .locationRecord
                                                                ?.name,
                                                            '...',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchFSUValue!,
                                            onChanged: (_model.switchFSCValue ==
                                                    true)
                                                ? null
                                                : (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchFSUValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsMedStatus: 'Pending',
                                                      ));
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsMedStatus: 'N/A',
                                                      ));
                                                    }
                                                  },
                                            activeColor: (_model
                                                        .switchFSCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor: (_model
                                                        .switchFSCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveTrackColor: (_model
                                                        .switchFSCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            inactiveThumbColor: (_model
                                                        .switchFSCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ).animateOnPageLoad(animationsMap[
                                              'switchOnPageLoadAnimation6']!),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.switchFSCValue == true
                                                ? Color(0xFF18BAAD)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFF18BAAD),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Status',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: _model
                                                                          .switchFSCValue ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Complete',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: _model
                                                                              .switchFSCValue ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Switch.adaptive(
                                                  value: _model.switchFSCValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchFSCValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        lastUpdate:
                                                            getCurrentTimestamp,
                                                        fsMedStatus: 'Complete',
                                                      ));
                                                      try {
                                                        final result =
                                                            await FirebaseFunctions
                                                                    .instanceFor(
                                                                        region:
                                                                            'asia-southeast1')
                                                                .httpsCallable(
                                                                    'sendTopicPush')
                                                                .call({
                                                          "topic": functions
                                                              .getSafeTopicName(
                                                                  widget
                                                                      .locationRecord
                                                                      ?.name),
                                                          "title":
                                                              'Status Floor Stok Ubat',
                                                          "body":
                                                              'Floor Stock Ubat ${widget.locationRecord?.name} telah siap. Sila ambil dengan kadar segera.',
                                                          "locationPath": widget
                                                              .locationRecord
                                                              ?.reference
                                                              .path,
                                                        });
                                                        _model.cloudFunctionFSU =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          succeeded: true,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.cloudFunctionFSU =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .cloudFunctionFSU!
                                                          .succeeded!) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Notifikasi dihantar ke ${widget.locationRecord?.name}',
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
                                                                    .accent2,
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
                                                                    'Notifikasi Gagal Dihantar!'),
                                                                content: Text(
                                                                    'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
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

                                                      safeSetState(() {});
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsMedStatus: 'Pending',
                                                      ));
                                                    }
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ).animateOnPageLoad(animationsMap[
                                                    'switchOnPageLoadAnimation7']!),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 5.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
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
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Item Sejuk',
                                                        style:
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                          .switchFSUFValue!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                .switchFSUFValue =
                                                            newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            fsMedFridgeItem: _model
                                                                .switchFSUFValue,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            fsMedFridgeItem: _model
                                                                .switchFSUFValue,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'switchOnPageLoadAnimation8']!),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    'Sila tanda jika perlu, JIKA WAD TIDAK BAWA BERSAMA TROLI',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 5.0, 10.0, 5.0),
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
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Cool Box',
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                    Switch.adaptive(
                                                      value: _model
                                                          .switchFSUCBValue!,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                .switchFSUCBValue =
                                                            newValue);
                                                        if (newValue) {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkFSUCoolbox: _model
                                                                .switchFSUCBValue,
                                                          ));
                                                        } else {
                                                          await widget
                                                              .locationRecord!
                                                              .reference
                                                              .update(
                                                                  createLocationsRecordData(
                                                            tdkFSUCoolbox: _model
                                                                .switchFSUCBValue,
                                                          ));
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'switchOnPageLoadAnimation9']!),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEAE2EF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Permasalahan Floor Stock Ubat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Tiada botol/ sampul/ EB',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchfsubebValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchfsubebValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuBeb: _model
                                                                    .switchfsubebValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok Ubat',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock Ubat ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsubeb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsubeb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsubeb!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuBeb: _model
                                                                    .switchfsubebValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model.switchfsubebValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController1,
                                                        focusNode: _model
                                                            .textFieldFocusNode1,
                                                        autofocus: false,
                                                        enabled: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: 'TextField',
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Buku rekod tiada/ tidak lengkap',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchfsurbValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchfsurbValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuRb: _model
                                                                    .switchfsurbValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok Ubat',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock Ubat ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsurb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsurb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsurb!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuRb: _model
                                                                    .switchfsurbValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model.switchfsurbValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController2,
                                                        focusNode: _model
                                                            .textFieldFocusNode2,
                                                        autofocus: false,
                                                        enabled: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: 'TextField',
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Tiada issue PHiS/ tidak lengkap',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchfsuphisValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchfsuphisValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuPhis: _model
                                                                    .switchfsuphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok Ubat',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock Ubat ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsuphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsuphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsuphis!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsuPhis: _model
                                                                    .switchfsuphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model.switchfsuphisValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController3,
                                                        focusNode: _model
                                                            .textFieldFocusNode3,
                                                        autofocus: false,
                                                        enabled: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: 'TextField',
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                        maxLines: null,
                                                        minLines: 2,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .textController3Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                if (() {
                                                  if (_model
                                                      .switchfsubebValue!) {
                                                    return true;
                                                  } else if (_model
                                                      .switchfsurbValue!) {
                                                    return true;
                                                  } else if (_model
                                                      .switchfsuphisValue!) {
                                                    return true;
                                                  } else {
                                                    return false;
                                                  }
                                                }())
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (widget
                                                                  .locationRecord
                                                                  ?.reference !=
                                                              null) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update(
                                                                    createLocationsRecordData(
                                                              fsuBebr: _model
                                                                  .textController1
                                                                  .text,
                                                              fsuRbr: _model
                                                                  .textController2
                                                                  .text,
                                                              fsuPhisr: _model
                                                                  .textController3
                                                                  .text,
                                                            ));
                                                          } else {
                                                            await LocationsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createLocationsRecordData(
                                                                  fsuBebr: _model
                                                                      .textController1
                                                                      .text,
                                                                  fsuRbr: _model
                                                                      .textController2
                                                                      .text,
                                                                  fsuPhisr: _model
                                                                      .textController3
                                                                      .text,
                                                                ));
                                                          }
                                                        },
                                                        text: 'Confirm',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 150.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFFF9BB14),
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 5.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
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
                                      padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Jumlah item tidak supply',
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
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
                                                Container(
                                                  width: 120.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                      FlutterFlowCountController(
                                                    decrementIconBuilder:
                                                        (enabled) => Icon(
                                                      Icons.remove_rounded,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 24.0,
                                                    ),
                                                    incrementIconBuilder:
                                                        (enabled) => Icon(
                                                      Icons.add_rounded,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 24.0,
                                                    ),
                                                    countBuilder: (count) =>
                                                        Text(
                                                      count.toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    count: _model
                                                            .countControllerValue1 ??=
                                                        widget.locationRecord!
                                                            .fsuItem,
                                                    updateCount: (count) async {
                                                      safeSetState(() => _model
                                                              .countControllerValue1 =
                                                          count);
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsuItem: _model
                                                            .countControllerValue1,
                                                      ));
                                                    },
                                                    stepSize: 1,
                                                    minimum: 0,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
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
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                      if (widget.locationRecord?.reference != null)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: 600.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons
                                                      .accessibleIcon,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Floor Stock IV Drip',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .montserrat(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    if (widget.locationRecord
                                                            ?.reference !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .locationRecord
                                                                ?.name,
                                                            '...',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchFSIVDValue!,
                                            onChanged: (_model
                                                        .switchFIVDCValue ==
                                                    true)
                                                ? null
                                                : (newValue) async {
                                                    safeSetState(() => _model
                                                            .switchFSIVDValue =
                                                        newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsIvdripStatus:
                                                            'Pending',
                                                      ));
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsIvdripStatus: 'N/A',
                                                      ));
                                                    }
                                                  },
                                            activeColor: (_model
                                                        .switchFIVDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor: (_model
                                                        .switchFIVDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveTrackColor: (_model
                                                        .switchFIVDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            inactiveThumbColor: (_model
                                                        .switchFIVDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ).animateOnPageLoad(animationsMap[
                                              'switchOnPageLoadAnimation10']!),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.switchFIVDCValue ==
                                                    true
                                                ? Color(0xFF18BAAD)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFF18BAAD),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Status',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: _model
                                                                          .switchFIVDCValue ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Complete',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: _model
                                                                              .switchFIVDCValue ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Switch.adaptive(
                                                  value:
                                                      _model.switchFIVDCValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() => _model
                                                            .switchFIVDCValue =
                                                        newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        lastUpdate:
                                                            getCurrentTimestamp,
                                                        fsIvdripStatus:
                                                            'Complete',
                                                      ));
                                                      try {
                                                        final result =
                                                            await FirebaseFunctions
                                                                    .instanceFor(
                                                                        region:
                                                                            'asia-southeast1')
                                                                .httpsCallable(
                                                                    'sendTopicPush')
                                                                .call({
                                                          "topic": functions
                                                              .getSafeTopicName(
                                                                  widget
                                                                      .locationRecord
                                                                      ?.name),
                                                          "title":
                                                              'Status Floor Stok IV Drip',
                                                          "body":
                                                              'Floor Stock IV Drip ${widget.locationRecord?.name} telah siap. Sila ambil dengan kadar segera.',
                                                          "locationPath": widget
                                                              .locationRecord
                                                              ?.reference
                                                              .path,
                                                        });
                                                        _model.cloudFunctionFSIVDrip =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          succeeded: true,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.cloudFunctionFSIVDrip =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .cloudFunctionFSIVDrip!
                                                          .succeeded!) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Notifikasi dihantar ke ${widget.locationRecord?.name}',
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
                                                                    .accent2,
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
                                                                    'Notifikasi Gagal Dihantar!'),
                                                                content: Text(
                                                                    'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
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

                                                      safeSetState(() {});
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsIvdripStatus:
                                                            'Pending',
                                                      ));
                                                    }
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ).animateOnPageLoad(animationsMap[
                                                    'switchOnPageLoadAnimation11']!),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEAE2EF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Tiada issue PHiS/ tidak lengkap',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchfsivdphisValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchfsivdphisValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsivdPhis: _model
                                                                    .switchfsivdphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok IV Drip',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock IV Drip ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsivdripphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsivdripphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsivdripphis!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsivdPhis: _model
                                                                    .switchfsivdphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model
                                                        .switchfsivdphisValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController4,
                                                        focusNode: _model
                                                            .textFieldFocusNode4,
                                                        autofocus: false,
                                                        enabled: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .send,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: 'TextField',
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                        maxLines: null,
                                                        minLines: 2,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .textController4Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                if (_model.switchfsivdphisValue!
                                                    ? true
                                                    : false)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (widget
                                                                  .locationRecord
                                                                  ?.reference !=
                                                              null) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update(
                                                                    createLocationsRecordData(
                                                              fsivdPhisr: _model
                                                                  .textController4
                                                                  .text,
                                                            ));
                                                          } else {
                                                            await LocationsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createLocationsRecordData(
                                                                  fsivdPhisr: _model
                                                                      .textController4
                                                                      .text,
                                                                ));
                                                          }
                                                        },
                                                        text: 'Confirm',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 150.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFFF9BB14),
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 5.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
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
                                      padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Jumlah item tidak supply',
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
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
                                                Container(
                                                  width: 120.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                      FlutterFlowCountController(
                                                    decrementIconBuilder:
                                                        (enabled) => Icon(
                                                      Icons.remove_rounded,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 24.0,
                                                    ),
                                                    incrementIconBuilder:
                                                        (enabled) => Icon(
                                                      Icons.add_rounded,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 24.0,
                                                    ),
                                                    countBuilder: (count) =>
                                                        Text(
                                                      count.toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    count: _model
                                                            .countControllerValue2 ??=
                                                        widget.locationRecord!
                                                            .fsivdripItem,
                                                    updateCount: (count) async {
                                                      safeSetState(() => _model
                                                              .countControllerValue2 =
                                                          count);
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsivdripItem: _model
                                                            .countControllerValue2,
                                                      ));
                                                    },
                                                    stepSize: 1,
                                                    minimum: 0,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
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
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation4']!),
                        ),
                      if (widget.locationRecord?.reference != null)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              width: 600.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons
                                                      .accessibleIcon,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Floor Stock DDA',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .montserrat(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                    if (widget.locationRecord
                                                            ?.reference !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .locationRecord
                                                                ?.name,
                                                            '...',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchFSDDValue!,
                                            onChanged: (_model
                                                        .switchFDDCValue ==
                                                    true)
                                                ? null
                                                : (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchFSDDValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsDdStatus: 'Pending',
                                                      ));
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsDdStatus: 'N/A',
                                                      ));
                                                    }
                                                  },
                                            activeColor: (_model
                                                        .switchFDDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor:
                                                (_model.switchFDDCValue == true)
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .alternate
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                            inactiveTrackColor: (_model
                                                        .switchFDDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            inactiveThumbColor: (_model
                                                        .switchFDDCValue ==
                                                    true)
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ).animateOnPageLoad(animationsMap[
                                              'switchOnPageLoadAnimation12']!),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.switchFDDCValue ==
                                                    true
                                                ? Color(0xFF18BAAD)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFF18BAAD),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Status',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: _model
                                                                          .switchFDDCValue ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Complete',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: _model
                                                                              .switchFDDCValue ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Switch.adaptive(
                                                  value:
                                                      _model.switchFDDCValue!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.switchFDDCValue =
                                                            newValue);
                                                    if (newValue) {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        lastUpdate:
                                                            getCurrentTimestamp,
                                                        fsDdStatus: 'Complete',
                                                      ));
                                                      try {
                                                        final result =
                                                            await FirebaseFunctions
                                                                    .instanceFor(
                                                                        region:
                                                                            'asia-southeast1')
                                                                .httpsCallable(
                                                                    'sendTopicPush')
                                                                .call({
                                                          "topic": functions
                                                              .getSafeTopicName(
                                                                  widget
                                                                      .locationRecord
                                                                      ?.name),
                                                          "title":
                                                              'Status Floor Stok DDA',
                                                          "body":
                                                              'Floor Stock Ubat DDA ${widget.locationRecord?.name} telah siap. Sila ambil dengan kadar segera.',
                                                          "locationPath": widget
                                                              .locationRecord
                                                              ?.reference
                                                              .path,
                                                        });
                                                        _model.cloudFunctionFSDDA =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          succeeded: true,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.cloudFunctionFSDDA =
                                                            SendTopicPushCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .cloudFunctionFSDDA!
                                                          .succeeded!) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Notifikasi dihantar ke ${widget.locationRecord?.name}',
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
                                                                    .accent2,
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
                                                                    'Notifikasi Gagal Dihantar!'),
                                                                content: Text(
                                                                    'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
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

                                                      safeSetState(() {});
                                                    } else {
                                                      await widget
                                                          .locationRecord!
                                                          .reference
                                                          .update(
                                                              createLocationsRecordData(
                                                        fsDdStatus: 'Pending',
                                                      ));
                                                    }
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ).animateOnPageLoad(animationsMap[
                                                    'switchOnPageLoadAnimation13']!),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEAE2EF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Buku rekod tiada/ tidak lengkap',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchddarbValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchddarbValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsddRb: _model
                                                                    .switchddarbValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok DDA',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock DDA ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsddrb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsddrb =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsddrb!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsddRb: _model
                                                                    .switchddarbValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model.switchddarbValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController5,
                                                        focusNode: _model
                                                            .textFieldFocusNode5,
                                                        onFieldSubmitted:
                                                            (_) async {
                                                          if (widget
                                                                  .locationRecord
                                                                  ?.reference !=
                                                              null) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update(
                                                                    createLocationsRecordData(
                                                              fsddRbr: _model
                                                                  .textController5
                                                                  .text,
                                                            ));
                                                          } else {
                                                            await LocationsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createLocationsRecordData(
                                                                  fsddRbr: _model
                                                                      .textController5
                                                                      .text,
                                                                ));
                                                          }
                                                        },
                                                        autofocus: false,
                                                        enabled: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .send,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: widget
                                                              .locationRecord!
                                                              .fsddRbr,
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                        maxLines: null,
                                                        minLines: 2,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .textController5Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Tiada indent PHiS/ tidak lengkap',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Switch.adaptive(
                                                        value: _model
                                                            .switchfsddaphisValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchfsddaphisValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsddPhis: _model
                                                                    .switchfsddaphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            try {
                                                              final result = await FirebaseFunctions
                                                                      .instanceFor(
                                                                          region:
                                                                              'asia-southeast1')
                                                                  .httpsCallable(
                                                                      'sendTopicPush')
                                                                  .call({
                                                                "topic": functions
                                                                    .getSafeTopicName(widget
                                                                        .locationRecord
                                                                        ?.name),
                                                                "title":
                                                                    'Status Floor Stok DDA',
                                                                "body":
                                                                    'Terdapat masalah dalam indent Floor Stock DDA ${widget.locationRecord?.name} Sila semak IIMS.',
                                                                "locationPath": widget
                                                                    .locationRecord
                                                                    ?.reference
                                                                    .path,
                                                              });
                                                              _model.cloudFunctionfsddphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                succeeded: true,
                                                              );
                                                            } on FirebaseFunctionsException catch (error) {
                                                              _model.cloudFunctionfsddphis =
                                                                  SendTopicPushCloudFunctionCallResponse(
                                                                errorCode:
                                                                    error.code,
                                                                succeeded:
                                                                    false,
                                                              );
                                                            }

                                                            if (_model
                                                                .cloudFunctionfsddphis!
                                                                .succeeded!) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Notifikasi dihantar ke ${widget.locationRecord?.name}',
                                                                    style:
                                                                        TextStyle(
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
                                                                          .accent2,
                                                                ),
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Notifikasi Gagal Dihantar!'),
                                                                      content: Text(
                                                                          'Notifikasi gagal dihantar. Sila semak sambungan internet.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          } else {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update({
                                                              ...createLocationsRecordData(
                                                                fsddPhis: _model
                                                                    .switchfsddaphisValue,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'notificationCount':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });
                                                          }
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
                                                if (_model
                                                        .switchfsddaphisValue ??
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController6,
                                                        focusNode: _model
                                                            .textFieldFocusNode6,
                                                        onFieldSubmitted:
                                                            (_) async {
                                                          if (widget
                                                                  .locationRecord
                                                                  ?.reference !=
                                                              null) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update(
                                                                    createLocationsRecordData(
                                                              fsddPhisr: _model
                                                                  .textController6
                                                                  .text,
                                                            ));
                                                          } else {
                                                            await LocationsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createLocationsRecordData(
                                                                  fsddPhisr: _model
                                                                      .textController6
                                                                      .text,
                                                                ));
                                                          }
                                                        },
                                                        autofocus: false,
                                                        enabled: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .send,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
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
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText: widget
                                                              .locationRecord!
                                                              .fsddPhisr,
                                                          hintStyle:
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
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
                                                              fontSize: 12.0,
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
                                                        maxLines: null,
                                                        minLines: 2,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .textController6Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                if (() {
                                                  if (_model
                                                      .switchddarbValue!) {
                                                    return true;
                                                  } else if (_model
                                                      .switchfsddaphisValue!) {
                                                    return true;
                                                  } else {
                                                    return false;
                                                  }
                                                }())
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (widget
                                                                  .locationRecord
                                                                  ?.reference !=
                                                              null) {
                                                            await widget
                                                                .locationRecord!
                                                                .reference
                                                                .update(
                                                                    createLocationsRecordData(
                                                              fsddRbr: _model
                                                                  .textController5
                                                                  .text,
                                                              fsddPhisr: _model
                                                                  .textController6
                                                                  .text,
                                                            ));
                                                          } else {
                                                            await LocationsRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createLocationsRecordData(
                                                                  fsddRbr: _model
                                                                      .textController5
                                                                      .text,
                                                                  fsddPhisr: _model
                                                                      .textController6
                                                                      .text,
                                                                ));
                                                          }
                                                        },
                                                        text: 'Confirm',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 150.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFFF9BB14),
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 5.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
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
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation5']!),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
  }
}
