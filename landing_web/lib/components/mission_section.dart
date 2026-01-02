import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class MissionSection extends StatelessComponent {
  const MissionSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        width: 100.percent,
        backgroundColor: AppColors.white,
        padding: Padding.symmetric(vertical: 80.px),
        display: Display.flex,
        justifyContent: JustifyContent.center,
      ),
      [
        div(
          styles: Styles(
            maxWidth: 1440.px,
            width: 100.percent,
            padding: Padding.symmetric(horizontal: 40.px),
          ),
          [
            p(
              styles: Styles.combine([
                AppTextStyles.sectionTitle,
                Styles(
                  fontWeight: FontWeight.w500,
                  fontSize: 32.px,
                  lineHeight: 1.5.em,
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(fontSize: 24.px),
                // ),
              ]),
              [text("India's first that aims to... committed to Success!")],
            ),
          ],
        ),
      ],
    );
  }
}
