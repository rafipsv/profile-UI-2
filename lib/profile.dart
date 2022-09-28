import 'package:flutter/material.dart';
import 'package:profile_ui/widgets/circleimage.dart';
import 'package:profile_ui/widgets/stats.dart';
import 'package:profile_ui/widgets/topicons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU";
    var deviceSize = MediaQuery.of(context).size;
    var textMy = const Text(
      "My",
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
    var textprofile = const Text(
      "Profile",
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
    var personName = const Text(
      "John Doe",
      style: TextStyle(
          color: Color.fromARGB(255, 18, 96, 133),
          fontSize: 30,
          fontWeight: FontWeight.bold),
    );
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: deviceSize.height,
              width: deviceSize.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff000428),
                    Color(0xff004e92),
                  ],
                ),
              ),
            ),
            const TopIcons(),
            Positioned(
              top: deviceSize.height * 0.1,
              left: deviceSize.width * 0.45,
              child: textMy,
            ),
            Positioned(
              top: deviceSize.height * 0.15,
              left: deviceSize.width * 0.40,
              child: textprofile,
            ),
            Positioned(
              top: deviceSize.height * 0.28,
              right: 25,
              left: 25,
              child: Container(
                height: deviceSize.height * 0.25,
                width: deviceSize.width - 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: deviceSize.height * 0.21,
              left: deviceSize.width * 0.36,
              child: CircleImage(imageUrl: imageUrl),
            ),
            Positioned(
              top: deviceSize.height * 0.33,
              left: deviceSize.width * 0.33,
              child: Column(
                children: [
                  personName,
                ],
              ),
            ),
            Positioned(
                top: deviceSize.height * 0.38,
                left: deviceSize.width * 0.29,
                child: const Stats())
          ],
        ),
      ),
    );
  }
}
