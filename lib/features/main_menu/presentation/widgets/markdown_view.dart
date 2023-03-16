
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/pattern.dart';

class MarkdownView extends StatefulWidget { 
  final DPattern designPattern;
  const MarkdownView({super.key,required this.designPattern});

  @override
  State<MarkdownView> createState() => _MarkdownViewState();
}

class _MarkdownViewState extends State<MarkdownView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}