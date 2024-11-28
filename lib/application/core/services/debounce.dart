import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  Timer? _debounce;
  void runDebounce(VoidCallback fuc) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 1), fuc);
  }
}
