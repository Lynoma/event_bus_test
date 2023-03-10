import 'package:event_bus_test/events.dart';
import 'package:event_bus_test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => eventBus?.fire(
        ButtonAClicked("Clicked from the CounterButton widget"),
      ),
      child: const Icon(Icons.add),
    );
  }
}
