// import 'package:eshop5nofirebase/Authentication/authenication.dart';
import 'package:eshop5nofirebase/Address/addAddress.dart';
import 'package:eshop5nofirebase/Config/config.dart';
import 'package:eshop5nofirebase/Orders/myOrders.dart';
// import 'package:e_shop/Address/addAddress.dart';
import 'package:eshop5nofirebase/Store/Search.dart';
// import 'package:e_shop/Store/cart.dart';
// import 'package:e_shop/Orders/myOrders.dart';
import 'package:eshop5nofirebase/Store/storehome.dart';
import 'package:eshop5nofirebase/authenticScreen.dart';
import 'package:eshop5nofirebase/testCartpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25,bottom: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink,Colors.lightGreenAccent],
                    begin: const FractionalOffset(0.0, 0.0),
                    end:  const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  )
              ),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(80),
                  elevation: 8,
                  child: Container(
                    height: 160,
                    width: 160,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        EcommerceApp5.sharedPreferences!.getString(EcommerceApp5.userAvatarUrl)!,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                    EcommerceApp5.sharedPreferences!.getString(EcommerceApp5.userName)!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'Signatra'
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink,Colors.lightGreenAccent],
                    begin: const FractionalOffset(0.0, 0.0),
                    end:  const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  )
              ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Home',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (c) => StoreHome());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('My Orders',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (c) => MyOrders());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('My Cart',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (c) => CartPage());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Search',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (c) => SearchProduct());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Add New Address',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (c) => AddAddress());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Logout',style: TextStyle(color: Colors.white),),
                  onTap: (){
                    EcommerceApp5.auth!.signOut().then((c){
                      Route route = MaterialPageRoute(builder: (c) => AuthenticScreen());
                      Navigator.pushReplacement(context, route);
                    });
                  },
                ),
                Divider(
                  height: 10,color: Colors.white,thickness: 6,
                ),

              ],
            ),
          )
        ],

      ),
    );
  }
}
