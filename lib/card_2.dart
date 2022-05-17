import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({Key? key}) : super(key: key);

  final String strawberry = 'Strawberry?';
  final String melon = 'Melon?';

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/myImage.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'jaa0111',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              '22h',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }

  Widget question() {
    return Positioned(
      top: 70,
      left: 50,
      child: Text(
        'WHICH ONE?',
        style: GoogleFonts.oswald(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget poll() {
    return Positioned(
      bottom: 100,
      left: 50,
      child: Container(
        transform: Matrix4.rotationZ(0.08),
        constraints: const BoxConstraints(
          maxHeight: 50,
          maxWidth: 200,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            //for strawberry
            pollItem(
              width: 20,
              imageUrl: 'assets/images/strawberry.png',
              text: 'STRAWBERRY',
              textColor: Colors.deepOrange,
            ),
            //for melon
            pollItem(
              width: 30,
              imageUrl: 'assets/images/melon.png',
              text: 'MELON',
              textColor: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget pollItem({
    required double width,
    required String imageUrl,
    required String text,
    required Color textColor,
  }) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: width,
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
            ),
            Text(
              text,
              style: GoogleFonts.oswald(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hashtag() {
    return Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 50,
          maxWidth: 90,
        ),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Text(
              '#SMOOTHIE',
              style: GoogleFonts.poppins(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 270,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 13,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              child: const Text('Send message'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            CupertinoIcons.heart,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            CupertinoIcons.paperplane,
            size: 30,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints.expand(
                width: 350,
                height: 450,
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/smoothie.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  header(),
                  question(),
                  poll(),
                  hashtag(),
                ],
              ),
            ),
            footer(),
          ],
        ),
      ),
    );
  }
}
