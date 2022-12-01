import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {


  @override
  State<RegisterPage> createState() => RegisternPageState();
}

class RegisternPageState extends State<RegisterPage> {
  TextEditingController namadepan = TextEditingController();
  TextEditingController namabelakang = TextEditingController();
  TextEditingController noKTP = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController notelpon = TextEditingController();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.h),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/login.png',
                    ),
                    fit: BoxFit.contain),
              ),
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width - 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: _content("Nama Depan", "   Jhon", false, namadepan)),
                Flexible(
                    child: _content(
                        "Nama Belakang", "   Doe", false, namabelakang))
              ],
            ),
            _content("No. KTP", "Masukkan no KTP anda", false, noKTP),
            _content("Email", "   Masukkan email anda", false, email),
            _content(
                "No. Telp", "   Masukkan no telepon anda", false, notelpon),
            _content("Password", "   Masukkan no telepon anda", true, password),
            _content("Konfirmasi Password", "   Masukkan no telepon anda", true,
                password),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(child: Image.asset("images/register_btn.png")),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()));
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  maxLines: 1,
                  text: TextSpan(
                    text: 'Sudah punya akun ? ',
                    style: TextStyle(fontSize: 12.w, color: Colors.grey),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Login Sekarang',
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
