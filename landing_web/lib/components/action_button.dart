import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class ActionButton extends StatelessComponent {
  const ActionButton({
    required this.label,
    this.onTap,
    this.href,
    this.width,
    this.height,
    super.key,
  });

  final String label;
  final VoidCallback? onTap;
  final String? href;
  final Unit? width;
  final Unit? height;

  @override
  Component build(BuildContext context) {
    // If href is provided, render an anchor tag
    if (href != null) {
      return a(
        href: href!,
        target: Target
            .blank, // Open in new tab? Or self? Usually apps replace. Let's stick to self (default) or handle explicitly.
        // Actually, for a single page app experience, we might want self. But they are on different ports (8080 vs 55557).
        // Since it's a different origin (port), it's a full reload anyway.
        // Let's use Target.self (default, so omitted) or Target.blank if user wants.
        // I will omit target to keep it simple (opens in same tab).
        classes: 'action-button',
        // Events? Anchor handles click via href.
        styles: Styles.combine([
          _buttonStyles,
          Styles(textDecoration: TextDecoration.none, display: Display.inlineBlock), // Ensure it looks like a button
          AppTextStyles.buttonText,
        ]),
        [text(label)],
      );
    }

    return button(
      classes: 'action-button',
      events: events(onClick: onTap),
      [text(label)],
      styles: Styles.combine([
        _buttonStyles,
        AppTextStyles.buttonText,
      ]),
    );
  }

  Styles get _buttonStyles => Styles(
    padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
    backgroundColor: AppColors.ctaButton,
    radius: BorderRadius.circular(8.px),
    cursor: Cursor.pointer,
    border: Border.unset,
    width: width,
    height: height,
  );

  static get styles => css('.action-button')
      .styles(
        // Base styles handled inline or here, let's keep it simple for now.
        // Text styles need to be applied to the button element
      )
      .combine(AppTextStyles.buttonText);
}
