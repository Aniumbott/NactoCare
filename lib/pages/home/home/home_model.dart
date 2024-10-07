import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/user_card/user_card_widget.dart';
import '/pages/patient/domain_card/domain_card_widget.dart';
import '/pages/patient/fun_fact/fun_fact_widget.dart';
import '/pages/patient/recent_card/recent_card_widget.dart';
import '/flutter_flow/permissions_util.dart';
import '/flutter_flow/request_manager.dart';

import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for funFact component.
  late FunFactModel funFactModel;
  // Models for domainCard dynamic component.
  late FlutterFlowDynamicModels<DomainCardModel> domainCardModels;
  // Model for recentCard component.
  late RecentCardModel recentCardModel1;
  // Model for recentCard component.
  late RecentCardModel recentCardModel2;
  // Model for recentCard component.
  late RecentCardModel recentCardModel3;
  // Model for UserCard component.
  late UserCardModel userCardModel;

  /// Query cache managers for this widget.

  final _domainsManager = StreamRequestManager<List<DomainsRecord>>();
  Stream<List<DomainsRecord>> domains({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<DomainsRecord>> Function() requestFn,
  }) =>
      _domainsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDomainsCache() => _domainsManager.clear();
  void clearDomainsCacheKey(String? uniqueKey) =>
      _domainsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    funFactModel = createModel(context, () => FunFactModel());
    domainCardModels = FlutterFlowDynamicModels(() => DomainCardModel());
    recentCardModel1 = createModel(context, () => RecentCardModel());
    recentCardModel2 = createModel(context, () => RecentCardModel());
    recentCardModel3 = createModel(context, () => RecentCardModel());
    userCardModel = createModel(context, () => UserCardModel());
  }

  @override
  void dispose() {
    funFactModel.dispose();
    domainCardModels.dispose();
    recentCardModel1.dispose();
    recentCardModel2.dispose();
    recentCardModel3.dispose();
    userCardModel.dispose();

    /// Dispose query cache managers for this widget.

    clearDomainsCache();
  }
}
