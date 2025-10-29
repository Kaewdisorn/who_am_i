import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  // final String logoAsset;

  const NavBar({
    super.key,
    //required this.logoAsset
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String _selectedLang = 'EN'; // default

  final List<String> _languages = ['EN', 'TH', 'KR'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      color: Colors.blueGrey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: empty to center logo
          const SizedBox(width: 50),

          // Center logo
          //Image.asset(widget.logoAsset, height: 50),

          // Right: language dropdown
          DropdownButton<String>(
            value: _selectedLang,
            dropdownColor: Colors.blueGrey[800],
            underline: const SizedBox(),
            iconEnabledColor: Colors.white,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            items: _languages.map((lang) {
              return DropdownMenuItem(
                value: lang,
                child: Text(lang, style: const TextStyle(color: Colors.white)),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedLang = value;
                });
                // TODO: handle language change
                print('Language changed to $_selectedLang');
              }
            },
          ),
        ],
      ),
    );
  }
}
