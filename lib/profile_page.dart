import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/login_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profileToggle = <ItemChoice>[
    ItemChoice(1, 'Profile Saya'),
    ItemChoice(2, 'Pengaturan'),
  ];
  var idSelected = 0;
  var tkSelected = 1;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController namadepan = TextEditingController();
  TextEditingController namabelakang = TextEditingController();
  TextEditingController noKTP = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController notelpon = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF5F8FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.shopping_cart,
              color: const Color(0xff002060),
              size: 30.sp,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Icon(
            Icons.notifications,
            color: const Color(0xff002060),
            size: 30.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            child: Icon(
              Icons.menu_sharp,
              color: const Color(0xff002060),
              size: 30.sp,
            ),
          ),
        ),
      ),
      drawerScrimColor: Color(0xFF002060).withOpacity(0.8),
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Drawer(
            backgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height,
                    padding:
                        EdgeInsets.only(top: 80.w, left: 32.w, right: 32.w),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 40.w,
                                height: 40.w,
                                child: Image.asset("images/img_avatar.png")),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Angga Praja",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff002060)),
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Text(
                                  "Membership BBLK",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(0.8)),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.w,
                        ),
                        Row(
                          children: [
                            Text(
                              "Profil Saya",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 22.w,
                        ),
                        Row(
                          children: [
                            Text(
                              "Pengaturan",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                            SizedBox(
                              width: 46.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.w,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              )),
                          child: Row(
                            children: [
                              Container(
                                width: 131.w,
                                height: 28.w,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(28.w)),
                                child: Center(
                                  child: Text("Logout",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ikuti kami di",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff002060)),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(
                                width: 12.w,
                                height: 12.w,
                                child: Image.asset("images/ic_fb.png")),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(
                                width: 12.w,
                                height: 12.w,
                                child: Image.asset("images/ic_ig.png")),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(
                                width: 12.w,
                                height: 12.w,
                                child: Image.asset("images/ic_twitter.png")),
                          ],
                        ),
                        SizedBox(
                          height: 200.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FAQ",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                            Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.w, left: 20.w),
                    child: SizedBox(
                        width: 28.w,
                        height: 28.w,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("images/ic_close.png"))),
                  ),
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25.w, 25.w, 25.w, 0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.w)),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: profileToggle
                        .map((e) => ChoiceChip(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              selectedColor: tkSelected != e.id
                                  ? Colors.white
                                  : const Color(0xff00D9D5),
                              label: Text(e.label),
                              labelStyle: TextStyle(
                                  color: tkSelected == e.id
                                      ? const Color(0xff002060)
                                      : const Color(0xff002060),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                              selected: tkSelected == e.id,
                              autofocus: true,
                              onSelected: (_) {
                                setState(() => tkSelected = e.id);
                              },
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(32.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.w)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 162.w,
                      child: Image.asset(
                        "images/bg_profile.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 162.w,
                        child: Image.asset("images/bg_profile.png"),
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Row(
                          children: [
                            Text(
                              "Pilih data yang ingin ditampilkan",
                              style: const TextStyle(
                                  color: Color(0xff002060),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 36.w,
                              height: 36.w,
                              child: Image.asset("images/ic_pin_profile.png"),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Data Diri",
                                  style: const TextStyle(
                                      color: Color(0xff002060),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Data diri anda sesuai KTP",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            SizedBox(
                              width: 36.w,
                              height: 36.w,
                              child: Image.asset("images/ic_location.png"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      _content("Nama Depan", "   Jhon", false, namadepan),
                      _content("Nama Belakang", "   Doe", false, namabelakang),
                      _content("Email", "   Masukkan email anda", false, email),
                      _content("No. Telpon", "   Masukkan no telepon anda",
                          false, notelpon),
                      _content(
                          "No. KTP", "   Masukkan no KTP anda", false, noKTP),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 28.w, vertical: 40.w),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 13.w,
                              height: 13.w,
                              child: Image.asset("images/ic_info.png"),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Expanded(
                              child: Text(
                                "Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya",
                                style: TextStyle(
                                    color: Color(0xff002060),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: SizedBox(
                            child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Image.asset("images/btn_simpan.png"))),
                      ),
                      SizedBox(
                        height: 25.w,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/bottom.png',
                      ),
                      fit: BoxFit.fitWidth)),
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
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
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

class ItemChoice {
  final int id;
  final String label;

  ItemChoice(this.id, this.label);
}
