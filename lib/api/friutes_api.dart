import 'package:fruit_app/core/models/friute_model.dart';

final api = [
  {
    'id': 1,
    'name': "Banana",
    'category': 'Friut',
    'shop': "Sreymom",
    'description':
        "Banana is a simple and simple application that can be used to create and manage a list of products.",
    'image':'assets/images/banana.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 2,
    'name': "Cabbage",
    'category': "Vagetable",
    'shop': "Keon Shop",
    'description': "Cookie is a simple and simple application simple.",
    'image': 'assets/images/cabbage.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 3,
    'name': "Tomato",
    'category': "Vagetable",
    'shop': "Keon Shop",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/tomato.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 4,
    'name': "Egg Plant",
    'category': "Vagetable",
    'shop': "Sreymom",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/egg_plant.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 5,
    'name': "Orange",
    'category': "Friut",
    'shop': "Netra Shop",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/orange.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 6,
    'name': "Chery",
    'category': "Fiute",
    'shop': "Midtown Shop",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/chery.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 7,
    'name': "Grape",
    'category': "Fiute",
    'shop': "Netra Shop",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/grape.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 8,
    'name': "Strawberry",
    'category': "Fiute",
    'shop': "Tohamina",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/strawberry.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 9,
    'name': "Coconut",
    'category': "Fiute",
    'shop': "Tohamina",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/coconut.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
  {
    'id': 10,
    'name': "Raspberries",
    'category': "Fiute",
    'shop': "Tohamina",
    'description':
        "Tomato is a fresh is a simple and simple application that can be used to create and manage a list of products.",
    'image': 'assets/images/raspberries.png',
    'rating': 4.3,
    'price': 2.5,
    'qty': 10,
  },
];

final List<FriutModel> listFriut = api
    .map(
      (json) => FriutModel.fromJson(json),
    )
    .toList();
