import 'package:event_bus/event_bus.dart';
import 'package:event_bus_test/events.dart';
import 'package:event_bus_test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get_it/get_it.dart';

class CounterPresenter extends StatefulWidget {
  const CounterPresenter({super.key});

  @override
  State<CounterPresenter> createState() => _CounterPresenterState();
}

class _CounterPresenterState extends State<CounterPresenter> {
  int counter = 0;
  final eventBus = GetIt.instance<EventBus>();

  @override
  void initState() {
    super.initState();
    eventBus.on<ButtonAClicked>().listen((event) {
      counter++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$counter');
  }
}
