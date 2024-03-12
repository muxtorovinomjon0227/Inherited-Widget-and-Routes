import 'package:flutter/material.dart';
import '../../../../core/route/route_name.dart';
import '../../../../core/widgets/inherited_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen",
            style: Theme.of(context).appBarTheme.titleTextStyle),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return TextButton(
      child: Text("Goto page 2, data=${MyData.of(context).data}"),
      onPressed: () => Navigator.pushNamed(context, RouteName.diagram),
    );
  }
}
