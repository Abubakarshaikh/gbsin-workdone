import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Enter phone number",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "+92",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffe4e4e4),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "By Continue, I accept the term of the User Agreement and consent to the processing of my personal information in accordance with the term of the Privacy Policy.",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "I don’t want to recieve ads or other offers from this Worktern service.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Color(0xffe4e4e4),
                    ),
                  ),
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffC82333)),
                  ),
                  onPressed: () {},
                  child: Text("Continue with phone number"),
                ),
                SizedBox(height: 14),
                Text(
                  "Continue with your email",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
