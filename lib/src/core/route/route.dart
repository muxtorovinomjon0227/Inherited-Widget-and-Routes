import 'package:flutter/material.dart';
import 'package:inherited/src/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:inherited/src/features/diagram/presentation/view/diagram_view.dart';
import 'package:inherited/src/features/home/presentation/view/home_view.dart';
import '../widgets/inherited_widget.dart';
import 'route_name.dart';

class RouteWidget extends StatelessWidget {
  const RouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyData(
      data: 'Hello Inherited',
      child: Navigator(
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case RouteName.home:
              return generatePage(const HomeView());
            case RouteName.dashboard:
              return generatePage(const DashboardView());
            case RouteName.diagram:
              return generatePage(const DiagramView());
          }
          return null;
        },
        initialRoute: RouteName.home,
      ),
    );
  }
}

MaterialPageRoute generatePage(child) {
  return MaterialPageRoute(builder: (context) => child);
}
