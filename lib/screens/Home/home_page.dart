import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_project/color_constatnt.dart';
import 'package:flutter_api_project/helper_function/my_text_style.dart';
import 'package:flutter_api_project/screens/Home/create_update_users.dart';
import 'package:flutter_api_project/widgets/custom_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget iconTitle({
   required  String svgPath,
   required String text,
}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svgPath,
          width: 22,
          height: 22,
          colorFilter: const ColorFilter.mode(
              appPrimary,
              BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 8,),
        Text(text,
          style: MyTextStyle.medium.copyWith(
            color: black,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15
          ),
        child: ListView.builder(
          itemCount: 8,
         // padding: EdgeInsets.only(bottom: 30),
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 30),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: background,
              border: Border.all(
                color:appPrimary,
                width: 0.20,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                      //  margin: EdgeInsets.all(7),
                        width: 90,
                        height: 130,
                        child: Image.asset("assets/images/placeholder.png",
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIcon(
                            svgPath: "assets/icons/user.svg",
                              text: "Godhani Aarin",
                          ),
                          SizedBox(height: 5,),
                          CustomIcon(
                            svgPath: "assets/icons/phone.svg",
                            text: "1000020000",
                          ),
                          SizedBox(height: 5,),
                          CustomIcon(
                            svgPath: "assets/icons/envelope.svg",
                            text: "aaringodhani50@gmail.com",
                          ),
                          SizedBox(height: 5,),
                          CustomIcon(
                            svgPath: "assets/icons/calendar.svg",
                            text: "20",
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  CustomIcon(
                    svgPath: "assets/icons/location-pin.svg",
                    text: "jdvdjkvvdhvkh,bbdvjd,sssfhsb,surat",
                  ),
                ],
              ),
            ),
          );
          },
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        icon: Icon(CupertinoIcons.add,
         color: Colors.white,
          size: 15,
        ),
        label:Text("Add Users",
          style: MyTextStyle.medium.copyWith(
            color: Colors.white,
            fontSize: 12.5
          ),
          maxLines: 1,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: appPrimary,
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateUpdateUser();
          },));
        },

      ),
    );
  }
}
