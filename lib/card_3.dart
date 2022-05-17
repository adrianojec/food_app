import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardThree extends StatelessWidget {
  const CardThree({Key? key}) : super(key: key);

  final String category = 'BAKER\'S CHOICE';
  final String title = 'The Art of Donut';
  final String description = '"Learn to make a perfect donut"';
  final String chef = 'Milo the Great';

  Widget coffeeQoute() {
    return Container(
      constraints: const BoxConstraints(maxHeight: 110),
      decoration: const BoxDecoration(
        border: Border(
            right: BorderSide(
          color: Colors.white,
          width: 2,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomText(
                text: 'and a best coffee',
                fontSize: 20,
              ),
              const CustomText(
                text: 'for the',
                fontSize: 20,
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.bebasNeue(),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'BEST',
                      style: TextStyle(fontSize: 40),
                    ),
                    TextSpan(
                      text: ' "YOU"',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget starbucksLogo() {
    return const Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/SB.png'),
      ),
    );
  }

  Widget sponsoredBy() {
    return const Positioned(
      bottom: 10,
      right: 50,
      child: CustomText(
        text: 'Sponsored by',
        fontSize: 14,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            coffeeQoute(),
            starbucksLogo(),
            sponsoredBy(),
          ],
        ),
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffee.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText({Key? key, required this.text, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
      ),
    );
  }
}
