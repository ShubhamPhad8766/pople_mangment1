import 'package:go_router/go_router.dart';
import 'package:my_app/screens/bottom_navigaton_custom/bottom_navigation_custom.dart';
import 'package:my_app/screens/conformation/conformation_screen.dart';
import 'package:my_app/screens/event_screen/event_screen.dart';
import 'package:my_app/screens/org_screen/org_screen.dart';
import 'package:my_app/screens/start_screen/start_screen.dart';

class Routes {
  static const String initalRoute = '/home';
  static const String orgscreen = '/org-screen';
  static const String phonescreen = '/phone-screen';
  static const String conformationscreen = '/conformation-screen';
  static const String bottomNavigationscreen = '/bottomNavigation-screen';

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: initalRoute,
    routes: [
      GoRoute(
        path: initalRoute,
        builder: (context, state) => const StartScreen(),
      ),
      GoRoute(
        path: orgscreen,
        builder: (context, state) => const OrgScreen(),
      ),
      GoRoute(
        path: phonescreen,
        builder: (context, state) => const PhoneScreen(),
      ),
      GoRoute(
        path: conformationscreen,
        builder: (context, state) => const ConformationSceen(),
      ),
      GoRoute(
        path: bottomNavigationscreen,
        builder: (context, state) => const BottomNavigationScreen(),
      ),
    ],
  );
}
