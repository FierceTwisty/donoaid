// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:convert';

class Product {
  final int id;
  final String title, description;
  final String images;
  final rating; //, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    //required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    // this.price,
    required this.description,
  });
}

// Future<List> prodTry(String? category) async {
//   List<Product> test1 = [];

//   // QuerySnapshot querySnapshot = await testProd.get();
//   String cate;

//   if (category != null) {
//     cate = category;
//   } else {
//     cate = "Food";
//   }

//   await FirebaseFirestore.instance
//       .collection('DonationCategories')
//       .doc(cate)
//       .collection('Charity')
//       .get()
//       .then((QuerySnapshot querySnapshot) {
//     querySnapshot.docs.forEach((doc) {
//       test1.add(Product(
//           id: 12,
//           title: doc['title'],
//           description: doc['description'],
//           images:
//             "assets/rotibank.jpg",
//           // images: doc['images'],
//           rating: doc['rate']));
//     });
//   });

//   for (var x in test1) {
//     print("Product in test1");
//     print(x.title);
//     print(x.description);
//     print(x.images);
//     print(x.rating);
//     print(x.id);
//   }

//   return test1;
// }

// // Our demo Productsz

// List<Product> demoProducts = [
//   Product(
//     id: 1,
//     images: [
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//     ],

//     title: "Roti Bank",
//     description: description_rotiBank,
//     // rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     title: "Feeding India",
//     id: 2,
//     images: [
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//     ],
//     description: description_feedingIndia,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 3,
//     images: [
//       "assets/22.png",
//       "assets/22.png",
//       "assets/22.png",
//       "assets/22.png",
//     ],

//     title: "ACME",
//     description: description,
//     // rating: 4.1,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 4,
//     images: [
//       "assets/smilefoundation.jpeg",
//       "assets/smilefoundation.jpeg",
//       "assets/smilefoundation.jpeg",
//       "assets/smilefoundation.jpeg",
//     ],

//     title: "Smile Foundation",
//     description: description_smile,
//     // rating: 4.1,
//     isFavourite: true,
//   ),
// ];

// List<Product> demoFood = [
//   Product(
//     id: 1,
//     images: [
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//       "assets/rotibank.jpg",
//     ],

//     title: "RotiBank",
//     description: description_rotiBank,
//     // rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     title: "Feeding India",
//     id: 2,
//     images: [
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//       "assets/feeding india.jpg",
//     ],
//     description: description_feedingIndia,
//   ),
//   Product(
//     id: 3,
//     images: [
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//     ],

//     title: "Smile foundation",
//     description: description_smile,
//     // rating: 4.1,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 4,
//     images: [
//       "assets/14.png",
//       "assets/14.png",
//       "assets/14.png",
//       "assets/14.png",
//     ],

//     title: "Akshaya Patra",
//     description: description_akshayaPatra,
//     // rating: 4.1,
//     isFavourite: true,
//   ),
// ];

// List<Product> demoMoney = [
//   Product(
//     id: 1,
//     images: [
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//     ],

//     title: "Smile Foundation",
//     description: description_smile,
//     // rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     title: "Care India",
//     id: 2,
//     images: [
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//     ],
//     description: description_careIndia,
//   ),
// ];

// List<Product> money = [
//   Product(
//     id: 8,
//     images: [
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//       "assets/smilefoundation.jpg",
//     ],
//     title: "Smile Foundation",
//     description: description_smile,
//     // isFavourite: true
//     // isPopular: true
//   ),
//   Product(
//     id: 9,
//     images: [
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//       "assets/careindia.jpg",
//     ],
//     title: "Care India",
//     description: description_careIndia,
//     // isFavourite: true
//     // isPopular: true
//   ),
// ];

// List<Product> clothes = [
//   Product(
//     id: 10,
//     images: [
//       "assets/greenyatra.jpg",
//       "assets/greenyatra.jpg",
//       "assets/greenyatra.jpg",
//       "assets/greenyatra.jpg",
//     ],
//     title: "Green Yatra",
//     description: description_greenYatra,
//     // isFavourite: true
//     // isPopular: true
//   ),
//   Product(
//     id: 11,
//     images: [
//       "assets/goonj.jpg",
//       "assets/goonj.jpg",
//       "assets/goonj.jpg",
//       "assets/goonj.jpg",
//     ],
//     title: "Goonj",
//     description: description_goonj,
//     // isFavourite: true
//     // isPopular: true
//   ),
// ];

// List<Product> electronics = [
//   Product(
//     id: 12,
//     images: [
//       "assets/dreamgirl-foundation.jpg",
//       "assets/dreamgirl-foundation.jpg",
//       "assets/dreamgirl-foundation.jpg",
//       "assets/dreamgirl-foundation.jpg",
//     ],
//     title: "Dream Girl Foundation",
//     description: description_dreamGirl,
//     // isFavourite: true
//     // isPopular: true
//   ),
// ];
// const String description = "********Description*******";
// const String description_rotiBank =
//     "Mumbai Roti bank is a non-profit, food rescue organisation initiated by roti foundation Mumbai that bridges the gap between hinger and excess food.";
// const String description_feedingIndia =
//     "Feeding India by Zomato provides the right channels for compassionate citizens to begin and manage initiatives, that solve for hunger locally.";
// const String description_akshayaPatra =
//     "The Akshaya Patra Foundation is an NGO in India headquartered in Bengaluru. Our organisation strives to eliminate classroom hunger by implementing the Mid-Day Meal Scheme in the government schools and government-aided schools";
// const String description_dreamGirl =
//     "This NGO in Gurgaon, Dream Girl Foundation has recently launched their campaign ‘E-Learning’.  The aim behind this campaign is to provide digital education for the kids at our centres. Digital education has proved to be more beneficial in promoting all round personality of students. It promotes learning beyond the black and white text of the books. They have taken this initiative to educate the children in a digital environment. In order to facilitate the same, they will be requiring Laptops/Pc’s/Computers to kickstart the program. Therefore we invite our humble donors and IT companies to come forward and contribute towards digital learning for the poor children.";
// const String description_greenYatra =
//     "Green Yatra is a leading environmental NGO in India and a dedicated green yatra (green journey) towards protection, conservation and betterment of Mother Nature and Humanity.";
// const String description_goonj =
//     "Goonj envisions to grow as an idea across regions, economies and countries using urban discard as a tool to alleviate poverty.";
// const String description_smile =
//     "Smile Foundation, an NGO for poor child education, is an NGO in India directly benefitting over 15,00,000 children and their families every year, through more than 400 live welfare projects on education, healthcare, livelihood and women empowerment, in over 2000 remote villages and slums across 25 states of India.";
// const String description_careIndia =
//     "Care India  is a not-for-profit organisation that builds capacity of communities to ensure empowerment for marginalised women and girls.";
