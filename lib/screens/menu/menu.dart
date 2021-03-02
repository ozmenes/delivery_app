import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('Name'),
              accountEmail: Text('email@email.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration:  new BoxDecoration(
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Order'),
                      leading: Icon(Icons.shopping_bag_outlined),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.red,

                    onTap: (){},
                    child: Container(
                      color: Colors.grey[200],
                      child: ListTile(
                        title: Text('Inbox'),
                        leading: Icon(Icons.mail_outline),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Favourites'),
                      leading: Icon(Icons.favorite_border),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Divider(),
                  SizedBox(height: 10.0,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      color: Colors.grey[200],
                      child: ListTile(
                        title: Text('Need Help?'),
                        leading: Icon(Icons.help),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Divider(
                  ),
                  SizedBox(height: 10.0,),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Country'),
                      leading: Icon(Icons.my_location_rounded),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      color: Colors.grey[200],
                      child: ListTile(
                        title: Text('Language'),
                        leading: Icon(Icons.language),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                alignment: Alignment.centerRight,
                child: ListTile(
                  title: Text('SignIN', style: TextStyle(color: Colors.white),),
                  leading: Icon(Icons.login, color: Colors.white,size: 22.0,),
                ),
              ),
            ),

          ],
        ),
        // child: new Container(
        //   child: new ListView(
        //     shrinkWrap: true,
        //     children: [
        //
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
