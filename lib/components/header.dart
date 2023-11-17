import 'package:flutter/material.dart';

import '../theme.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: green1, borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Text('Beranda', style: semibold14.copyWith(color: green1)),
        ),
        ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
              fit: FlexFit.loose,
              // flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Center(
                  child: Text(title,
                      style: semibold14.copyWith(color: Colors.white)),
                ),
              ),
            ))
      ]),
    );
  }
}
