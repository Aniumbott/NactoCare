import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'session_model.dart';
export 'session_model.dart';

class SessionWidget extends StatefulWidget {
  const SessionWidget({
    super.key,
    required this.nurse,
  });

  final NursesRecord? nurse;

  @override
  State<SessionWidget> createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  late SessionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionModel());

    _model.userNameFocusNode ??= FocusNode();

    _model.nurseNameController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.nurse?.displayName,
      'Nurse',
    ));
    _model.nurseNameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Session Booking',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 10.0,
        ),
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<UsersRecord>>(
            stream: queryUsersRecord(),
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
              List<UsersRecord> containerUsersRecordList = snapshot.data!;
              return Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                        child: TextFormField(
                          controller: _model.userNameController ??=
                              TextEditingController(
                            text: valueOrDefault<String>(
                              containerUsersRecordList
                                  .where((e) => e.email == currentUserEmail)
                                  .toList()
                                  .first
                                  .displayName,
                              'Aniket Rana',
                            ),
                          ),
                          focusNode: _model.userNameFocusNode,
                          autofocus: true,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Label here...',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.userNameControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: TextFormField(
                          controller: _model.nurseNameController,
                          focusNode: _model.nurseNameFocusNode,
                          autofocus: true,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Label here...',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.nurseNameControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Select Date',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      FlutterFlowCalendar(
                        color: FlutterFlowTheme.of(context).primary,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        weekFormat: false,
                        weekStartsMonday: false,
                        initialDate: getCurrentTimestamp,
                        rowHeight: 64.0,
                        onChange: (DateTimeRange? newSelectedDate) {
                          setState(() =>
                              _model.calendarSelectedDay = newSelectedDate);
                        },
                        titleStyle: FlutterFlowTheme.of(context).headlineSmall,
                        dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
                        dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                        selectedDateStyle:
                            FlutterFlowTheme.of(context).titleSmall,
                        inactiveDateStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Duration',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Container(
                                width: 160.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryText
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 20.0,
                                  ),
                                  incrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 20.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  count: _model.countControllerValue ??= 1,
                                  updateCount: (count) => setState(() =>
                                      _model.countControllerValue = count),
                                  stepSize: 1,
                                  minimum: 1,
                                  maximum: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text(
                                  'Total Cost',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Rs.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      functions
                                          .costcalc(
                                              _model.countControllerValue!)
                                          .toString(),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await SessionsRecord.collection.doc().set({
                              ...createSessionsRecordData(
                                duration: valueOrDefault<int>(
                                  _model.countControllerValue,
                                  1,
                                ),
                                happened: _model.calendarSelectedDay?.start,
                                user: containerUsersRecordList
                                    .where((e) => e.email == currentUserEmail)
                                    .toList()
                                    .first
                                    .reference,
                                status: 'requested',
                                nurse: widget.nurse?.reference,
                                cost: valueOrDefault<int>(
                                  functions
                                      .costcalc(_model.countControllerValue!),
                                  480,
                                ),
                              ),
                              ...mapToFirestore(
                                {
                                  'created_time': FieldValue.serverTimestamp(),
                                },
                              ),
                            });

                            context.pushNamed('notifications');

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                  'Your request has been submitted !!!',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).success,
                              ),
                            );
                          },
                          text: 'Request',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
