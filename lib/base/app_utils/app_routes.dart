import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

class AppRoutes {
  // Route names
  static const String home = "/";
  static const String allTickets = "/all_tickets";

  //  static const String profile = '/profile';
  //  static const String settings = '/settings';

  // Route mappings
  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const BottomNavBar(),
      allTickets: (context) => const AllTickets(),
      // settings: (context) => const SettingsScreen(),
    };
  }

  // Optional: Handle advanced routing (e.g., arguments)
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // Add logic for dynamic routes or arguments here
    return null;
  }
}
