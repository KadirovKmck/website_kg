import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:website_kg/App/widgets/extension/translet_on_hover.dart';

extension HoverExtension on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, // this widgets we're useing the extension on
      onHover: (event) => appContainer!.style.cursor = "pointer",
      onExit: (event) => appContainer!.style.cursor = "default",
    );
  }

  Widget get moveUpOnHOver {
    return TransletOnHover(child: this);
  }
}
