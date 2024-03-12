import 'package:flutter/material.dart';
import 'package:inherited/src/core/route/route_name.dart';
import '../../../../core/widgets/inherited_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen",
            style: Theme.of(context).appBarTheme.titleTextStyle),
      ),
      body: _homeBody(context),
    );
  }

  Widget _homeBody(BuildContext context) {
    return TextButton(
      child: Text("Goto page 2, data=${MyData.of(context).data}"),
      onPressed: () => Navigator.pushNamed(context, RouteName.dashboard),
    );
  }
}
