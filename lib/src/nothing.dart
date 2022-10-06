import 'package:flutter/widgets.dart';

/// A [Nothing] instance, you can use in your layouts
const nothing = Nothing();

class Nothing extends Widget {
  const Nothing({super.key});

  @override
  Element createElement() => _NothingElement(this);
}

class _NothingElement extends Element {
  _NothingElement(super.widget);
  @override
  void mount(Element? parent, dynamic newSlot) {
    assert(parent is! MultiChildRenderObjectElement, """
        You are using Nothing under a MultiChildRenderObjectElement.
        """);
    super.mount(parent, newSlot);
  }

  @override
  bool get debugDoingBuild => false;

  @override
  void performRebuild() {}
}
