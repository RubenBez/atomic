import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectionStreamStateProvider = StreamProvider.autoDispose<ConnectivityResult>((ref) => Connectivity().onConnectivityChanged );
final connectionFutureStateProvider = FutureProvider.autoDispose<ConnectivityResult>((ref) => Connectivity().checkConnectivity() );

