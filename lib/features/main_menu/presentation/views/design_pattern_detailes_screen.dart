import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/pattern.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theme/app_theme.dart';
import '../widgets/example_view.dart';
import '../widgets/markdown_view.dart';

class DesignPatternDetailsScreen extends StatefulWidget {
  final DPattern pattern;
  const DesignPatternDetailsScreen({super.key, required this.pattern});

  @override
  State<DesignPatternDetailsScreen> createState() =>
      _DesignPatternDetailsScreenState();
}

class _DesignPatternDetailsScreenState extends State<DesignPatternDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  _onBottomNavigationBarItemTap(int currentIndex){
    setState(() {
      _controller.index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: lightBackgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        title: Text(
          widget.pattern.title!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controller.index,
        backgroundColor: lightBackgroundColor,
        selectedIconTheme: const IconThemeData(size: 20.0),
        selectedItemColor: Colors.black,
        unselectedIconTheme: const IconThemeData(size: 20.0),
        unselectedItemColor: Colors.black45,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Description',
            icon: Icon(FontAwesomeIcons.fileLines),
          ),
          BottomNavigationBarItem(
            label: 'Example',
            icon: Icon(FontAwesomeIcons.lightbulb),
          ),
        ],
        onTap: _onBottomNavigationBarItemTap,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
           MarkdownView(designPattern: widget.pattern),
           ExampleView(designPatternId: widget.pattern.id!),
        ],
      ),
    );
  }
}
