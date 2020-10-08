import 'package:flutter/material.dart';
import 'package:indexed_stack_sample/bottom_nav_bar_item_data.dart';
import 'package:indexed_stack_sample/counter_page.dart';
import 'package:indexed_stack_sample/sample_text_input.dart';

class Home extends StatefulWidget {
  int selectedIdx = 0;

  final List<BottomNavBarItemData> screens = [
    BottomNavBarItemData(
      "First Page",
      Icon(Icons.cake),
      CounterPage(
        "First Page",
      ),
    ),
    BottomNavBarItemData(
      "Seond Page",
      Icon(Icons.calendar_today),
      SampleTextInput(title: "Seond Page"),
    ),
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.selectedIdx,
        onTap: (idx) => setState(() {
          widget.selectedIdx = idx;
        }),
        items: widget.screens
            .map(
              (e) => BottomNavigationBarItem(
                label: e.label,
                icon: e.icon,
              ),
            )
            .toList(),
      ),
      body: IndexedStack(
        index: widget.selectedIdx,
        children: [
          ...widget.screens.map((e) => e.screen).toList(),
        ],
      ),
    );
  }
}
