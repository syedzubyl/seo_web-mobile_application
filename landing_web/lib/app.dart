import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'components/landing_page.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(routes: [
      Route(path: '/', builder: (context, state) => LandingPage()),
    ]);
  }
}
