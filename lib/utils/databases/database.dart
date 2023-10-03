import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato/view/account/collected_coupons/collected_coupons.dart';

class Database {
  static List<Map> whatsOnMind = [
    {'image': 'assets/images/biriyani.jpg', 'text': 'Biriyani'},
    {'image': 'assets/images/chicken-home.jpg', 'text': 'Chicken'},
    {'image': 'assets/images/pizza.jpg', 'text': 'Pizza'},
    {'image': 'assets/images/noodles.jpg', 'text': 'Noodles'},
    {'image': 'assets/images/burger.jpg', 'text': 'Burger'},
    {'image': 'assets/images/shawarma.jpg', 'text': 'Shawarma'},
    {'image': 'assets/images/fried-rice.jpg', 'text': 'Fried Rice'},
    {'image': 'assets/images/salad.jpg', 'text': 'Salad'},
    {'image': 'assets/images/kebab.jpg', 'text': 'Kebab'},
    {'image': 'assets/images/pastries.jpg', 'text': 'Pastries'},
  ];

  static List<Map> homeListItems = [
    {
      'restaurantName': 'Al Taza',
      'rating': '4.4',
      'description': 'North Indian ● South Indian ● ₹150 for one',
      'arrivalTime': '25-30 min',
      'distance': '5 km',
      'offer': '40% OFF up to ₹80',
      'images': [
        {
          'image': 'assets/images/altaza1.jpg',
          'itemName&price': 'Plate Shawarma ● ₹230'
        },
        {
          'image': 'assets/images/altaza2.jpg',
          'itemName&price': 'Chicken Shawarma Roll ● ₹230'
        },
        {
          'image': 'assets/images/altaza3.jpg',
          'itemName&price': 'Chicken burger ● ₹210'
        },
      ]
    },
    {
      'restaurantName': 'Kochi Kitchen - Kochi Marriot Hotel',
      'rating': '4.5',
      'description': 'South Indian ● Asian ● ₹450 for one',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'offer': '30% OFF up to ₹75',
      'images': [
        {
          'image': 'assets/images/butter-chicken1.jpg',
          'itemName&price': 'Butter Chicken [250 grams] ● ₹499'
        },
        {
          'image': 'assets/images/dum-biriyani1.jpg',
          'itemName&price': 'Subz Dum Biriyani ● ₹399'
        },
        {
          'image': 'assets/images/gulab-jamun1.jpg',
          'itemName&price': 'Gulab Jamun [150 grams] ● ₹199'
        },
      ]
    },
    {
      'restaurantName': 'Al Taza',
      'rating': '4.4',
      'description': 'North Indian ● South Indian ● ₹150 for one',
      'arrivalTime': '25-30 min',
      'distance': '5 km',
      'offer': '40% OFF up to ₹80',
      'images': [
        {
          'image': 'assets/images/altaza1.jpg',
          'itemName&price': 'Plate Shawarma ● ₹230'
        },
        {
          'image': 'assets/images/altaza2.jpg',
          'itemName&price': 'Chicken Shawarma Roll ● ₹230'
        },
        {
          'image': 'assets/images/altaza3.jpg',
          'itemName&price': 'Chicken burger ● ₹210'
        },
      ]
    },
    {
      // popular brands
    },
    {
      'restaurantName': 'Al Taza',
      'rating': '4.4',
      'description': 'North Indian ● South Indian ● ₹150 for one',
      'arrivalTime': '25-30 min',
      'distance': '5 km',
      'offer': '40% OFF up to ₹80',
      'images': [
        {
          'image': 'assets/images/altaza1.jpg',
          'itemName&price': 'Plate Shawarma ● ₹230'
        },
        {
          'image': 'assets/images/altaza2.jpg',
          'itemName&price': 'Chicken Shawarma Roll ● ₹230'
        },
        {
          'image': 'assets/images/altaza3.jpg',
          'itemName&price': 'Chicken burger ● ₹210'
        },
      ]
    },
    {
      'restaurantName': 'Kochi Kitchen - Kochi Marriot Hotel',
      'rating': '4.5',
      'description': 'South Indian ● Asian ● ₹450 for one',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'offer': '30% OFF up to ₹75',
      'images': [
        {
          'image': 'assets/images/butter-chicken1.jpg',
          'itemName&price': 'Butter Chicken [250 grams] ● ₹499'
        },
        {
          'image': 'assets/images/dum-biriyani1.jpg',
          'itemName&price': 'Subz Dum Biriyani ● ₹399'
        },
        {
          'image': 'assets/images/gulab-jamun1.jpg',
          'itemName&price': 'Gulab Jamun [150 grams] ● ₹199'
        },
      ]
    },
    {
      'restaurantName': 'Al Taza',
      'rating': '4.4',
      'description': 'North Indian ● South Indian ● ₹150 for one',
      'arrivalTime': '25-30 min',
      'distance': '5 km',
      'offer': '40% OFF up to ₹80',
      'images': [
        {
          'image': 'assets/images/altaza1.jpg',
          'itemName&price': 'Plate Shawarma ● ₹230'
        },
        {
          'image': 'assets/images/altaza2.jpg',
          'itemName&price': 'Chicken Shawarma Roll ● ₹230'
        },
        {
          'image': 'assets/images/altaza3.jpg',
          'itemName&price': 'Chicken burger ● ₹210'
        },
      ]
    },
    {
      'restaurantName': 'Kochi Kitchen - Kochi Marriot Hotel',
      'rating': '4.5',
      'description': 'South Indian ● Asian ● ₹450 for one',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'offer': '30% OFF up to ₹75',
      'images': [
        {
          'image': 'assets/images/butter-chicken1.jpg',
          'itemName&price': 'Butter Chicken [250 grams] ● ₹499'
        },
        {
          'image': 'assets/images/dum-biriyani1.jpg',
          'itemName&price': 'Subz Dum Biriyani ● ₹399'
        },
        {
          'image': 'assets/images/gulab-jamun1.jpg',
          'itemName&price': 'Gulab Jamun [150 grams] ● ₹199'
        },
      ]
    },
  ];
  static List<Map> popularBrands = [
    {
      'restaurantName': 'Kochi Kitchen',
      'rating': '4.5',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'price': '300',
      'image': 'assets/images/butter-chicken1.jpg',
      'offer': '30% OFF up to ₹75',
    },
    {
      'restaurantName': 'Burger SPot',
      'rating': '4.3',
      'arrivalTime': '30-35 min',
      'distance': '3 km',
      'image': 'assets/images/burger.jpg',
      'price': '250',
      'offer': '30% OFF up to ₹75',
    },
    {
      'restaurantName': 'Kochi Kitchen',
      'rating': '4.5',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'price': '250',
      'image': 'assets/images/butter-chicken1.jpg',
      'offer': '30% OFF up to ₹75',
    },
    {
      'restaurantName': 'Kochi Kitchen',
      'rating': '4.5',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'price': '250',
      'image': 'assets/images/butter-chicken1.jpg',
      'offer': '30% OFF up to ₹75',
    },
    {
      'restaurantName': 'Kochi Kitchen',
      'rating': '4.5',
      'arrivalTime': '55-65 min',
      'distance': '3 km',
      'price': '250',
      'image': 'assets/images/butter-chicken1.jpg',
      'offer': '30% OFF up to ₹75',
    },
  ];

