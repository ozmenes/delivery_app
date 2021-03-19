import 'package:delivery_flutter_app/screens/cuisin/cuosoneslist.dart';
import 'package:delivery_flutter_app/screens/product/productdetail.dart';
import 'package:delivery_flutter_app/screens/shop/shopinfo.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ShopDetailPage extends StatefulWidget {
  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  bool isfavorited = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: height,
        minHeight: height / 1.6,
        body: Container(
          height: height / 2,
          width: width,
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Image(
                image: AssetImage("assets/images/my_pizza.jpg"),
                fit: BoxFit.cover,
                height: height / 2,
                width: width,
              ),
              Positioned(
                  top: 40.0,
                  left: 15.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 35.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(true))
              ),
              Positioned(
                  top: 40.0,
                  right: 15.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.  favorite,
                        color: Colors.red,
                        size: 35.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(true))
              ),
            ],
          ),
        ),
        borderRadius: BorderRadius.circular(35.0),
        //color: Colors.grey[100],
        panel: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height:15.0,),
            Divider(
              height: 40.0,
              thickness: 3.5,
              color: Colors.grey,
              indent: width/2.5,
              endIndent: width/2.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Pizzeria Di Mora",
                    style: TextStyle(
                        fontSize: 26.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        //padding: EdgeInsets.only(top: 10.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.info,
                            color: Colors.amber,
                            size: 30.0,
                          ),
                          onPressed: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>ShopInfoPage()));
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //desc
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    //height: height / 1.2,
                    width: width/1.2,
                    child: Text(
                      " Pizza,"+" Noodle,"+" Salat",
                      style: TextStyle(
                          fontSize: 15.0, color: Colors.black54,fontWeight: FontWeight.w600),
                    ),
                  ),

                ],
              ),
            ),
            // stars and reviews
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,size:17.0,color: Colors.orangeAccent[100],),
                      Icon(Icons.star,size:17.0,color: Colors.orangeAccent[100],),
                      Icon(Icons.star,size:17.0,color: Colors.orangeAccent[100],),
                      Icon(Icons.star,size:17.0,color: Colors.orangeAccent[100],),
                      Icon(Icons.star,size:17.0,),
                      SizedBox(width: 5.0,),
                      Text("150 reviews",style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                      SizedBox(width: 8.0,),

                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.black87,
                    size: 20.0,
                  ),
                  SizedBox(width: 5.0,),
                  Text('20-30 min.'),
                  SizedBox(width: 15.0,),
                  Icon(
                    Icons.delivery_dining,
                    color: Colors.black87,
                    size: 20.0,
                  ),SizedBox(width: 5.0,),
                  Text('Delivery fee'),
                  SizedBox(width: 5.0,),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            // cuisine list
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                  width: width,
                  color: Colors.white,
                  child: CuisinesIconList()
              ),
            ),
            Divider(
              //height: 15.0,
              color: Colors.grey,
              thickness: 1,
            ),
            // menu list
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Column(
                children: [
                  GestureDetector(
                    child: deliveryItemTab("assets/images/classic.png", "Classic",
                        "Tamota sauce, cheese", "6.99",800, "Kassel"),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProductDetailPage()));
                      });
                    },
                  ),
                  deliveryItemTab("assets/images/americana.png", "Americana",
                      "Base + Peperani", "7.99",800, "Kassel"),
                  deliveryItemTab("assets/images/veg.png", "Vegetarian",
                      "Tamota,Onion and Corn", "4.99",800, "Kassel"),
                  // deliveryItemTab("assets/images/mexicanPizza.png", "Mexican",
                  //     "Mushroom + Chillies", "6.99",800, "Kassel")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget notFavorited(){
    return IconButton(
      onPressed: (){},
      icon: Icon(
        Icons.favorite_border,
        //color: Colors.yellow,
        size: 35.0,
      ),
    );
  }
  Widget favorited(){
    return IconButton(
      onPressed: (){},
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 35.0,
      ),
    );
  }
  Widget pickUpItemTab( String pizzaImage, String pizza, String ingredients,
      String price,int distance, String location) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        height: 100.0,
        width: width - 40.0,
        child: Stack(
          children: [
            //let have the clok for the pizza items....
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                height: 100.0,
                width: width - 90.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          ingredients,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Text("\$$price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 15.0))
                  ],
                ),
              ),
            ),
            Positioned(
                left: 0.0,
                child: Image(
                  image: AssetImage(pizzaImage),
                  height: 100.0,
                  width: 100.0,
                ))
          ],
        ),
      ),
    );
  }
  Widget deliveryItemTab( String pizzaImage, String pizza, String ingredients,
      String price,int distance, String location) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        height: 100.0,
        width: width - 40.0,
        child: Stack(
          children: [
            //let have the clok for the pizza items....
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[300]),
                height: 100.0,
                width: width - 90.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          ingredients,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        SizedBox(height: 8.0,),
                        Row(
                          children: [
                            Icon(Icons.pin_drop,size: 18,color: Colors.black54,),
                            Text(distance.toString()+' m',
                             // style: smallTitelTextStyle(),
                            ),
                            SizedBox(width: 15.0,),
                            Icon(Icons.location_city,size: 18,color: Colors.black54,),
                            Text(location,
                             // style: smallTitelTextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text("$price\€",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 15.0)
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 10.0,
                child: Image(
                  image: AssetImage(pizzaImage),
                  height: 100.0,
                  width: 100.0,
                ))
          ],
        ),
      ),
    );
  }
}
