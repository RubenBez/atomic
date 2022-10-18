import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ViewModel {
  @protected
  final Ref ref;

  ViewModel(this.ref);
}
