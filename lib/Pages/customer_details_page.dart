import 'package:flutter/material.dart';
import 'package:megabank/Constant/app_color.dart';
import 'package:megabank/Utils/navigator.dart';
import 'package:megabank/Widget/row_widget.dart';
import 'package:megabank/Constant/string.dart';

class CustomerDetailsScreen extends StatefulWidget {
  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              navigateBack(context);
                            },
                          ),
                          const Text(
                            profileText,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox()
                        ],
                      ),
                      const SizedBox(height: 40),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: appColor1, shape: BoxShape.circle),
                                child: Center(
                                  child: Text(
                                    customerName.toString().substring(0, 1),
                                    style: const TextStyle(
                                      color: appColor2,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    customerName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: appColor3,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    customerID,
                                    style: TextStyle(
                                      color: appColor3,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Container(
                        width: screenWidth,
                        color: appColor2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: "Title",
                                secondItem: title,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: "CustomerName",
                                secondItem: customerName,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: "CustomerID",
                                secondItem: customerID,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: "Gender",
                                secondItem: gender,
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
