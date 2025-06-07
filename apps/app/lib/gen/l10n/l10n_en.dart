// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Landmarks';

  @override
  String get homeTitle => 'Landmarks';

  @override
  String get homeFavoritesOnly => 'Favorites Only';

  @override
  String about(String name) {
    return 'About $name';
  }
}
