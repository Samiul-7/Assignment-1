import 'package:flutter/material.dart';
import 'ItemTile.dart';

class CartSection extends StatelessWidget {
  final ImageDetails imageDetails;
   CartSection({super.key, required this.imageDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(imageDetails.imgpath)),
              SizedBox(height: 10,),
              Text('Item Name: ${imageDetails.name}'),
              Text('Item Price:${imageDetails.price}'),
              Text('Item Details:${imageDetails.details}'),
              Divider(height: 30, color: Colors.red, indent: 5, endIndent: 5, thickness: 1.0,),
              Text(
                'Payment Options:',
                style: TextStyle(fontSize: 20),
              ),
              Divider(height: 30, color: Colors.red, indent: 5, endIndent: 5, thickness: 1.0,),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(onPressed: () {},
                      child: const Text('BKash'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: const Text('Visa'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: const Text('Visa'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: const Text('AmEx'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: const Text('MasterCard'),
                    ),
                  ],
                ),
              ),
              //Divider(height: 30, color: Colors.red, indent: 5, endIndent: 5, thickness: 1.0,),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
                child: const Text('Go Back'),
              ),
            ],
          )
        ),
      ),
    );
  }
}