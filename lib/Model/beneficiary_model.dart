class BeneficiaryModel {
  String beneficiaryAccount;
  String beneficiaryName;
  String customerID;
  String transactionDate;
  String beneficiaryBank;

  BeneficiaryModel({
    required this.beneficiaryAccount,
    required this.beneficiaryName,
    required this.customerID,
    required this.beneficiaryBank,
    required this.transactionDate,
  });
}

List<BeneficiaryModel> optionsModel = [
  BeneficiaryModel(
    beneficiaryAccount: "7676620987",
    beneficiaryName: 'Abeke Olowo',
    customerID: "23399922",
    beneficiaryBank: "XYZ",
    transactionDate: "01-02-2021",
  ),
  BeneficiaryModel(
    beneficiaryAccount: "8776622765",
    beneficiaryName: "Obinna Musa",
    customerID: "23399922",
    beneficiaryBank: "ABC",
    transactionDate: "01-02-2021",
  ),
  BeneficiaryModel(
    beneficiaryAccount: "0076625514",
    beneficiaryName: "Oye Adeyemi",
    customerID: "23399922",
    beneficiaryBank: "XYZ",
    transactionDate: "01-02-2021",
  ),
  BeneficiaryModel(
    beneficiaryAccount: "8744211115",
    beneficiaryName: "Hassan Ogogo",
    customerID: "23399922",
    beneficiaryBank: "MCM",
    transactionDate: "01-02-2021",
  ),
];
