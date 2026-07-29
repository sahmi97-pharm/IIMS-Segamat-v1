import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
        ),
        FFRoute(
          name: WadDashboardMainWidget.routeName,
          path: WadDashboardMainWidget.routePath,
          builder: (context, params) => WadDashboardMainWidget(),
        ),
        FFRoute(
          name: DetailVisualBoardWidget.routeName,
          path: DetailVisualBoardWidget.routePath,
          builder: (context, params) => DetailVisualBoardWidget(
            locationref: params.getParam(
              'locationref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['locations'],
            ),
          ),
        ),
        FFRoute(
          name: WadUpdateWidget.routeName,
          path: WadUpdateWidget.routePath,
          requireAuth: true,
          builder: (context, params) => WadUpdateWidget(),
        ),
        FFRoute(
          name: TrolleyRegisterWidget.routeName,
          path: TrolleyRegisterWidget.routePath,
          builder: (context, params) => TrolleyRegisterWidget(),
        ),
        FFRoute(
            name: MyPassOverDashboradWidget.routeName,
            path: MyPassOverDashboradWidget.routePath,
            requireAuth: true,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'MyPassOverDashborad')
                : NavBarPage(
                    initialPage: 'MyPassOverDashborad',
                    page: MyPassOverDashboradWidget(),
                  )),
        FFRoute(
          name: MyPassOverPageWidget.routeName,
          path: MyPassOverPageWidget.routePath,
          builder: (context, params) => MyPassOverPageWidget(
            memoReference: params.getParam(
              'memoReference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['memos'],
            ),
          ),
        ),
        FFRoute(
            name: FarmasiDashboardWidget.routeName,
            path: FarmasiDashboardWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'FarmasiDashboard')
                : NavBarPage(
                    initialPage: 'FarmasiDashboard',
                    page: FarmasiDashboardWidget(),
                  )),
        FFRoute(
          name: MyPassoverFormWidget.routeName,
          path: MyPassoverFormWidget.routePath,
          asyncParams: {
            'memoReference': getDoc(['memos'], MemosRecord.fromSnapshot),
          },
          builder: (context, params) => MyPassoverFormWidget(
            memoReference: params.getParam(
              'memoReference',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: StatisticPageWidget.routeName,
          path: StatisticPageWidget.routePath,
          builder: (context, params) => StatisticPageWidget(),
        ),
        FFRoute(
          name: FormulariPageWidget.routeName,
          path: FormulariPageWidget.routePath,
          builder: (context, params) => FormulariPageWidget(),
        ),
        FFRoute(
          name: MemoListWidget.routeName,
          path: MemoListWidget.routePath,
          builder: (context, params) => MemoListWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: AuthRedirectWidget.routeName,
          path: AuthRedirectWidget.routePath,
          builder: (context, params) => AuthRedirectWidget(),
        ),
        FFRoute(
          name: BorangListWidget.routeName,
          path: BorangListWidget.routePath,
          builder: (context, params) => BorangListWidget(),
        ),
        FFRoute(
          name: GarisPanduanListWidget.routeName,
          path: GarisPanduanListWidget.routePath,
          builder: (context, params) => GarisPanduanListWidget(),
        ),
        FFRoute(
          name: MyPassOverSettingPageWidget.routeName,
          path: MyPassOverSettingPageWidget.routePath,
          builder: (context, params) => MyPassOverSettingPageWidget(),
        ),
        FFRoute(
          name: MyPergerakkanWidget.routeName,
          path: MyPergerakkanWidget.routePath,
          builder: (context, params) => MyPergerakkanWidget(),
        ),
        FFRoute(
          name: MyCutiApproveWidget.routeName,
          path: MyCutiApproveWidget.routePath,
          builder: (context, params) => MyCutiApproveWidget(),
        ),
        FFRoute(
          name: MyCutiApplyWidget.routeName,
          path: MyCutiApplyWidget.routePath,
          builder: (context, params) => MyCutiApplyWidget(),
        ),
        FFRoute(
          name: MyPergerakkanListWidget.routeName,
          path: MyPergerakkanListWidget.routePath,
          builder: (context, params) => MyPergerakkanListWidget(),
        ),
        FFRoute(
          name: MyCutiPostApproveWidget.routeName,
          path: MyCutiPostApproveWidget.routePath,
          builder: (context, params) => MyCutiPostApproveWidget(),
        ),
        FFRoute(
          name: TestMyPergerakkanWidget.routeName,
          path: TestMyPergerakkanWidget.routePath,
          builder: (context, params) => TestMyPergerakkanWidget(),
        ),
        FFRoute(
          name: MyPassoverFormUpdateWidget.routeName,
          path: MyPassoverFormUpdateWidget.routePath,
          asyncParams: {
            'memoReference': getDoc(['memos'], MemosRecord.fromSnapshot),
          },
          builder: (context, params) => MyPassoverFormUpdateWidget(
            memoReference: params.getParam(
              'memoReference',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
            name: WadDashboardMainUpdatedWidget.routeName,
            path: WadDashboardMainUpdatedWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'WadDashboardMainUpdated')
                : NavBarPage(
                    initialPage: 'WadDashboardMainUpdated',
                    page: WadDashboardMainUpdatedWidget(),
                  )),
        FFRoute(
          name: NotifikasiSettingWidget.routeName,
          path: NotifikasiSettingWidget.routePath,
          builder: (context, params) => NotifikasiSettingWidget(),
        ),
        FFRoute(
          name: DetailVisualBoardUpdatedWidget.routeName,
          path: DetailVisualBoardUpdatedWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DetailVisualBoardUpdatedWidget(
            locationref: params.getParam(
              'locationref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['locations'],
            ),
          ),
        ),
        FFRoute(
          name: PassmanagerWidget.routeName,
          path: PassmanagerWidget.routePath,
          builder: (context, params) => PassmanagerWidget(),
        ),
        FFRoute(
          name: MyPassOverDashboardUpdatedWidget.routeName,
          path: MyPassOverDashboardUpdatedWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MyPassOverDashboardUpdatedWidget(),
        ),
        FFRoute(
            name: WadUpdateUpdatedWidget.routeName,
            path: WadUpdateUpdatedWidget.routePath,
            requireAuth: true,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'WadUpdateUpdated')
                : NavBarPage(
                    initialPage: 'WadUpdateUpdated',
                    page: WadUpdateUpdatedWidget(),
                  )),
        FFRoute(
          name: FmcTestpageWidget.routeName,
          path: FmcTestpageWidget.routePath,
          builder: (context, params) => FmcTestpageWidget(),
        ),
        FFRoute(
          name: NotificationSenderWidget.routeName,
          path: NotificationSenderWidget.routePath,
          builder: (context, params) => NotificationSenderWidget(),
        ),
        FFRoute(
          name: WardNotifcationSelectWidget.routeName,
          path: WardNotifcationSelectWidget.routePath,
          builder: (context, params) => WardNotifcationSelectWidget(),
        ),
        FFRoute(
          name: WadDashboardNewWidget.routeName,
          path: WadDashboardNewWidget.routePath,
          builder: (context, params) => WadDashboardNewWidget(),
        ),
        FFRoute(
          name: WadUpdateNewWidget.routeName,
          path: WadUpdateNewWidget.routePath,
          requireAuth: true,
          builder: (context, params) => WadUpdateNewWidget(),
        ),
        FFRoute(
          name: LocationSettingWidget.routeName,
          path: LocationSettingWidget.routePath,
          builder: (context, params) => LocationSettingWidget(),
        ),
        FFRoute(
          name: WadListNewWidget.routeName,
          path: WadListNewWidget.routePath,
          builder: (context, params) => WadListNewWidget(),
        ),
        FFRoute(
          name: SettingWidget.routeName,
          path: SettingWidget.routePath,
          builder: (context, params) => SettingWidget(),
        ),
        FFRoute(
          name: WardDetailsNewWidget.routeName,
          path: WardDetailsNewWidget.routePath,
          requireAuth: true,
          builder: (context, params) => WardDetailsNewWidget(
            locationref: params.getParam(
              'locationref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['locations_new'],
            ),
          ),
        ),
        FFRoute(
          name: MyIPDRujukanWidget.routeName,
          path: MyIPDRujukanWidget.routePath,
          builder: (context, params) => MyIPDRujukanWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
