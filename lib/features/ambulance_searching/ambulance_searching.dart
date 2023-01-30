import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:tivra/constants/appScreenSize.dart';
import 'package:tivra/constants/constants.dart';
import 'package:tivra/constants/dimens.dart';
import 'package:tivra/widgets/buttons.dart';

class AmbulanceSearching extends StatefulWidget {
  const AmbulanceSearching({Key? key}) : super(key: key);

  @override
  State<AmbulanceSearching> createState() => _AmbulanceSearchingState();
}

class _AmbulanceSearchingState extends State<AmbulanceSearching> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async{
      return false;
    },
    child: SafeArea(child: Scaffold(
      backgroundColor: AppColorConstants.appBackgroundColor,
      body: SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(AppTextConstants.ambSearchTitle,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColorConstants.appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.dimen35
                  ),),
              ),
              const SizedBox(height: 10,),
              Text(AppTextConstants.ambSearchMsg,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColorConstants.appBlack,
                    fontWeight: FontWeight.w400,
                    fontSize: Dimens.dimen18
                ),),
              Expanded(
                  child: Padding(padding: const EdgeInsets.only(left: 20, right: 20),
                    child: AvatarGlow(
                      glowColor: Colors.blue,
                      endRadius: 200.0,
                      duration: const Duration(milliseconds: 3000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: const Duration(milliseconds: 100),
                      child: Material(     // Replace this child with your own
                        elevation: 0.0,
                        shape: const CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: AppColorConstants.appTransparent,
                          child: Image.asset(
                            'assets/gifs/ambulance.gif',
                            height: 190,
                          ),
                          radius: 80.0,
                        ),
                      ),
                    ),
                  )),
              appButton(elevation: 0, widthRatio: 1,
                  buttonColor: Colors.red, context: context,
                  buttonTitleColor: Colors.white,
                  buttonTitle: 'Cancel', onTap: (){
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    ), ));
  }
}
