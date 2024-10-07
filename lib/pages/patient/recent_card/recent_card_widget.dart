import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recent_card_model.dart';
export 'recent_card_model.dart';

class RecentCardWidget extends StatefulWidget {
  const RecentCardWidget({
    super.key,
    required this.query,
  });

  final String? query;

  @override
  State<RecentCardWidget> createState() => _RecentCardWidgetState();
}

class _RecentCardWidgetState extends State<RecentCardWidget> {
  late RecentCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.query,
                  'Just searched something',
                ).maybeHandleOverflow(
                  maxChars: 150,
                  replacement: '…',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Icon(
                Icons.arrow_right,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
