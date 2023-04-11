import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              height: height * 0.45,
              width: width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo.shade400,
              ),
              child: Image.asset(
                'assets/image/splash.png',
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Discover your\nDream job Here',
              style: GoogleFonts.kurale(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 75,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('login_page');
              },
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                height: 55,
                alignment: Alignment.center,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300),
                child: Text(
                  'Continue',
                  style: GoogleFonts.balooBhai2(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
