import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fun_fact_model.dart';
export 'fun_fact_model.dart';

class FunFactWidget extends StatefulWidget {
  const FunFactWidget({super.key});

  @override
  State<FunFactWidget> createState() => _FunFactWidgetState();
}

class _FunFactWidgetState extends State<FunFactWidget> {
  late FunFactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FunFactModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x4D99F6E4),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xFF14B8A6),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.health_and_safety_rounded,
                  color: Color(0xFF14B8A6),
                  size: 20.0,
                ),
                Text(
                  'Health fact',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Color(0xFF14B8A6),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ].divide(SizedBox(width: 5.0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                'The body can produce enough heat in just half an hour to boil water.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Color(0xFF14B8A6),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
