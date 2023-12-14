import 'package:flutter/material.dart';

class TransletOnHover extends StatefulWidget {
  final Widget child;
  const TransletOnHover({Key? key, required this.child}) : super(key: key);

  @override
  _TransletOnHoverState createState() => _TransletOnHoverState();
}

class _TransletOnHoverState extends State<TransletOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          child: widget.child,
          transform: _hovering ? hoverTransform : nonHoverTransform,
        ),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
