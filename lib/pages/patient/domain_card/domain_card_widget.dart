import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'domain_card_model.dart';
export 'domain_card_model.dart';

class DomainCardWidget extends StatefulWidget {
  const DomainCardWidget({
    super.key,
    required this.name,
    required this.color,
    required this.icon,
  });

  final String? name;
  final Color? color;
  final String? icon;

  @override
  State<DomainCardWidget> createState() => _DomainCardWidgetState();
}

class _DomainCardWidgetState extends State<DomainCardWidget> {
  late DomainCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DomainCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Material(
        color: Colors.transparent,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          width: 110.0,
          height: 110.0,
          decoration: BoxDecoration(
            color: widget!.color,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: Colors.transparent,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget!.icon!,
                  width: 60.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.name,
                  'Domain',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
