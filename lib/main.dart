import 'package:event_bus/event_bus.dart';
import 'package:event_bus_test/events.dart';
import 'package:event_bus_test/widgets/counter_button.dart';
import 'package:event_bus_test/widgets/counter_presenter.dart';
import 'package:flutter/material.dart';

EventBus? eventBus;

void main() async {
  await initApp();
  runApp(const MyApp());
}

Future initApp() async {
  eventBus = EventBus();
  eventBus?.on<ButtonAClicked>().listen((event) { 
    print(event.text);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterPresenter()
          ],
        ),
      ),
      floatingActionButton: const CounterButton(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}