import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_card_model.dart';
export 'user_card_model.dart';

class UserCardWidget extends StatefulWidget {
  const UserCardWidget({super.key});

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  late UserCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserCardModel());
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
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
            'https://picsum.photos/seed/85/600',
            width: 64.0,
            height: 64.0,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Hello, ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                AuthUserStreamWidget(
                  builder: (context) => Text(
                    currentUserDisplayName,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.health_and_safety,
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 16.0,
                ),
                Text(
                  '10 Sessions',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).buttonDark,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Icon(
                  Icons.star_rounded,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 16.0,
                ),
                Text(
                  'Pro',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
          ],
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
