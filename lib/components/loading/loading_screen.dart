import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatefulWidget {
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({Key? key, required this.child, required this.isLoading})
      : super(key: key);

  @override
  _LoadingOverlayState createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (widget.isLoading)
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(dismissible: false, color: Colors.black),
          ),
        if (widget.isLoading)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
