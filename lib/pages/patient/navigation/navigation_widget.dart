import '/auth/firebase_auth/auth_util.dart';
import '/components/location_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigation_model.dart';
export 'navigation_model.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  late NavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlutterFlowIconButton(
          borderColor: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          icon: Icon(
            Icons.notifications_rounded,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 24.0,
          ),
          onPressed: () {
            print('notifications pressed ...');
          },
        ),
        if (valueOrDefault<bool>(currentUserDocument?.isNurse, false))
          AuthUserStreamWidget(
            builder: (context) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: Container(
                        height: 540.0,
                        child: LocationModalWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: Icon(
                        Icons.my_location,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 16.0,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        currentUserDocument?.location?.toString(),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: Text(
                        ',',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('Profile');
          },
          child: ClipOval(
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1.0,
                ),
              ),
              child: Stack(
                children: [
                  if (valueOrDefault<bool>(currentUserDocument?.isNurse, false))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FaIcon(
                          FontAwesomeIcons.userNurse,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                  if (!valueOrDefault<bool>(
                      currentUserDocument?.isNurse, false))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FaIcon(
                          FontAwesomeIcons.bed,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
