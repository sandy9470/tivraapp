import 'package:flutter/material.dart';
import 'package:tivra/constants/appScreenSize.dart';
import 'package:tivra/constants/constants.dart';
import 'package:tivra/constants/dimens.dart';
import 'package:tivra/widgets/buttons.dart';


class AmbulanceAccepted extends StatefulWidget {
  const AmbulanceAccepted({Key? key}) : super(key: key);
  @override
  State<AmbulanceAccepted> createState() => _AmbulanceFoundState();
}

class _AmbulanceFoundState extends State<AmbulanceAccepted> {
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
                      'BR 01EU 2980',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: AppColorConstants.appBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.dimen35),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColorConstants.ambApprovedCardColor),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColorConstants.ambApprovedCardLengthColor,
                        radius: 8,
                      ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: AppColorConstants.ambApprovedCardLengthColor,
                        radius: 8,
                      ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: AppColorConstants.ambApprovedCardLengthColor,
                        radius: 8,
                      )
                    ],
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColorConstants.ambApprovedCardColor),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Driver Name :',
                                                style: TextStyle(
                                                    fontSize: Dimens.dimen25,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                              Text('Raghvendra Singh',
                                                style: TextStyle(
                                                    fontSize: Dimens.dimen25,
                                                    fontWeight: FontWeight.w300
                                                ),),
                                            ],
                                          )),
                                          InkWell(onTap: (){},
                                              child: Container(
                                                width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: const Color(0xFF00B649)),
                                                  margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                                                  child: const Icon(Icons.phone, color: Colors.white,)))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Owner Name :',
                                                style: TextStyle(
                                                    fontSize: Dimens.dimen25,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                              Text('Satpal Kumar Rai',
                                                style: TextStyle(
                                                    fontSize: Dimens.dimen25,
                                                    fontWeight: FontWeight.w300
                                                ),),
                                            ],
                                          )),
                                          InkWell(onTap: (){},
                                              child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: const Color(0xFF00B649)),
                                                  margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                                                  child: const Icon(Icons.phone, color: Colors.white,)))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Wrap(
                                          children: [
                                            Text('Drop At - ',
                                              style: TextStyle(
                                                  fontSize: Dimens.dimen18,
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            Text('Ananya Hospital, Kankarbagh Ashok nagar main road, patna 20',
                                              style: TextStyle(
                                                  fontSize: Dimens.dimen18,
                                                  fontWeight: FontWeight.w400
                                              ),),
                                          ],
                                        ),
                                      )
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 130,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.white),
                                          margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                                          child:  Center(
                                            child: Text("29045",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: Dimens.dimen18
                                            ),),
                                          )),
                                    )
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appButton(
                          elevation: 0,
                          widthRatio: 2.5,
                          buttonColor: const Color(0xff631AFD),
                          context: context,
                          buttonTitleColor: Colors.white,
                          buttonTitle: 'Start Ride',
                          onTap: () {

                          }),
                      appButton(
                          elevation: 0,
                          widthRatio: 2.5,
                          buttonColor: const Color(0xff00B649),
                          context: context,
                          buttonTitleColor: Colors.white,
                          buttonTitle: 'Call Driver',
                          onTap: () {

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
