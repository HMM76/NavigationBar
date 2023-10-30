import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class Food {
  final String name;
  final String imageUrl;

  Food({required this.name, required this.imageUrl});
}

class _HomePageState extends State<HomePage> {
  String time = DateFormat.yMMMMd('en_US').format(DateTime.now());
  List<Food> dishes = [
    Food(name: 'Cereals With Milk', imageUrl: 'https://www.verywellhealth.com/thmb/HEl_K0SAzH5F81RHXCvSvGhroq0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/30D7A016-ABA5-48DD-BE39-3E7A223A03BF-96f2ba9e6c724dc9b2ba638b0c0f44a2.jpeg'),
    Food(name: 'Sweet Tea', imageUrl: 'https://www.thespruceeats.com/thmb/aoQd_AmdGA2O1jHp5lCXrrZjfi4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-make-masala-chai-tea-4134710-step-05-1-d3f31d2f583743459275556b2c33b806.jpg'),
    Food(name: 'Chicken Soup', imageUrl: 'https://www.foodandwine.com/thmb/j1vJdgrMdu64ElBpxMzmvqpyt5U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/creamy-tomato-soup-buttery-croutons-hero-02-49b419d00f854db78838a79c8df9a23f.jpg'),
    Food(name: 'Caesar Salad', imageUrl: 'https://www.kitchensanctuary.com/wp-content/uploads/2021/06/Simple-Green-Salad-with-Vinaigrette-Square-FS-3241.jpg'),
    Food(name: 'Potato with Beef', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmrPqe3ntayeJInM4GSQKbRp9MJz7TNINNBg&usqp=CAU'),
    Food(name: 'Pancakes', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6qwnzSyyXMbOoSwK-MzU5HjqQxjONWscO2w&usqp=CAU'),
    Food(name: 'Airan', imageUrl: 'https://www.povarenok.ru/data/cache/2016may/20/52/1584700_84342-710x550x.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                 const Align(
                  alignment: Alignment(0, -0.8),
                  child: Text("Menu", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(color: Colors.black, thickness: 5,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(time, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                ),
                Expanded(
  child: ListView.builder(
    itemCount: dishes.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          child: Card(
            child: ListTile(
              leading: Image.network(
                    dishes[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
              title: Text(
                dishes[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8) 
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.food_bank),
                    iconSize: 18,
                    onPressed: (){},),
              ),
            ),
          ),
        ),
      );
    },
  ),
)


              ],
            ),
          ),
      backgroundColor: const Color.fromARGB(255, 225, 236, 6),
    );
  }
}