import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class OfferSection extends StatelessComponent {
  const OfferSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles.combine([
        Styles(
          width: 100.percent,
          backgroundColor: AppColors.offerBackground,
          padding: Padding.symmetric(vertical: 100.px),
          display: Display.flex,
          justifyContent: JustifyContent.center,
        ),
        // TODO: Re-enable media queries
        // Styles.media(
        //   Screen.mobile,
        //   Styles(padding: Padding.symmetric(vertical: 40.px)),
        // ),
      ]),
      [
        div(
          styles: Styles(
            maxWidth: 1440.px,
            width: 100.percent,
            padding: Padding.symmetric(horizontal: 40.px),
          ),
          [
            h2(
              styles: AppTextStyles.sectionTitle,
              [text('What We Offer')],
            ),
            div(styles: Styles(height: 60.px), []), // Spacer
            div(
              styles: Styles.combine([
                Styles(
                  display: Display.flex,
                  justifyContent: JustifyContent.spaceBetween,
                  gap: Gap.all(40.px),
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(
                //     flexDirection: FlexDirection.column,
                //     gap: Gap.all(20.px),
                //   ),
                // ),
              ]),
              [
                _buildOfferCard('For School Students'),
                _buildOfferCard('For Career-Oriented Students'),
                _buildOfferCard('For Parents'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildOfferCard(String title) {
    return div(
      styles: Styles(
        flex: Flex.grow(1),
        padding: Padding.all(32.px),
        backgroundColor: AppColors.white,
        radius: BorderRadius.circular(16.px),
      ),
      [
        h3(
          styles: AppTextStyles.cardTitle,
          [text(title)],
        ),
        // Placeholder list content
        ul([
          li([text('Feature point 1')]),
          li([text('Feature point 2')]),
        ]),
      ],
    );
  }
}
