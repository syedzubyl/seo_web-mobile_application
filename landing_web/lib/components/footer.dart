import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      styles: Styles(
        width: 100.percent,
        backgroundColor: AppColors.footerBackground,
        padding: Padding.symmetric(vertical: 60.px),
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
              justifyContent: JustifyContent.spaceBetween,
              alignItems: AlignItems.start,
            ),
            // TODO: Re-enable media queries
            // Styles.media(
            //   Screen.mobile,
            //   Styles(
            //     flexDirection: FlexDirection.column,
            //     alignItems: AlignItems.center,
            //     gap: Gap.all(40.px),
            //   ),
            // ),
          ]),
          [
            // Brand & Address
            div(
              styles: Styles.combine([
                Styles(),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(
                //     textAlign: TextAlign.center,
                //   ),
                // ),
              ]),
              [
                h3(
                  styles: Styles(fontSize: 24.px, fontWeight: FontWeight.bold),
                  [text('Last Try Academy')],
                ),
                div(styles: Styles(height: 60.px), []), // Spacer
                p(
                  styles: Styles(color: AppColors.secondaryText),
                  [
                    text('CEO Details: Dhanush M'),
                    br(),
                    text('Address: 123 Learning Lane, India'),
                  ],
                ),
              ],
            ),

            // Socials & Download
            div(
              styles: Styles.combine([
                Styles(
                  display: Display.flex,
                  flexDirection: FlexDirection.column,
                  alignItems: AlignItems.end,
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(
                //     alignItems: AlignItems.center,
                //   ),
                // ),
              ]),
              [
                p(styles: Styles(fontWeight: FontWeight.bold), [text('Follow Us')]),
                div(styles: Styles(height: 12.px), []),
                div(
                  styles: Styles(display: Display.flex, gap: Gap.all(16.px)),
                  [
                    text('FB'), // Placeholders for icons
                    text('Li'),
                    text('In'),
                    text('Wa'),
                  ],
                ),
                div(styles: Styles(height: 24.px), []),
                p(styles: Styles(fontWeight: FontWeight.bold), [text('Get the learning app')]),
                div(styles: Styles(height: 12.px), []),
                div(
                  styles: Styles(display: Display.flex, gap: Gap.all(16.px)),
                  [
                    // Placeholders for store badges
                    div(
                      styles: Styles(width: 120.px, height: 40.px, backgroundColor: Color('#000000')),
                      [],
                    ),
                    div(
                      styles: Styles(width: 120.px, height: 40.px, backgroundColor: Color('#000000')),
                      [],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
