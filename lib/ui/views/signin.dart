import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Image.asset("assets/images/logo.png"),
                Text(
                  "Log in with Workdone ID",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username, email, or phone number",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color(0xffe4e4e4),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                InkWell(
                  child: Text(
                    "I forget my password",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed("/forget");
                  },
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffC82333)),
                  ),
                  onPressed: () {},
                  child: Text("Next"),
                ),
                InkWell(
                  child: Text(
                    "Signup",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed("/signup");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
