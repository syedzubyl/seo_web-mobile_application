import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/theme.dart';

class Navbar extends StatefulComponent {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isMenuOpen = false;

  @override
  Component build(BuildContext context) {
    return header(
      styles: Styles(
        width: 100.percent,
        height: 72.px,
        backgroundColor: AppColors.white,
        display: Display.flex,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
      [
        div(
          styles: Styles(
            maxWidth: 1440.px,
            width: 100.percent,
            padding: Padding.symmetric(horizontal: 40.px),
            display: Display.flex,
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
          ),
          [
            // Logo
            div(
              styles: Styles(
                fontSize: 24.px,
                fontWeight: FontWeight.w800,
                color: AppColors.primaryText,
                fontFamily: AppTextStyles.fontFamily,
              ),
              [text('Last Try Academy')],
            ),

            // Links for desktop
            nav(
              styles: Styles.combine([
                Styles(
                  display: Display.flex,
                  gap: Gap.all(32.px),
                  alignItems: AlignItems.center,
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(display: Display.none),
                // ),
              ]),
              [
                _buildLink('Home'),
                _buildLink('Courses'),
                _buildLink('Chapters'),
                _buildLink('About Us'),
                _buildLink('Contact Us'),
              ],
            ),

            // CTA for desktop
            a(
              href: 'http://localhost:55557',
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
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(display: Display.none),
                // ),
              ]),
              [text('Get Started')],
            ),

            // Hamburger menu for mobile
            div(
              styles: Styles.combine([
                Styles(
                  display: Display.none,
                  cursor: Cursor.pointer,
                ),
                // TODO: Re-enable media queries
                // Styles.media(
                //   Screen.mobile,
                //   Styles(display: Display.block),
                // ),
              ]),
              events: {'click': (_) => setState(() => isMenuOpen = !isMenuOpen)},
              [
                // Simple hamburger icon
                div(
                  styles: Styles(
                    width: 24.px,
                    height: 3.px,
                    backgroundColor: AppColors.primaryText,
                    margin: Margin.symmetric(vertical: 4.px),
                  ),
                  [],
                ),
                div(
                  styles: Styles(
                    width: 24.px,
                    height: 3.px,
                    backgroundColor: AppColors.primaryText,
                    margin: Margin.symmetric(vertical: 4.px),
                  ),
                  [],
                ),
                div(
                  styles: Styles(
                    width: 24.px,
                    height: 3.px,
                    backgroundColor: AppColors.primaryText,
                    margin: Margin.symmetric(vertical: 4.px),
                  ),
                  [],
                ),
              ],
            ),
          ],
        ),
        if (isMenuOpen)
          div(
            styles: Styles(
              position: Position.absolute(top: 72.px, left: 0.px),
              width: 100.percent,
              backgroundColor: AppColors.white,
              padding: Padding.all(20.px),
              display: Display.flex,
              flexDirection: FlexDirection.column,
              alignItems: AlignItems.center,
              gap: Gap.all(16.px),
            ),
            [
              _buildLink('Home'),
              _buildLink('Courses'),
              _buildLink('Chapters'),
              _buildLink('About Us'),
              _buildLink('Contact Us'),
              a(
                href: 'http://localhost:55557',
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
                [text('Get Started')],
              ),
            ],
          ),
      ],
    );
  }

  Component _buildLink(String label) {
    return a(
      href: '#', // TODO: anchor links
      styles: Styles.combine([
        AppTextStyles.navLink,
        Styles(
          textDecoration: TextDecoration(line: TextDecorationLine.none),
        ),
      ]),
      [text(label)],
    );
  }
}
