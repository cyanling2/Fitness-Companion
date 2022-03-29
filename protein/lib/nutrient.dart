import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
// import 'package:protein/models/foodmodel.dart';
import 'package:http/http.dart' as http;

 
class DetailScreen extends StatefulWidget {
  final String name;
  DetailScreen(this.name);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}
 
class _DetailScreenState extends State<DetailScreen> {
  // FoodData? foodData;
  bool loading = true;
  @override
  void initState() {
    fetchData();
    super.initState();
  }
  
  void printLongString(String text) {
    final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((RegExpMatch match) =>   print(match.group(0)));
  }
 
  
  Future<void> fetchData() async {
    var url =
        "https://api.nal.usda.gov/fdc/v1/foods/search?query=${widget.name}&dataType=Survey%20%28FNDDS%29&api_key=OBJ8rFlrTzJGUKQc8Bfn5g8sweWxYbgeIhFkdSlq";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decodedResponse = convert.jsonDecode(response.body);
      // foodData = FoodData.fromMap(decodedResponse);
      // decodedResponse["foods"][0].keys.forEach((key){ print("**************");print(key);print(decodedResponse["foods"][0][key]); });
      // print(decodedResponse);
      for(var food in decodedResponse["foods"]){
        print("food description: " + food["description"].toString());
        print("protein/100g: " + food["foodNutrients"].where((e)=>e["nutrientName"]=="Protein").toString());
      }


      setState(() {
        loading = false;
      });
    }else{
      throw Exception('Failed to load data');
    }
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: loading
            ? SizedBox.shrink()
            : FittedBox(
              child: Text(
                  // "${foodData?.description ?? ""}",
                  "abcdefg",
                  style: TextStyle(fontSize: 28),
                ),
            ),
      ),
      body: Container(
        child: loading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Text(
                    "Portion: per 100g",
                    style: TextStyle(fontSize: 25),
                  ),
                  // Container(
                  //   child: Expanded(
                  //     child: ListView.builder(
                  //         itemCount: foodData == null
                  //             ? 0
                  //             : foodData!.foodNutrients.length,
                  //         itemBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Text(
                  //               "${foodData!.foodNutrients[index].nutrient.name}:   "
                  //               "${foodData!.foodNutrients[index].amount} "
                  //               "${foodData!.foodNutrients[index].amount == null ?
                  //               "" : foodData!.foodNutrients[index].nutrient.unitName}",
                  //               style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                  //               color: Colors.black54
                  //               ),
                  //             ),
                  //           );
                  //         }),
                  //   ),
                  // )
                ],
              ),
      ),
    );
  }
}