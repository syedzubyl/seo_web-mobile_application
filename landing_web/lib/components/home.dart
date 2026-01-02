import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'counter.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Component build(BuildContext context) {
    return section([
      h1([text('Welcome')]),
      const Counter(),
    ]);
  }
}
