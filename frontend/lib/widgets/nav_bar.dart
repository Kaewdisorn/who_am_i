import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedLang = 0;
  final List<String> _flags = ['🇺🇸', '🇰🇷'];
  final List<String> _langs = ['EN', 'KR'];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width;

    double logoFontSize = (width * 0.045).clamp(24.0, 36.0);
    double toggleWidth = (width * 0.04).clamp(36.0, 50.0);
    double toggleHeight = (width * 0.035).clamp(32.0, 44.0);

    final isMobile = width < 600;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: isMobile ? 12 : 16),
      color: colorScheme.primary,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Who am I — by Nane',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: logoFontSize,
                fontWeight: FontWeight.bold,
                color: colorScheme.primaryFixedDim,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(offset: Offset(2, 2), blurRadius: 4, color: Colors.black26),
                  Shadow(offset: Offset(-1, -1), blurRadius: 2, color: Colors.black12),
                ],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const SizedBox(width: 8),

          ToggleSwitch(
            minWidth: toggleWidth,
            minHeight: toggleHeight,
            cornerRadius: 20,
            activeBgColor: [colorScheme.primary.withValues(alpha: 0.25)],
            activeFgColor: colorScheme.onPrimaryContainer,
            inactiveBgColor: colorScheme.primaryFixedDim,
            inactiveFgColor: colorScheme.primary,
            initialLabelIndex: _selectedLang,
            totalSwitches: _flags.length,
            labels: _flags,
            radiusStyle: true,
            onToggle: (index) {
              if (index != null) {
                setState(() => _selectedLang = index);
                debugPrint('Language changed to ${_langs[index]}');
              }
            },
          ),
        ],
      ),
    );
  }
}
