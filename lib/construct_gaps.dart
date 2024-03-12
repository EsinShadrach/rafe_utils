import 'package:flutter/material.dart';

/// A widget that adds gaps between children widgets in a row or column.
///
/// The [ConstructGaps] widget takes a list of children widgets and adds a gap
/// (specified by the [gap] parameter) between each child widget. The [direction]
/// parameter determines whether the gaps should be added horizontally or vertically.
///
/// The [crossAxisAlignment], [mainAxisAlignment], and [mainAxisSize] properties allow
/// you to customize the alignment and size of the parent container.
///
/// Example usage:
///
/// ```dart
/// ConstructGaps(
///   gap: 16.0,
///   direction: Axis.horizontal,
///   children: [
///     Text('Widget 1'),
///     Icon(Icons.star),
///     Text('Widget 2'),
///     Icon(Icons.bookmark),
///   ],
/// )
/// ```
///
class ConstructGaps extends StatelessWidget {
  const ConstructGaps({
    super.key,
    this.gap = 10,
    this.direction = Axis.horizontal,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
  });

  final double gap;
  final Axis direction;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;

  Widget _buildHorizontalGaps(List<Widget> safeChildren) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: List.generate(
        safeChildren.length * 2 - 1,
        (index) {
          if (index.isEven) {
            return safeChildren[index ~/ 2];
          } else {
            return SizedBox(height: gap);
          }
        },
      ),
    );
  }

  Widget _buildVerticalGaps(List<Widget> safeChildren) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: List.generate(
        safeChildren.length * 2 - 1,
        (index) {
          if (index.isEven) {
            return safeChildren[index ~/ 2];
          } else {
            return SizedBox(width: gap);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final safeChildren = children.whereType<Widget>().toList();

    return direction == Axis.horizontal
        ? _buildHorizontalGaps(safeChildren)
        : _buildVerticalGaps(safeChildren);
  }
}
