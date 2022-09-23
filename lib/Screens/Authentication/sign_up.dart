import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Styles/app_colors.dart';
import '../../Utils/router.dart';
import 'otp_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController _phone = TextEditingController();

  String verificationSent = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.white,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColor.midnightGreen,
                          ),
                          Text(
                            "Sector-44, Real Estate, Sector- 62, Gurugram",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColor.feldgrau),
                          ),
                          Image(
                            image: const AssetImage(
                              "assets/images/arrow.png",
                            ),
                            color: AppColor.feldgrau,
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: 290,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColor.sonicSilver,
                                  ),
                                  hintText: 'Search ',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColor.feldgrau,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.feldgrau,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                          ),
                          const Image(
                            image: AssetImage("assets/images/whatsapp.png"),
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Image(
                  image: AssetImage("assets/images/service.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: AppColor.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/banner.png"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffD2137B),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                              height: 13,
                              width: 13,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffDC4C4C4),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              height: 13,
                              width: 13,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffC4C4C4),
                                borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                            height: 13,
                            width: 13,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter Phone Number",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColor.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _phone,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(15),
                          hintText: '10 Digit Phone Number',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.vividCerise,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.vividCerise,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_phone.text.isNotEmpty) {
                            verifyPhone();
                          }
                          nextPageOnly(context, page: const OtpPAge());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: AppColor.vividCerise,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(14))),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void verifyPhone() async {
    auth.verifyPhoneNumber(
        phoneNumber: _phone.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {});
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationSent = verificationId;
        },
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  // void verifyOtp() async {
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationSent, smsCode: _otpCode);
  //   await auth.signInWithCredential(credential).then((value) {
  //     print('Logged in successfully');
  //   });
  // }
}
