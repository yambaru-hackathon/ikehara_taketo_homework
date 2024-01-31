import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Timer'),
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
  int _minute = 0;
  int _second = 0;
  int _milisecond = 0;
  Timer? _timer;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
  }

  String _formatNumber(int number) {
    return NumberFormat('00').format(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_formatNumber(_minute)}:${_formatNumber(_second)}.${_formatNumber(_milisecond)}',
              style: const TextStyle(fontSize: 100),
            ),
            ElevatedButton(
              onPressed: () {
                toggleTimer();
              },
              child: Text(
                _isRunning ? 'ストップ' : 'スタート',
                style: TextStyle(
                  color: _isRunning ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                resetTimer();
              },
              child: const Text(
                'リセット',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleTimer() {
    if (_isRunning) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(
        const Duration(milliseconds: 10),
        (timer) {
          setState(() {
            _milisecond++;
            if (_milisecond >= 100) {
              _milisecond = 0;
              _second++;
            }
            if (_second >= 60) {
              _second = 0;
              _minute++;
            }
          });
          if (_minute == 60) {
            resetTimer();

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextPage()),
            );
          }
        },
      );
    }

    setState(() {
      _isRunning = !_isRunning;
    });
  }

  void resetTimer() {
    _timer?.cancel();
    setState(() {
      _second = 0;
      _milisecond = 0;
      _minute = 0;
      _isRunning = false;
    });
  }
}
