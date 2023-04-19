import 'package:flutter/material.dart';
import 'package:megabank/Model/beneficiary_model.dart';
import 'package:megabank/Utils/navigator.dart';
import 'package:megabank/Widget/row_widget.dart';
import 'package:megabank/Constant/string.dart';

class BeneficiaryDetailsPage extends StatefulWidget {
  BeneficiaryModel optionsModel;
  BeneficiaryDetailsPage(this.optionsModel);

  @override
  State<BeneficiaryDetailsPage> createState() => _BeneficiaryDetailsPageState();
}

class _BeneficiaryDetailsPageState extends State<BeneficiaryDetailsPage> {
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
                color: Colors.white,
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
                            beneficiaryDetailsText,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox()
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: screenWidth,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: beneficiaryName,
                                secondItem: widget.optionsModel.beneficiaryName,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: beneficiaryAccount,
                                secondItem:
                                    widget.optionsModel.beneficiaryAccount,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: beneficiaryBank,
                                secondItem: widget.optionsModel.beneficiaryBank,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: "CustomerID",
                                secondItem: widget.optionsModel.customerID,
                              ),
                              const SizedBox(height: 15),
                              RowWidget(
                                firstItem: transactionDate,
                                secondItem: widget.optionsModel.transactionDate,
                              ),
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
