import 'package:flutter/material.dart';
import 'package:servis/sayfalar/servis_kullanimi/goruntuleme.dart';
import 'package:servis/sayfalar/servis_kullanimi/olusturma.dart';

class ServisKullanma extends StatefulWidget {
  @override
  _ServisKullanmaState createState() => _ServisKullanmaState();
}

class _ServisKullanmaState extends State<ServisKullanma> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =TabController(vsync: this, length: 2);
  }

  final _tab = <Tab>[
    Tab(text: 'Kullanmayacak Bildir',),
    Tab(text: 'Görüntüle',)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: TabBar(
            labelStyle: TextStyle(fontSize: 16.0),
            labelPadding: EdgeInsets.all(0.0),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs:_tab,
            indicatorColor: Colors.blue,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
         children: <Widget>[
          SkullanimOlusturma(),
          KullanimGoruntuleme(),
         ],
        ),
      
    );
  }
}