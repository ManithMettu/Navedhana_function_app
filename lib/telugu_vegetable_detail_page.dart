import 'package:flutter/material.dart';

class TeluguVegetableDetailPage extends StatelessWidget {
  final String vegetableName;

  // Variables to store details
  String yourName = '';
  String quantity = '';
  String daysFromHarvesting = '';
  String address = '';
  String phoneNumber = '';
  String areaPinCode = '';

  TeluguVegetableDetailPage({required this.vegetableName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vegetableName),
        backgroundColor: Colors.lightBlueAccent, // Change the color to match your desired app bar color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  yourName = value;
                },
                decoration: InputDecoration(labelText: 'మీ పేరు'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  quantity = value;
                },
                decoration: InputDecoration(labelText: 'రకాల'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  daysFromHarvesting = value;
                },
                decoration: InputDecoration(labelText: 'అండ్రాలు నుండి ఎండించిన రోజులు'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  address = value;
                },
                decoration: InputDecoration(labelText: 'చిరునామా'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  phoneNumber = value;
                },
                decoration: InputDecoration(labelText: 'ఫోన్ నంబర్'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  areaPinCode = value;
                },
                decoration: InputDecoration(labelText: 'పరిసర పిన్ కోడ్ (ఐచ్చికం)'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Print details along with the specified vegetable
                  print('కూరగాయ: $vegetableName');
                  print('మీ పేరు: $yourName');
                  print('రకాల: $quantity');
                  print('అండ్రాలు నుండి ఎండించిన రోజులు: $daysFromHarvesting');
                  print('చిరునామా: $address');
                  print('ఫోన్ నంబర్: $phoneNumber');
                  if (areaPinCode.isNotEmpty) {
                    print('పరిసర పిన్ కోడ్: $areaPinCode');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, // Change the color to match your desired button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: Text(
                  'సమర్పించండి',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
