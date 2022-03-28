import 'package:flutter/material.dart';
// PAGE 1 2 3 4
import 'package:diarybeautygirls/page/page_1_2_3_4.dart';
// PAGE CART
import 'package:diarybeautygirls/page/page_cart.dart';
// ACCOUNT/PROFILE PAGE
import 'package:diarybeautygirls/page/page_account.dart';

// HOME SCREEN
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'DiaryBeautyGirls',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: Image(
            image: AssetImage('assets/images/logo_2.png'),
            fit: BoxFit.fill,
          ),
          backgroundColor: Colors.pink[200],
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 25,),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
            ),
            SizedBox(width: 10,)
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Handbag',),
              Tab(text: 'Jewellery',),
              Tab(text: 'Footwear',),
              Tab(text: 'Dresses',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BodyH(),
            BodyJ(),
            BodyF(),
            BodyD(),
          ],
        ),
        // Body(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_filled, color: Colors.black, size: 30,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black, size: 30,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.account_circle, color: Colors.black, size: 30,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// REKOMENDASI SEARCH BAR
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Office Code 1',
    'Belt Bag',
    'Hang Top',
    'Old Fashion',
    'Office Code 2',
    'Office Code 3',
  ];

  // UNTUK MENGHAPUS QUERY DI SEARCH BAR 
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  // UNTUK MENCLOSE/MENUTUP SEARCH BAR 
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      );
  }

  // UNTUK MENAMPILKAN QUERY YANG SAMA ATAU MATCH DI SEARCH BAR 
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var items in searchTerms) {
      if (items.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(items);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var items in searchTerms) {
      if (items.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(items);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}