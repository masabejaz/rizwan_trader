import 'package:flutter/material.dart';

class CategroyCarsousel extends StatefulWidget {
  const CategroyCarsousel({super.key});

  @override
  State<CategroyCarsousel> createState() => _CategroyCarsouselState();
}

class _CategroyCarsouselState extends State<CategroyCarsousel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'b2b  charging long flex'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'back light paper'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'batteries'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'camera glass'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'c type charging cable'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'charging cable'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'charging flex'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'fingerprint (home button)'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'full body (casing)'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              width: 110,
              child: Text(
                'handsfree flex'.toUpperCase(),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


//  CarouselSlider(
//       items: [
//         Column(
//           children: const [
            
//       ],
//       options: CarouselOptions(
//         aspectRatio: 1.0,
//         reverse: true,
//         autoPlay: true,
//         disableCenter: true,
//       ),
//     )