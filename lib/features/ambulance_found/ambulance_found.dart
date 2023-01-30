import 'package:flutter/material.dart';
import 'package:tivra/constants/appScreenSize.dart';
import 'package:tivra/constants/constants.dart';
import 'package:tivra/constants/dimens.dart';
import 'package:tivra/features/ambulance_accepted/ambulance_accepted.dart';
import 'package:tivra/features/ambulance_searching/ambulance_searching.dart';
import 'package:tivra/widgets/buttons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class AmbulanceFound extends StatefulWidget {
  const AmbulanceFound({Key? key}) : super(key: key);
  @override
  State<AmbulanceFound> createState() => _AmbulanceFoundState();
}

class _AmbulanceFoundState extends State<AmbulanceFound> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppTextConstants.ambFoundTitle1,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColorConstants.appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.dimen35),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppTextConstants.ambFoundTitle2,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: AppColorConstants.appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.dimen35),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColorConstants.ambFoundCardColor),
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   SizedBox(
                     height: 200,
                     child:  Row(
                     children: [
                       Expanded(
                           flex: 1,
                           child: Image.asset('assets/gifs/ambulance.gif')),
                       Padding(
                         padding: const EdgeInsets.only(right: 20),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             const SizedBox(
                               height: 10,
                             ),
                             Align(
                               alignment: Alignment.centerRight,
                               child: Text(
                                 'BR 01EU 2980',
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                     color: AppColorConstants.appBlack,
                                     fontWeight: FontWeight.bold,
                                     fontSize: Dimens.dimen35),
                               ),
                             ),
                             Align(
                               alignment: Alignment.centerRight,
                               child: Text(
                                 'Life Support',
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                     color: AppColorConstants.appBlack,
                                     fontWeight: FontWeight.w400,
                                     fontSize: Dimens.dimen25),
                               ),
                             ),
                             Align(
                               alignment: Alignment.centerRight,
                               child: Text(
                                 'Vehicle',
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                     color: AppColorConstants.appBlack,
                                     fontWeight: FontWeight.w400,
                                     fontSize: Dimens.dimen25),
                               ),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '₹ 3000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColorConstants.appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.dimen55),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    RatingBar.builder(
                      glow: true,
                      tapOnlyMode: true,
                      ignoreGestures: true,
                      glowColor: Colors.amber,
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'This vehicle is 2 Kms away from your pickup location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                            fontSize: Dimens.dimen25),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appButton(
                      elevation: 0,
                      widthRatio: 2.5,
                      buttonColor: const Color(0xff4B864A),
                      context: context,
                      buttonTitleColor: Colors.white,
                      buttonTitle: 'Accept',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AmbulanceAccepted()));
                      }),
                  appButton(
                      elevation: 0,
                      widthRatio: 2.5,
                      buttonColor: const Color(0xffFAFF02),
                      context: context,
                      buttonTitleColor: Colors.black,
                      buttonTitle: 'Another',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AmbulanceSearching()));
                      })
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
