import 'package:event_bus/event_bus.dart';
import 'package:event_bus_test/events.dart';
import 'package:event_bus_test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get_it/get_it.dart';

class CounterButton extends StatelessWidget {
  CounterButton({super.key});

  final eventBus = GetIt.instance<EventBus>();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => eventBus.fire(
        ButtonAClicked("Clicked from the CounterButton widget"),
      ),
      child: const Icon(Icons.add),
    );
  }
}
