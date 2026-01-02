import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class CourseCard extends StatelessComponent {
  const CourseCard({
    required this.title,
    required this.description,
    required this.price,
    super.key,
  });

  final String title;
  final String description;
  final String price;

  Component build(BuildContext context) {
    return div(
      styles: Styles.combine([
        Styles(
          padding: Padding.all(24.px),
          radius: BorderRadius.circular(16.px),
          border: Border.all(color: AppColors.gray.withOpacity(0.2)),
          backgroundColor: AppColors.white,
          display: Display.flex,
          flexDirection: FlexDirection.column,
          justifyContent: JustifyContent.spaceBetween,
          flex: Flex(grow: 1, shrink: 0, basis: 300.px),
        ),
        // css.media(
        //   Screen.mobile,
        //   Styles(
        //     flex: Flex(
        //       grow: 1,
        //       shrink: 0,
        //       // basis: FlexBasis.auto, // Default is auto
        //     ), // Changed to auto or 100% via unit if needed, assuming FlexBasis.pc(100) meant percent
        //   ),
        // ),
      ]),
      [
        div([
          h3(
            styles: Styles.combine([
              AppTextStyles.cardTitle,
              Styles(fontSize: 20.px),
            ]),
            [text(title)],
          ),
          div(styles: Styles(height: 12.px), []),
          p(
            styles: Styles.combine([
              AppTextStyles.bodyRegular,
              Styles(
                fontSize: 16.px,
                color: AppColors.secondaryText,
              ),
            ]),
            [text(description)],
          ),
        ]),
        div(styles: Styles(height: 24.px), []),
        div(
          styles: Styles(
            display: Display.flex,
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
          ),
          [
            span(
              styles: Styles(
                fontWeight: FontWeight.w700,
                fontSize: 18.px,
                color: AppColors.primaryText,
              ),
              [text(price)],
            ),
            a(
              href: '#',
              styles: Styles.combine([
                AppTextStyles.buttonText,
                Styles(
                  padding: Padding.symmetric(
                    vertical: 12.px,
                    horizontal: 24.px,
                  ),
                  backgroundColor: AppColors.primary,
                  color: AppColors.white,
                  border: Border.none,
                  radius: BorderRadius.circular(8.px),
                  cursor: Cursor.pointer,
                ),
              ]),
              [text('Enroll')],
            ),
          ],
        ),
      ],
    );
  }
}
