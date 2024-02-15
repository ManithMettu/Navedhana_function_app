import 'package:flutter/material.dart';

class VegetableDetailPage extends StatelessWidget {
  final String vegetableName;

  // Variables to store details
  String yourName = '';
  String quantity = '';
  String daysFromHarvesting = '';
  String address = '';
  String phoneNumber = '';
  String areaPinCode = '';

  VegetableDetailPage({required this.vegetableName});

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
                decoration: InputDecoration(labelText: 'Your Name'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  quantity = value;
                },
                decoration: InputDecoration(labelText: 'Quantity'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  daysFromHarvesting = value;
                },
                decoration: InputDecoration(labelText: 'Days from Harvesting'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  address = value;
                },
                decoration: InputDecoration(labelText: 'Address'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  phoneNumber = value;
                },
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  areaPinCode = value;
                },
                decoration: InputDecoration(labelText: 'Area Pin Code (Optional)'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Print details along with the specified vegetable
                  print('Vegetable: $vegetableName');
                  print('Your Name: $yourName');
                  print('Quantity: $quantity');
                  print('Days from Harvesting: $daysFromHarvesting');
                  print('Address: $address');
                  print('Phone Number: $phoneNumber');
                  if (areaPinCode.isNotEmpty) {
                    print('Area Pin Code: $areaPinCode');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, // Change the color to match your desired button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
