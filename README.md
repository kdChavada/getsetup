# getsetup

A new Flutter project.

## Getting Started
/*--- SIZE ANY  WIDGET --*/
GlobalKey key = GlobalKey();
 YourWidget(
  key: key,
  // other widget properties
)
 onPressed: () {
            // Access the RenderBox and get the size
            RenderBox renderBox = key.currentContext.findRenderObject() as RenderBox;
            Size size = renderBox.size;
            print("Widget size: $size");
          },

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
