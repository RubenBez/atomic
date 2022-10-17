import 'package:logger/logger.dart';

var log = Logger(
  printer: PrefixPrinter(
    PrettyPrinter(
      colors: false,
    ),
  ),
);
