import 'package:flutter/material.dart';
import 'package:megabank/Constant/app_color.dart';
import 'package:megabank/Constant/string.dart';
import 'package:megabank/Pages/beneficiary_details_page.dart';
import 'package:megabank/Utils/navigator.dart';
import 'customer_details_page.dart';
import '../Model/beneficiary_model.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  String greetingTheCustomer() {
    var currentTime = DateTime.now();
    var currentHour = currentTime.hour;

    String greeting;

    if (currentHour < 12) {
      greeting = goodMorningText;
    } else if (currentHour < 18) {
      greeting = goodAfternoonText;
    } else {
      greeting = goodEveningText;
    }
    return greeting;
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16.0, color: appColor3),
                                children: <TextSpan>[
                                  TextSpan(text: greetingTheCustomer()),
                                  const TextSpan(
                                      text: customerName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            const Text(
                              welcomeText,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            navigatePush(context, CustomerDetailsScreen());
                          },
                          child: const Icon(Icons.person, color: appColor1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: screenWidth,
                          decoration: const BoxDecoration(
                            color: appColor1,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        balanceText,
                                        style: TextStyle(
                                            fontSize: 14, color: appColor2),
                                      ),
                                      Text(
                                        accountBalanceText,
                                        style: TextStyle(
                                            fontSize: 30, color: appColor2),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Row(
                          children: const [
                            Text(
                              beneficiaryText,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: screenWidth,
                    color: appColor2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: optionsModel.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: GestureDetector(
                                onTap: () {
                                  navigatePush(
                                    context,
                                    BeneficiaryDetailsPage(
                                      optionsModel[index],
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(optionsModel[index]
                                            .beneficiaryName),
                                        Text(
                                          optionsModel[index]
                                              .beneficiaryAccount,
                                          style: const TextStyle(
                                              color: appColor3,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Divider(thickness: 1)
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
