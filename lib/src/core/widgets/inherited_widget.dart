import 'package:flutter/cupertino.dart';

class MyData extends InheritedWidget {
  final String data;
  final Widget child;
  const MyData({super.key, required this.data, required this.child})
      : super(child: child);

  static MyData of(BuildContext context) {
    final MyData? result = context.dependOnInheritedWidgetOfExactType<MyData>();
    assert(result != null, 'No MyData found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyData old) {
    return true;
  }
}
