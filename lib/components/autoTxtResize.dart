import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AuTxtResize extends StatefulWidget {
  const AuTxtResize({Key? key, required this.label, required this.style})
      : super(key: key);
  final String label;
  final TextStyle style;

  @override
  State<AuTxtResize> createState() => _AuTxtResizeState();
}

class _AuTxtResizeState extends State<AuTxtResize> {
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      widget.label,
      minFontSize: 8,
      maxLines: 1,
      stepGranularity: 1,
      overflow: TextOverflow.ellipsis,
      style: widget.style,
      textAlign: TextAlign.center,
    );
  }
}
