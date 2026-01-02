import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';
import 'chapter_card.dart';

class ChaptersSection extends StatelessComponent {
  const ChaptersSection({super.key});

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
            padding: Padding.symmetric(horizontal: 40.px), // Gutter
          ),
          [
            h2(
              styles: AppTextStyles.sectionTitle,
              [text('Chapters / Groups')],
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
                ChapterCard(title: 'Seed Group', color: AppColors.seedGroup, number: '01'),
                ChapterCard(title: 'Root Group', color: AppColors.rootGroup, number: '02'),
                ChapterCard(title: 'Stem Group', color: AppColors.stemGroup, number: '03'),
                ChapterCard(title: 'Leaf Group', color: AppColors.leafGroup, number: '04'),
                ChapterCard(title: 'Flower Group', color: AppColors.flowerGroup, number: '05'),
                ChapterCard(title: 'Fruit Group', color: AppColors.fruitGroup, number: '06'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
