import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/wad_detail_page_new/w_d_floor_stock_d_d_new/w_d_floor_stock_d_d_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_i_v_drip_new/w_d_floor_stock_i_v_drip_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_no_item_new/w_d_floor_stock_no_item_new_widget.dart';
import '/wad_detail_page_new/w_d_floor_stock_ubat_new/w_d_floor_stock_ubat_new_widget.dart';
import '/wad_detail_page_new/w_d_troli_ubat_view/w_d_troli_ubat_view_widget.dart';
import '/wad_detail_page_new/w_d_ubat_tambahan_new/w_d_ubat_tambahan_new_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'ward_details_new_model.dart';
export 'ward_details_new_model.dart';

class WardDetailsNewWidget extends StatefulWidget {
  const WardDetailsNewWidget({
    super.key,
    required this.locationref,
  });

  final DocumentReference? locationref;

  static String routeName = 'WardDetails_New';
  static String routePath = '/wardDetailsNew';

  @override
  State<WardDetailsNewWidget> createState() => _WardDetailsNewWidgetState();
}

class _WardDetailsNewWidgetState extends State<WardDetailsNewWidget> {
  late WardDetailsNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WardDetailsNewModel());

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
    return StreamBuilder<LocationsNewRecord>(
      stream: LocationsNewRecord.getDocument(widget.locationref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final wardDetailsNewLocationsNewRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: Visibility(
              visible: loggedIn,
              child: FloatingActionButton(
                onPressed: () async {
                  FFAppState().globalActiveWard =
                      wardDetailsNewLocationsNewRecord.locationName;
                  FFAppState().globalActiveType =
                      wardDetailsNewLocationsNewRecord.category;
                  safeSetState(() {});

                  context.pushNamed(WadUpdateUpdatedWidget.routeName);
                },
                backgroundColor: FlutterFlowTheme.of(context).primary,
                elevation: 8.0,
                child: Icon(
                  FFIcons.ktrolleyIcon,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: GradientText(
                valueOrDefault<String>(
                  wardDetailsNewLocationsNewRecord.locationName,
                  'Wad 1',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).accent1
                ],
                gradientDirection: GradientDirection.ttb,
                gradientType: GradientType.linear,
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<UbatTambahanRecord>>(
                      stream: queryUbatTambahanRecord(
                        queryBuilder: (ubatTambahanRecord) => ubatTambahanRecord
                            .where(
                              'location_ref',
                              isEqualTo: widget.locationref,
                            )
                            .where(
                              'operational_date',
                              isEqualTo: functions
                                  .getStartOfDay(getCurrentTimestamp)
                                  ?.toString(),
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
                        List<UbatTambahanRecord>
                            containerUbatTambahanRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final containerUbatTambahanRecord =
                            containerUbatTambahanRecordList.isNotEmpty
                                ? containerUbatTambahanRecordList.first
                                : null;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: valueOrDefault<bool>(
                              (containerUbatTambahanRecord?.reference !=
                                      null) &&
                                  (containerUbatTambahanRecord?.isFinished ==
                                      false) &&
                                  (wardDetailsNewLocationsNewRecord
                                          .useUbatTambahan ==
                                      true),
                              false,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: wrapWithModel(
                                model: _model.wDUbatTambahanNewModel,
                                updateCallback: () => safeSetState(() {}),
                                child: WDUbatTambahanNewWidget(
                                  locationRecord:
                                      wardDetailsNewLocationsNewRecord,
                                  ubatTambahanRecord:
                                      containerUbatTambahanRecord!,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    if (wardDetailsNewLocationsNewRecord.category == 'Ward')
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: StreamBuilder<List<TroliUbatRecord>>(
                          stream: queryTroliUbatRecord(
                            queryBuilder: (troliUbatRecord) => troliUbatRecord
                                .where(
                                  'location_ref',
                                  isEqualTo: widget.locationref,
                                )
                                .where(
                                  'record_date',
                                  isEqualTo: dateTimeFormat(
                                      "dd-MM-yyyy", getCurrentTimestamp),
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
                            List<TroliUbatRecord>
                                wDTroliUbatViewTroliUbatRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final wDTroliUbatViewTroliUbatRecord =
                                wDTroliUbatViewTroliUbatRecordList.isNotEmpty
                                    ? wDTroliUbatViewTroliUbatRecordList.first
                                    : null;

                            return wrapWithModel(
                              model: _model.wDTroliUbatViewModel,
                              updateCallback: () => safeSetState(() {}),
                              child: WDTroliUbatViewWidget(
                                locationRecord:
                                    wardDetailsNewLocationsNewRecord,
                                ubatRecord: wDTroliUbatViewTroliUbatRecord!,
                              ),
                            );
                          },
                        ),
                      ),
                    StreamBuilder<List<FloorStockUbatRecord>>(
                      stream: queryFloorStockUbatRecord(
                        queryBuilder: (floorStockUbatRecord) =>
                            floorStockUbatRecord
                                .where(
                                  'location_ref',
                                  isEqualTo: widget.locationref,
                                )
                                .where(
                                  'record_date',
                                  isEqualTo: dateTimeFormat(
                                      "dd-MM-yyyy", getCurrentTimestamp),
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
                        List<FloorStockUbatRecord>
                            columnFloorStockUbatRecordList = snapshot.data!;
                        final columnFloorStockUbatRecord =
                            columnFloorStockUbatRecordList.isNotEmpty
                                ? columnFloorStockUbatRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StreamBuilder<List<FloorStockIvdripRecord>>(
                              stream: queryFloorStockIvdripRecord(
                                queryBuilder: (floorStockIvdripRecord) =>
                                    floorStockIvdripRecord
                                        .where(
                                          'location_ref',
                                          isEqualTo: widget.locationref,
                                        )
                                        .where(
                                          'record_date',
                                          isEqualTo: dateTimeFormat(
                                              "dd-MM-yyyy",
                                              getCurrentTimestamp),
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<FloorStockIvdripRecord>
                                    columnFloorStockIvdripRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final columnFloorStockIvdripRecord =
                                    columnFloorStockIvdripRecordList.isNotEmpty
                                        ? columnFloorStockIvdripRecordList.first
                                        : null;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (valueOrDefault<bool>(
                                      () {
                                        if (columnFloorStockIvdripRecord!
                                                .fsivdripItem >=
                                            1) {
                                          return true;
                                        } else if (columnFloorStockUbatRecord!
                                                .fsuItem >=
                                            1) {
                                          return true;
                                        } else {
                                          return false;
                                        }
                                      }(),
                                      false,
                                    ))
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.wDFloorStockNoItemNewModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: WDFloorStockNoItemNewWidget(
                                            locationRecord:
                                                wardDetailsNewLocationsNewRecord,
                                            fsuRecord:
                                                columnFloorStockUbatRecord!,
                                            fsivdripRecord:
                                                columnFloorStockIvdripRecord!,
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                    StreamBuilder<List<FloorStockUbatRecord>>(
                      stream: queryFloorStockUbatRecord(
                        queryBuilder: (floorStockUbatRecord) =>
                            floorStockUbatRecord
                                .where(
                                  'location_ref',
                                  isEqualTo: widget.locationref,
                                )
                                .where(
                                  'record_date',
                                  isEqualTo: dateTimeFormat(
                                      "dd-MM-yyyy", getCurrentTimestamp),
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
                        List<FloorStockUbatRecord>
                            columnFloorStockUbatRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnFloorStockUbatRecord =
                            columnFloorStockUbatRecordList.isNotEmpty
                                ? columnFloorStockUbatRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (valueOrDefault<bool>(
                              () {
                                if (wardDetailsNewLocationsNewRecord.category ==
                                    'Unit') {
                                  return true;
                                } else if (columnFloorStockUbatRecord
                                        ?.reference !=
                                    null) {
                                  return true;
                                } else {
                                  return false;
                                }
                              }(),
                              false,
                            ))
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: wrapWithModel(
                                  model: _model.wDFloorStockUbatNewModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: WDFloorStockUbatNewWidget(
                                    locationRecord:
                                        wardDetailsNewLocationsNewRecord,
                                    fsuRecord: columnFloorStockUbatRecord!,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    StreamBuilder<List<FloorStockIvdripRecord>>(
                      stream: queryFloorStockIvdripRecord(
                        queryBuilder: (floorStockIvdripRecord) =>
                            floorStockIvdripRecord
                                .where(
                                  'location_ref',
                                  isEqualTo: widget.locationref,
                                )
                                .where(
                                  'record_date',
                                  isEqualTo: dateTimeFormat(
                                      "dd-MM-yyyy", getCurrentTimestamp),
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
                        List<FloorStockIvdripRecord>
                            columnFloorStockIvdripRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnFloorStockIvdripRecord =
                            columnFloorStockIvdripRecordList.isNotEmpty
                                ? columnFloorStockIvdripRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (columnFloorStockIvdripRecord?.reference != null)
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: wrapWithModel(
                                  model: _model.wDFloorStockIVDripNewModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: WDFloorStockIVDripNewWidget(
                                    locationRecord:
                                        wardDetailsNewLocationsNewRecord,
                                    fsivdripRecord:
                                        columnFloorStockIvdripRecord!,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    StreamBuilder<List<FloorStockDdaRecord>>(
                      stream: queryFloorStockDdaRecord(
                        queryBuilder: (floorStockDdaRecord) =>
                            floorStockDdaRecord
                                .where(
                                  'location_ref',
                                  isEqualTo: widget.locationref,
                                )
                                .where(
                                  'record_date',
                                  isEqualTo: dateTimeFormat(
                                      "dd-MM-yyyy", getCurrentTimestamp),
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
                        List<FloorStockDdaRecord>
                            columnFloorStockDdaRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnFloorStockDdaRecord =
                            columnFloorStockDdaRecordList.isNotEmpty
                                ? columnFloorStockDdaRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (columnFloorStockDdaRecord?.reference != null)
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: wrapWithModel(
                                  model: _model.wDFloorStockDDNewModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: WDFloorStockDDNewWidget(
                                    locationRecord:
                                        wardDetailsNewLocationsNewRecord,
                                    fsudd: columnFloorStockDdaRecord!,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
