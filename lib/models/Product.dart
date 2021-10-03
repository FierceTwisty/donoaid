import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
 // final List<Color> colors;
   final double rating;//, price;
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

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/1.jpeg",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Donation",
    // price: 64.99,
    description: description,
    //rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/2.jpeg",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Donation",
    // price: 50.5,
    description: description,
    // rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/3.jpeg",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Donation",
    // price: 36.55,
    description: description,
    // rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/4.jpeg",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Donation",
    // price: 20.20,
    description: description,
    // rating: 4.1,
    isFavourite: true,
  ),
];

List<Product> food = [
  Product(
    id: 1,
    images: [
      "assets/rotibank.jpg"
    ],
    title: "Mumbai Roti Bank by Dabbawalas",
    description: description_rotiBank,
    // isFavourite: true
    // isPopular: true
  ),

  Product(
    id: 2,
    images: [
      "assets/feedingindia.jpg"
    ],
    title: "Feeding India",
    description: description_feedingIndia,
    // isFavourite: true
    // isPopular: true
  ),

  Product(
    id: 3,
    images: [
      "assets/akshayapatra.jpg"
    ],
    title: "Akshaya Patra Foundation",
    description: description_akshayaPatra,
    // isFavourite: true
    // isPopular: true
  ),

];

List<Product> money = [
  Product(
    id: 1,
    images: [
      "assets/smile.jpg"
    ],
    title: "Smile Foundation",
    description: description_smile,
    // isFavourite: true
    // isPopular: true
  ),

  Product(
    id: 2,
    images: [
      "assets/careindia.jpg"
    ],
    title: "Care India",
    description: description_careIndia,
    // isFavourite: true
    // isPopular: true
  ),

];

List<Product> clothes = [
  Product(
    id: 1,
    images: [
      "assets/greenyatra.jpg"
    ],
    title: "Green Yatra",
    description: description_greenYatra,
    // isFavourite: true
    // isPopular: true
  ),

  Product(
    id: 2,
    images: [
      "assets/goonj.jpg"
    ],
    title: "Goonj",
    description: description_goonj,
    // isFavourite: true
    // isPopular: true
  ),

];

List<Product> electronics = [
  Product(
    id: 1,
    images: [
      "assets/dreamgirl.jpg"
    ],
    title: "Dream Girl Foundation",
    description: description_dreamGirl,
    // isFavourite: true
    // isPopular: true
  ),

];
const String description =
    "********Description*******";
const String description_rotiBank =
    "Mumbai Roti bank is a non-profit, food rescue organisation initiated by roti foundation Mumbai that bridges the gap between hinger and excess food.";
const String description_feedingIndia =
    "Feeding India by Zomato provides the right channels for compassionate citizens to begin and manage initiatives, that solve for hunger locally.";
const String description_akshayaPatra =
    "The Akshaya Patra Foundation is an NGO in India headquartered in Bengaluru. Our organisation strives to eliminate classroom hunger by implementing the Mid-Day Meal Scheme in the government schools and government-aided schools";
const String description_dreamGirl =
    "This NGO in Gurgaon, Dream Girl Foundation has recently launched their campaign ‘E-Learning’.  The aim behind this campaign is to provide digital education for the kids at our centres. Digital education has proved to be more beneficial in promoting all round personality of students. It promotes learning beyond the black and white text of the books. They have taken this initiative to educate the children in a digital environment. In order to facilitate the same, they will be requiring Laptops/Pc’s/Computers to kickstart the program. Therefore we invite our humble donors and IT companies to come forward and contribute towards digital learning for the poor children.";
const String description_greenYatra =
    "Green Yatra is a leading environmental NGO in India and a dedicated green yatra (green journey) towards protection, conservation and betterment of Mother Nature and Humanity.";
const String description_goonj =
    "Goonj envisions to grow as an idea across regions, economies and countries using urban discard as a tool to alleviate poverty.";
const String description_smile =
    "Smile Foundation, an NGO for poor child education, is an NGO in India directly benefitting over 15,00,000 children and their families every year, through more than 400 live welfare projects on education, healthcare, livelihood and women empowerment, in over 2000 remote villages and slums across 25 states of India.";
const String description_careIndia =
    "Care India  is a not-for-profit organisation that builds capacity of communities to ensure empowerment for marginalised women and girls.";