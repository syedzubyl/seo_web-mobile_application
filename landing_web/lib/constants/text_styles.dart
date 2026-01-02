import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'colors.dart';

class AppTextStyles {
  static const FontFamily fontFamily = FontFamily('Inter');

  static Styles get heroTitle => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w900,
    fontSize: Unit.pixels(80),
    color: AppColors.primaryText,
    lineHeight: Unit.em(1.1),
  );

  static Styles get sectionTitle => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: Unit.pixels(48),
    color: AppColors.primaryText,
  );

  static Styles get cardTitle => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: Unit.pixels(24),
    color: AppColors.primaryText,
  );

  static Styles get bodyRegular => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: Unit.pixels(18),
    color: AppColors.primaryText,
    lineHeight: Unit.em(1.5),
  );

  static Styles get navLink => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: Unit.pixels(16),
    color: AppColors.primaryText,
  );

  static Styles get buttonText => Styles(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: Unit.pixels(16),
    color: AppColors.white,
  );
}
