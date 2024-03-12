import 'package:flutter/cupertino.dart';

/// A widget that returns a [SingleChildScrollView] if [shouldScroll] is true
/// and the [child] widget if [shouldScroll] is false.
class ScrollOrNot extends StatelessWidget {
  const ScrollOrNot({
    super.key,
    required this.shouldScroll,
    required this.child,
  });

  final bool shouldScroll;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (shouldScroll) {
      return SingleChildScrollView(
        child: child,
      );
    } else {
      return child;
    }
  }
}
