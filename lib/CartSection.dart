import 'package:flutter/material.dart';
import 'ItemTile.dart';

class CartSection extends StatelessWidget {
  final ImageDetails imageDetails;
  String dropdownvalue='one';
   CartSection({super.key, required this.imageDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Detailed View'),
        actions: [
      PopupMenuButton<String>(
      onSelected: (value) {

        print('Selected: $value');
      },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: '1',
              child: Text('Option 1'),
            ),
            PopupMenuItem<String>(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
          ];
        }
        ),
          ElevatedButton(onPressed: () {},
            child: const Text('Your Cart',style: TextStyle(color: Colors.orange)),
          ),
    ],
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
              SizedBox(height: 30),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(onPressed: () {},
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/bkash.png',
                            height: 44.0,
                            width: 44.0,
                          ),
                          SizedBox(width: 4.0),
                          Text('Bkash'),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                        Image.asset(
                        'assets/nagad.jpg',
                        height: 44.0,
                        width: 44.0,
                      ),
                      SizedBox(width: 4.0),
                      Text('Nagad'),
                        ],
                    ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(onPressed: () {},
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/amex.jpg',
                            height: 44.0,
                            width: 44.0,
                          ),
                          SizedBox(width: 4.0),
                          Text('AmEx'),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: () {},
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/master.png',
                            height: 44.0,
                            width: 44.0,
                          ),
                          SizedBox(width: 4.0),
                          Text('Master Card'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Divider(height: 30, color: Colors.red, indent: 5, endIndent: 5, thickness: 1.0,),
              SizedBox(height: 50),
              ElevatedButton(onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
                child: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}