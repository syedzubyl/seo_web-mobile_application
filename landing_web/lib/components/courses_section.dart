import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';
import 'course_card.dart';

class CoursesSection extends StatelessComponent {
  const CoursesSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        width: 100.percent,
        backgroundColor: AppColors.white,
        padding: Padding.symmetric(vertical: 100.px),
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
            h2(
              styles: AppTextStyles.sectionTitle,
              [text('COURSES')],
            ),
            div(styles: Styles(height: 60.px), []), // Spacer
            div(
              styles: Styles.combine([
                Styles(
                  display: Display.flex,
                  flexWrap: FlexWrap.wrap,
                  justifyContent: JustifyContent.center,
                  gap: Gap.all(40.px),
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(gap: Gap.all(20.px)),
                // ),
              ]),
              [
                CourseCard(
                  title: 'Scientific Thinking',
                  description: 'Master the basics of science.',
                  price: '\$49',
                ),
                CourseCard(
                  title: 'Logical Reasoning',
                  description: 'Enhance your problem solving skills.',
                  price: '\$59',
                ),
                CourseCard(
                  title: 'Creative Writing',
                  description: 'Unleash your imagination.',
                  price: '\$39',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