  static List<Map> savedAddresses = [
    {
      'typeOfAddress': 'Home',
      'address':
          'Changampuzha road, Changampuzha Residence, Ponekkara, Edapally, Kochi',
      'icon': Icons.home_outlined,
      'distance': '5 km',
    },
    {
      'typeOfAddress': 'Work',
      'address': 'address addresses address of address',
      'icon': Icons.apartment,
      'distance': '15 km',
    }
  ];

  static List<Map> nearby_locations = [
    {
      'title': 'Skyline Eminence',
      'address':
          'Changampuzha road, Changampuzha Residence, Ponekkara, Edapally, Kochi',
      'icon': Icons.location_on_outlined,
      'distance': '5 km',
    },
    {
      'title': 'Abad Olympus',
      'address': 'kochi,Changampuzha Residence Association, Ponekkara,Edapally',
      'icon': Icons.schedule,
      'distance': '2 km',
    },
  ];

  static List<Map> recent_locations = [
    {
      'title': 'Home',
      'address': 'Edapally Raghavan Pillai Road,Edapally,Ernakulam',
      'icon': Icons.schedule,
    },
    {
      'title': 'Seaport - Airport Rd',
      'address': 'Kakkanad',
      'icon': Icons.location_on_outlined,
    },
  ];

  static List languages = [
    'English',
    'മലയാളം',
    'தமிழ்',
    'తెలుగు',
    'Kannada',
    'Punjabi',
    'Marathi',
    'Gujarati',
    'Bengali',
    'Hindi',
  ];

