import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String _selectedLang = 'EN'; // default
  final List<String> _languages = ['EN', 'TH', 'KR'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // get current app theme
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      color: colorScheme.primary, // use theme primary color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 50),

          // Center logo placeholder
          //Image.asset(widget.logoAsset, height: 50),

          // Right: language dropdown
          DropdownButton<String>(
            value: _selectedLang,
            dropdownColor: colorScheme.primaryContainer, // theme secondary color
            underline: const SizedBox(),
            iconEnabledColor: colorScheme.onPrimary, // text/icons on primary
            style: TextStyle(color: colorScheme.onPrimary, fontSize: 16),
            items: _languages.map((lang) {
              return DropdownMenuItem(
                value: lang,
                child: Text(lang, style: TextStyle(color: colorScheme.onPrimary)),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedLang = value;
                });
                print('Language changed to $_selectedLang');
              }
            },
          ),
        ],
      ),
    );
  }
}
