
// the state of the counter in the app.
import 'dart:collection';

import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  int _counter;
  List<int> _history;

  /// Initializes the counter to 0
  Counter()
      : _counter = 0,
        _history = [];

  /// the current counter state.
    int get counter => _counter;

    /// increases history.
    List<int> get history => UnmodifiableListView<int>(_history);

    /// increases the counter by 1.
    void increase() {
      _counter++;
      _history = List<int>.from(_history)..add(_counter);
      notifyListeners();
    }

    /// decreases the counter by 1.
    void decrease() {
      _counter--;
      notifyListeners();
    }
}