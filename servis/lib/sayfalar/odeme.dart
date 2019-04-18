import 'package:flutter/material.dart';
import 'package:servis/models/odeme.dart';

class Odeme extends StatefulWidget {
  @override
  _OdemeState createState() => _OdemeState();
}

class _OdemeState extends State<Odeme> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: odemeData.length,
      itemBuilder: (context,i) =>Column(
        children: <Widget>[
          Container(
            
            color: odemeData[i].onaylandiMi==true ? Color(0x2a3f60) : Color(0xFFF1ABAB).withBlue(1),
            child: ExpansionTile(

              title: Text('${odemeData[i].ay}',style: TextStyle(color: odemeData[i].onaylandiMi == true ? Colors.black : Colors.white),),
              //backgroundColor: odemeData[i].onaylandiMi==true ? Colors.green : Colors.red,
              //trailing: odemeData[i].onaylandiMi == true ? Icon(Icons.check_circle) :Icon(Icons.notifications),
              children: <Widget>[
                Card(
                  //color: odemeData[i].onaylandiMi==true ? Colors.green : Colors.red,
                  elevation: 2.0,
                  child: Container(
                    height: odemeData[i].onaylandiMi == true ? 90.0 : 145.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Ödeme Tarihi',style: TextStyle(fontSize: 18.0),),
                              Text('Onaylayan',style: TextStyle(fontSize: 18.0),),
                              Text('Onaylanma Tarihi',style: TextStyle(fontSize: 18.0),),
                              (odemeData[i].onaylandiMi == false && odemeData[i].odenenTarih=='-') ? Padding( padding:EdgeInsets.only(top: 20.0), child:Text('Ödeme Yapılmamış',style: TextStyle(fontSize: 18.0,),)) :SizedBox(height: 0.0,),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: (odemeData[i].onaylandiMi == false && odemeData[i].odenenTarih!='-') ? Text('Ödeme Yaptıysanız ve \nOnaylanmamış ise \nYandaki zile basınız !',style: TextStyle(color: Colors.red,fontSize: 15.0)):SizedBox(height: 0.0,),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                            
                              Text('${odemeData[i].odenenTarih}',style: TextStyle(fontSize: 18.0),),
                              Text('${odemeData[i].onaylayan}',style: TextStyle(fontSize: 18.0),),
                              Text('${odemeData[i].onaylananTarih}',style: TextStyle(fontSize: 18.0),),
                              (odemeData[i].onaylandiMi == false && odemeData[i].odenenTarih == '-') ? 
                              RaisedButton(
                                      color:Colors.blue,
                                      elevation: 0.0,
                                      splashColor: Colors.blueGrey,
                                      onPressed: (){},
                                      child: Text('Ödeme Yap',style: TextStyle(color: Colors.white),),
                                    ) :
                              SizedBox(height: 0.0,),
                              (odemeData[i].onaylandiMi == false && odemeData[i].odenenTarih != '-') ? 
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.notifications,size: 25.0,),
                                ): SizedBox(height: 0.0,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              odemeData[i].onaylandiMi == true ? Icon(Icons.check_circle) :Icon(Icons.cancel),
                            ],
                          ),
                        ),  
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}