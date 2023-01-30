import 'package:flutter/material.dart';
import 'package:tivra/constants/appScreenSize.dart';
import 'package:tivra/constants/constants.dart';
import 'package:tivra/constants/dimens.dart';
import 'package:tivra/features/ambulance_found/ambulance_found.dart';
import 'package:tivra/features/ambulance_searching/ambulance_searching.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State <WelcomeScreen> createState () => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColorConstants.appBackgroundColor,
      body: SizedBox(
      width: screenWidth(context),
      height: screenHeight(context),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColorConstants.welcomeScreenCAvatarBgColor,
                    radius: Dimens.dimen150,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                    color: AppColorConstants.appBackgroundColor,
                    height: 100,
                    width: screenWidth(context),
                  )),
                  Positioned(
                      bottom: -10,
                      left: 10,
                      right: 10,
                      child: Image.asset('assets/gifs/ambulance.gif'))
                ],
              ),
              SizedBox(height: screenHeight(context)/15,),
              Text(AppTextConstants.appName.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColorConstants.appBlack,
                fontWeight: FontWeight.bold,
                fontSize: Dimens.dimen55
              ),),
              const SizedBox(height: 5,),
              Text(AppTextConstants.appSlogan,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColorConstants.appBlack,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontSize: Dimens.dimen18
                ),),
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AmbulanceFound()));
          },
          icon: const Icon(Icons.arrow_forward)),
    ));
  }
}