import 'package:flutter/material.dart';
import 'CartSection.dart';
class ImageDetails {
  final String imgpath;
  final String price;
  final String details;
  final String name;

  ImageDetails({
    required this.name,
    required this.imgpath,
    required this.price,
    required this.details,
  });
}

class ImageGrid extends StatelessWidget {
  final List<ImageDetails> imageList = [
    ImageDetails(
      imgpath: 'assets/lamp3.jpg',
      name: "LAMP",
      price: '\$50',
      details: 'A beautiful bedside lamp',
    ),
    ImageDetails(
      imgpath: 'assets/mobile2.jpg',
      name: "Phone",
      price: '\$150',
      details: 'A very good android phone best suited for gamming',
    ),
    ImageDetails(
      imgpath: 'assets/oven.jpg',
      name: "OVEN",
      price: '\$120',
      details: 'A very good sustainable oven',
    ),
    ImageDetails(
      imgpath: 'assets/refrigerator.png',
      name: "Refrigerator",
      price: '\$1000',
      details: 'A very good LG refrigerator',
    ),
    ImageDetails(
      imgpath: 'assets/TV.jpg',
      name: "TV",
      price: '\$250',
      details: 'A nice 52" LG LED TV',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        final imageDetails = imageList[index];

        return GridTile(
          child: Column(
            children: [
              Expanded(
                child:
                Image.asset(
                  imageDetails.imgpath,
                  fit:BoxFit.cover,
                ),
              ),
              //SizedBox(height: 8.0),
              Text(
                  imageDetails.name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                  ),
              ),
              Text(imageDetails.price,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                  )
              ),
              Text(imageDetails.details,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                  )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartSection(
                    imageDetails:ImageDetails(
                      name: imageDetails.name,
                      price: imageDetails.price,
                      details: imageDetails.details,
                      imgpath: imageDetails.imgpath,
                    ))
                  ),
                  );
                },
                child: Text('BUY NOW',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                    )
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}