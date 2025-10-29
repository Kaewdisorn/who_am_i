import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedLang = 0; // 0: EN, 1: TH, 2: KR
  final List<String> _flags = ['🇺🇸', '🇰🇷'];
  final List<String> _langs = ['EN', 'KR'];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: isMobile ? 12 : 16),
      color: colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left (empty)
          const SizedBox(width: 50),

          // Center logo placeholder
          Text(
            '🌐',
            style: TextStyle(fontSize: isMobile ? 28 : 36, color: colorScheme.primary),
          ),

          // Right: Flag toggle
          ToggleSwitch(
            minWidth: isMobile ? 40 : 50,
            minHeight: isMobile ? 36 : 40,
            cornerRadius: 20,
            activeBgColor: [colorScheme.primary.withValues(alpha: 0.25)],
            activeFgColor: colorScheme.onPrimaryContainer,
            inactiveBgColor: colorScheme.primaryFixedDim,
            inactiveFgColor: colorScheme.primary,
            initialLabelIndex: _selectedLang,
            totalSwitches: 2,
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
