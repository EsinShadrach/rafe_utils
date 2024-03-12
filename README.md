# rafe_utils

A collection of reusable utility widgets and functions for Flutter applications.

## Installation

Add `rafe_utils` to your `pubspec.yaml` file:

```yaml
dependencies:
    rafe_utils:
        path: path/to/rafe_utils
```

Replace `path/to/rafe_utils` with the relative path from your project's root directory to the `rafe_utils` package directory.

## Usage

Import the `rafe_utils` package in your Dart file:

```dart
import 'package:rafe_utils/rafe_utils.dart';
```

Now you can use the utility widgets and functions provided by the package.

## Widgets

### ConstructGaps

A widget that adds gaps between children widgets in a row or column.

```dart
ConstructGaps(
  gap: 16.0,
  direction: Axis.horizontal,
  children: [
    Text('Widget 1'),
    Icon(Icons.star),
    Text('Widget 2'),
    Icon(Icons.bookmark),
  ],
)
```

### ScrollOrNot

A widget that returns a `SingleChildScrollView` if `shouldScroll` is true, and the child widget if `shouldScroll` is false.

```dart
ScrollOrNot(
  shouldScroll: true,
  child: Column(
    children: [
      // ...
    ],
  ),
)
```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This package is licensed under the [MIT License](./LICENSE).
