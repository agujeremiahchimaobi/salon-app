import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

import '../../Styles/app_colors.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///Text Feild controllers
  final TextEditingController _address = TextEditingController();
  final TextEditingController _number = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _zipCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: const Color(0xffE8625D),

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Accounts',
          ),
        ],
      ),
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: 330,
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
                                      borderRadius: BorderRadius.circular(8)),
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
                            width: 60,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child:
                  Image(image: AssetImage("assets/images/service.png")),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/home beuty .png"),
                        width: 180,
                      ),
                      Image(
                        image: AssetImage("assets/images/online tutor.png"),
                        width: 180,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image(
                    image: AssetImage("assets/images/salon at home.png"),
                    width: 180,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top reated salon courses at Home",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.jacarta,
                            fontSize: 18),
                      ),
                      const Image(
                        image: AssetImage("assets/images/line.png"),
                        width: 180,
                      ),
                      Text(
                        "Best courses and best experience mentor",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.jacarta,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/goodlook.png"),
                        width: 180,
                      ),
                      Image(
                        image: AssetImage("assets/images/hair.png"),
                        width: 180,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/makeup.png"),
                        width: 180,
                      ),
                      Image(
                        image: AssetImage("assets/images/hair.png"),
                        width: 180,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HOME SALON PAKAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.jacarta,
                            fontSize: 18),
                      ),
                      const Image(
                        image: AssetImage("assets/images/line.png"),
                        width: 190,
                      ),
                      Text(
                        "Best beautition at your home",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.jacarta,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/beach.png"),
                          width: 180,
                        ),
                        Image(
                          image: AssetImage("assets/images/faces.png"),
                          width: 180,
                        ),
                        Image(
                          image: AssetImage("assets/images/hairt.png"),
                          width: 180,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    elevation: 20,
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      alignment: Alignment.center,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          Text("Contact Us", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: AppColor.black),),
                          const SizedBox(height: 20,),
                          CustomTextField(
                            password: false,
                            _name,
                            backgroundColor: AppColor.darkLavender,
                            hint: 'Enter Your Name',

                            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColor.white),

                          ),
                          const SizedBox(height: 18,),
                          CustomTextField(

                            password: false,
                            _address,
                            backgroundColor: AppColor.darkLavender,
                            hint: 'Enter Your Email Id',

                            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColor.white),

                          ),
                          const SizedBox(height: 20,),
                          CustomTextField(

                            password: false,
                            _number,
                            backgroundColor: AppColor.darkLavender,
                            hint: 'Enter Your Contact No',

                            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: AppColor.white),

                          ),
                          const SizedBox(height: 20,),
                          CustomTextField(

                            password: false,
                            _zipCode,
                            backgroundColor: AppColor.darkLavender,
                            hint: 'Enter Zip Code',

                            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColor.white),

                          ),
                          const SizedBox(height: 15,),
                          GestureDetector(
                            child: Card(
                              elevation: 20,
                              child: Container(


                                decoration: BoxDecoration(
                                    color: AppColor.darkLavender,
                                    borderRadius: const BorderRadius.all(Radius.circular(8))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 23, right: 23, top: 6, bottom: 6),
                                  child: Text("Submit", style: TextStyle(color: AppColor.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                ),

                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
