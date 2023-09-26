
import 'package:flutter/material.dart';
import 'package:sneaker_shop/Animation/FadeAnimation.dart';
class Shoes extends StatefulWidget {
   final String image;
   const Shoes({required this.image});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'blue',
          child: Container(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0,10)
                    )
                  ]
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          
                          child: Container(
                            child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                          ),
                        ),

                        Container(
                          width: 35,
                          height: 35,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(Icons.favorite_border,size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),

                 Positioned(
                   bottom: 0,
                   left: 0,
                   width: MediaQuery.of(context).size.width,
                   height: 500,
                   child: FadeAnimation(delay: 1, child: Container(
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                             begin: Alignment.bottomRight,
                             colors: [
                               Colors.black.withOpacity(.9),
                               Colors.black.withOpacity(.0),
                             ]
                         )
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         FadeAnimation(delay: 1.3, child: Text("Sneakers", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),)),
                         SizedBox(height: 25,),
                         FadeAnimation(delay: 1.4, child: Text("Size", style: TextStyle(color: Colors.black,fontSize: 20),)),
                         SizedBox(height: 10,),
                         Row(
                           children: <Widget>[
                             FadeAnimation(delay: 1.5, child: Container(
                               height: 40,
                               width: 40,
                               margin: EdgeInsets.only(right: 20),
                               child: Center(
                                 child: Text("40",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                               ),
                             ),),
                             FadeAnimation(delay: 1.45, child: Container(
                               height: 40,
                               width: 40,
                               margin: EdgeInsets.only(right: 20),
                               decoration: BoxDecoration(
                                   color: Colors.black,
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: Center(
                                 child: Text("42",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                               ),
                             ),),
                             FadeAnimation(delay: 1.6, child: Container(
                               height: 40,
                               width: 40,
                               margin: EdgeInsets.only(right: 20),
                               child: Center(
                                 child: Text("44",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                               ),
                             ),),
                             FadeAnimation(delay: 1.7, child: Container(
                               height: 40,
                               width: 40,
                               margin: EdgeInsets.only(right: 20),
                               child: Center(
                                 child: Text("46",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                               ),
                             ),),

                           ],
                         ),
                         SizedBox(height: 60,),
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius:BorderRadius.circular(15)
                           ),
                           child: Center(
                             child: Text('Buy Now',style: TextStyle(fontWeight:FontWeight.bold )),
                           ),
                         ),
                         SizedBox(height: 30,)
                       ],
                     ),
                   )),

                 )

                 // Text("100\$", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}



