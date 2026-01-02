import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        width: 100.percent,
        backgroundColor: AppColors.white,
        padding: Padding.only(top: 80.px, bottom: 80.px),
        display: Display.flex,
        justifyContent: JustifyContent.center,
      ),
      [
        div(
          styles: Styles.combine([
            Styles(
              maxWidth: 1440.px,
              width: 100.percent,
              padding: Padding.symmetric(horizontal: 40.px),
              display: Display.flex,
              alignItems: AlignItems.center,
              justifyContent: JustifyContent.spaceBetween,
            ),
            // TODO: Re-enable media queries
            // css.media(
            //   Screen.mobile,
            //   Styles(
            //     flexDirection: FlexDirection.column,
            //     gap: Gap.px(40),
            //   ),
            // ),
          ]),
          [
            // Left Content
            div(
              styles: Styles(
                maxWidth: 600.px,
              ),
              [
                h1(
                  styles: AppTextStyles.heroTitle,
                  [text('ONLINE SCHOOL')],
                ),
                div(styles: Styles(height: 24.px), []), // Spacer
                p(
                  styles: Styles.combine([
                    AppTextStyles.bodyRegular,
                    Styles(color: AppColors.secondaryText),
                  ]),
                  [
                    text(
                      'Unlock your potential with our comprehensive online courses. Learn from the best and achieve your dreams.',
                    ),
                  ],
                ),
                div(styles: Styles(height: 40.px), []), // Spacer
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
                  [text('Join Now')],
                ),
              ],
            ),

            // Right Image
            div(
              styles: Styles.combine([
                Styles(
                  width: 500.px,
                  height: 500.px,
                  backgroundColor: AppColors.gray, // Placeholder for image
                  radius: BorderRadius.circular(24.px),
                ),
                // TODO: Re-enable media queries
                // css.media(
                //   Screen.mobile,
                //   Styles(
                //     width: 100.percent,
                //     height: 300.px,
                //   ),
                // ),
              ]),
              [
                // TODO: Insert actual image asset here
                // img(src: 'images/hero_image.png')
              ],
            ),
          ],
        ),
      ],
    );
  }
}
