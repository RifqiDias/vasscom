import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/login.png',
                    ),
                    fit: BoxFit.contain),
              ),
              height: MediaQuery.of(context).size.width - 60,
            ),
            _content("Email", "   Masukkan email anda", false, email),
            _content("Password", "   Masukkan password anda", true, password),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainPage())),
                      child: Image.asset("images/login_btn.png"))),
            ),
            Center(
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  maxLines: 1,
                  text: TextSpan(
                    text: 'Belum punya akun ? ',
                    style: TextStyle(fontSize: 12.w, color: Colors.grey),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Daftar Sekarang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff002060)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // silk.png
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: SizedBox(child: Image.asset("images/silk.png")),
              ),
            ),
            SizedBox(
              height: 40.h,
            )
          ],
        ),
      ),
    );
  }

  Widget _content(String? name, hintText, bool? ispassword,
      TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ispassword!
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name!,
                        style: const TextStyle(
                            color: Color(0xff002060),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Lupa Password anda ?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff597393),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                : Text(
                    name!,
                    style: const TextStyle(
                        color: Color(0xff002060), fontWeight: FontWeight.bold),
                  ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              controller: controller,
              obscureText: ispassword ? _obscureText : false,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: ispassword
                    ? InkWell(
                        onTap: () => ispassword ? _toggle() : true,
                        child: const Icon(
                          Icons.remove_red_eye_sharp,
                          size: 20,
                        ),
                      )
                    : const SizedBox(),
                hintStyle: const TextStyle(fontSize: 14),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
