import 'package:atomic/domain/service/preferences/preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final preferencesProvider =
    Provider.autoDispose<Preferences>((ref) => PreferencesImpl());