  static List<Map> foodOrdersItems = [
    {
      'title': 'Your Orders',
      'icon': Icons.shopping_bag_outlined,
    },
    {
      'title': 'Favourite Orders',
      'icon': Icons.favorite_outline_outlined,
    },
    {
      'title': 'Address book',
      'icon': Icons.contact_mail_outlined,
    },
    {
      'title': 'Hidden Restaurants',
      'icon': Icons.visibility_off_outlined,
    },
    {
      'title': 'Online ordering help',
      'icon': Icons.library_books_outlined,
    },
  ];

  static List<Map> CollectedCoupons = [
    {
      'title': 'Collected coupons',
      'icon': Icons.loyalty,
    },
  ];

  static List<Map> money = [
    {
      'title': 'Buy Gift Card',
      'icon': Icons.redeem,
    },
    {
      'title': 'Claim Gift Card',
      'icon': Icons.style,
    },
    {
      'title': 'Gift Card order history',
      'icon': Icons.history,
    },
    {
      'title': 'Zomato Credits',
      'icon': Icons.stars,
    },
    {
      'title': 'Gift Cards help',
      'icon': Icons.library_books_outlined,
    },
  ];

  static List<Map> more = [
    {
      'title': 'Choose language',
      'icon': Icons.g_translate,
    },
    {
      'title': 'About',
      'icon': Icons.info,
    },
    {
      'title': 'Send feedback',
      'icon': Icons.rate_review,
    },
    {
      'title': 'Get Feeding India receipt',
      'icon': Icons.receipt,
    },
    {
      'title': 'Report a safety emergency',
      'icon': Icons.medical_services,
    },
    {
      'title': 'Logout',
      'icon': Icons.power_settings_new,
    },
  ];

  static List diningTabName = [
    "filters",
    "Book Table",
    "Nearest",
    "Rating 4.0+",
    "Pure Veg",
    "Serves Alcohol",
    "Open Now",
    "Cafes",
  ];

  static List<Map> mustTries = [
    {
      'image': 'assets/images/must-try1.webp',
      'text': '8 Places for Art Lovers'
    },
    {'image': 'assets/images/must-try2.png', 'text': '14 Great Cafes'},
    {
      'image': 'assets/images/must-try3.jpg',
      'text': '6 Places for Authentic Kuzhimandhi'
    },
    {
      'image': 'assets/images/must-try4.jpg',
      'text': '7 Best Luxury Dining Places'
    },
    {'image': 'assets/images/must-try5.jpg', 'text': '5 Superb Seafood Places'},
    {'image': 'assets/images/must-try6.jpg', 'text': '7 Pure Veg Places'},
  ];

  static List<Map> whatLookingFor = [
    {
      'image': 'assets/images/quick-bites.jpg',
      'text': 'Quick Bites',
    },
    {
      'image': 'assets/images/tourist-picks.jpg',
      'text': 'Tourist Picks',
    },
    {
      'image': 'assets/images/buffet.jpg',
      'text': 'Buffet',
    },
    {
      'image': 'assets/images/cafe.jpg',
      'text': 'Cafe',
    },
    {
      'image': 'assets/images/desserts.jpg',
      'text': 'Desserts',
    },
    {
      'image': 'assets/images/outdoor-dining.jpg',
      'text': 'Outdoor Dining',
    },
    {
      'image': 'assets/images/pubs.jpg',
      'text': 'Pubs & Bars',
    },
    {
      'image': 'assets/images/family-dining.jpg',
      'text': 'Family Dining',
    },
    {
      'image': 'assets/images/pure-veg.jpg',
      'text': 'Pure Veg',
    },
    {
      'image': 'assets/images/premium-restaurants.jpg',
      'text': 'Premium Places',
    },
  ];
}
