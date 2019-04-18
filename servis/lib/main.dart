import 'package:flutter/material.dart';
import 'package:servis/sayfalar/odeme.dart';
import 'package:servis/sayfalar/servis_kullanma.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Servis',
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =TabController(vsync: this, length: 2);
  }

  static const _tabs = <Tab>[
    Tab(icon: Icon(Icons.payment),text: 'Ödeme planı',),
    Tab(icon: Icon(Icons.directions_car), text: 'Servis Kullanımı',),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // elevation: 0.4,
        title: Text('Servisçim'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Odeme(),
          ServisKullanma(),
        ],
      ),
      drawer: Drawer(
        
        child: ListView(
          
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0.0),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.jpeg'),
                  
                  
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.input,color: Colors.white,),
                    iconSize: 22.0,
                  ),
                ],
                accountName: Text('Efe tur',style: TextStyle(fontSize: 22.0),),
                accountEmail: null,
              ),
              
            ),
            ListTile(
              title: Text('Veli Adı Soyadı'),
              subtitle: Text('İlker Aksu'),
              
            ),
            ListTile(
              title: Text('Servis Şoförü'),
              subtitle: Text('Ali Veli'),
            ),
            ListTile(
              title: Text('Şoför telefon numarası'),
              subtitle: Text('0544 7465235'),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.phone),
              ),
            ),
            ListTile(
              title: Text('Tur adres bilgisi'),
              subtitle: Text('Yenice köy mahallesi demokratlar meydanı no:12'),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.location_on),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
    );
  }
}