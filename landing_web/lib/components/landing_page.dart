import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';

import 'navbar.dart';
import 'hero_section.dart';
import 'mission_section.dart';
import 'offer_section.dart';
import 'chapters_section.dart';
import 'courses_section.dart';
import 'footer.dart';

class LandingPage extends StatelessComponent {
  const LandingPage({super.key});

  @override
  Component build(BuildContext context) {
    // Temporarily removed Document wrapper to fix compilation.
    // TODO: Restore global styles and head metadata (fonts) properly.
    return div(
      styles: Styles(
        width: 100.percent,
        minHeight: 100.vh,
        overflow: Overflow.hidden,
      ),
      [
        const Navbar(),
        const HeroSection(),
        const MissionSection(),
        const OfferSection(),
        const ChaptersSection(),
        const CoursesSection(),
        const Footer(),
      ],
    );
  }
}
