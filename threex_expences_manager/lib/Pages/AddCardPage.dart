import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threex_expences_manager/Models/card_model.dart';
import 'package:threex_expences_manager/Providers/cardprovider.dart';

class AddCardPage extends StatefulWidget {
  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController availableController = TextEditingController();
  TextEditingController currencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          'Add Card',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                newTextField('Card Name', nameController),
                newTextField('Card Number', numberController),
                newTextField('Available', availableController),
                newTextField('Currency', currencyController),
                newTextField('Bank Name', bankNameController),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () => onAdd(),
                  elevation: 0,
                  minWidth: double.infinity,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget newTextField(String name, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        autocorrect: false,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  void onAdd() {
    CardModel card = CardModel(
      available: int.tryParse(availableController.text),
      bankName: bankNameController.text,
      currency: currencyController.text,
      number: numberController.text,
      name: nameController.text,
    );

    Provider.of<CardProvider>(context, listen: false).addCard(card);

    Navigator.of(context).pop();
  }
}
