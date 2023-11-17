import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_cloning/components/header.dart';
import 'package:gojek_cloning/datas/icons.dart';
import 'package:gojek_cloning/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: dark5,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: dark4)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            colorFilter:
                                ColorFilter.mode(dark1, BlendMode.srcIn),
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          Text('Testing SMADAY pake cloning gojek',
                              style: regular14.copyWith(color: dark3)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 / 2)),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              padding: const EdgeInsets.all(1.6),
                              decoration: BoxDecoration(
                                  color: blue4,
                                  borderRadius: BorderRadius.circular(35 / 2)),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset('assets/icons/goclub.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue3, BlendMode.srcIn)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            // GoPay
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: dark3,
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Container(
                            width: 118,
                            height: 11,
                            decoration: const BoxDecoration(
                                color: Color(0xFF9CCDDB),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 68,
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/gopay.png',
                                    height: 14,
                                  ),
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  Text('Rp12.379',
                                      style: bold16.copyWith(color: dark1)),
                                  Text('Klik & cek riwayat',
                                      style:
                                          semibold12_5.copyWith(color: green1)),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    ...gopayIcons.map((gopay) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/icons/${gopay.icon}.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue1, BlendMode.srcIn),
                                  height: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(gopay.title,
                                  style:
                                      semibold14.copyWith(color: Colors.white))
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
