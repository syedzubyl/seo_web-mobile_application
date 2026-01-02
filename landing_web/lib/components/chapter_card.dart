import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class ChapterCard extends StatelessComponent {
  const ChapterCard({
    required this.title,
    required this.color,
    required this.number, // e.g. "01"
    super.key,
  });

  final String title;
  final Color color;
  final String number;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles.combine([
        Styles(
          height: 250.px, // Fixed height for grid uniformity
          backgroundColor: color,
          radius: BorderRadius.circular(24.px),
          padding: Padding.all(32.px),
          display: Display.flex,
          flexDirection: FlexDirection.column,
          justifyContent: JustifyContent.spaceBetween,
          cursor: Cursor.pointer,
          flex: Flex(grow: 1, shrink: 0, basis: 300.px),
        ),
        // TODO: Re-enable media queries
        // Styles.media(
        //   Screen.mobile,
        //   Styles(
        //     flex: Flex(grow: 1, shrink: 0, basis: FlexBasis.pc(100)),
        //   ),
        // ),
      ]),
      [
        span(
          styles: Styles(
            fontSize: 60.px,
            fontWeight: FontWeight.w900,
            color: AppColors.white.withOpacity(0.3),
            fontFamily: AppTextStyles.fontFamily,
          ),
          [text(number)],
        ),
        h3(
          styles: Styles.combine([
            AppTextStyles.cardTitle,
            Styles(
              fontWeight: FontWeight.w700,
              fontSize: 28.px,
              color: AppColors.white,
            ),
          ]),
          [text(title)],
        ),
      ],
    );
  }
}
