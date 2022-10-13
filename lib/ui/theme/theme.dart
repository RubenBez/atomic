import 'package:atomic/ui/theme/app_ui.dart';
import 'package:flutter/material.dart';

/// Namespace for the Noms [ThemeData].
class AtomicTheme {
  /// Standard `ThemeData` for Noms UI.
  static ThemeData get standard {
    return ThemeData(
      colorScheme:
          ColorScheme.fromSwatch(accentColor: AtomicColors.primary),
      cardColor: AtomicColors.megaman,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: AtomicColors.whiteBackground,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      cardTheme: _cardTheme,
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      headline1: AtomicTextStyle.headline1,
      headline2: AtomicTextStyle.headline2,
      headline3: AtomicTextStyle.headline3,
      headline4: AtomicTextStyle.headline4,
      headline5: AtomicTextStyle.headline5,
      headline6: AtomicTextStyle.headline6,
      subtitle1: AtomicTextStyle.subtitle1,
      subtitle2: AtomicTextStyle.subtitle2,
      bodyText1: AtomicTextStyle.bodyText1,
      bodyText2: AtomicTextStyle.bodyText2,
      caption: AtomicTextStyle.caption,
      overline: AtomicTextStyle.overline,
      button: AtomicTextStyle.button,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(color: AtomicColors.primary);
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        primary: AtomicColors.primary,
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: AtomicColors.white, width: 2),
        primary: AtomicColors.white,
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: AtomicColors.charcoal,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: AtomicColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AtomicColors.whiteBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: AtomicColors.primary,
        ),
      ),
      labelColor: AtomicColors.primary,
      unselectedLabelColor: AtomicColors.black25,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: AtomicColors.black25,
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeData {
    return const BottomNavigationBarThemeData(
      selectedItemColor: AtomicColors.primary,
      backgroundColor: AtomicColors.green,
      selectedIconTheme: IconThemeData(size: 28),
    );
  }

  static CardTheme get _cardTheme {
    return const CardTheme(
      margin: paddingCard,
    );
  }
}
