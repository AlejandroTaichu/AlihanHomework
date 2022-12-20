import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';
import 'package:odev3/abilities.dart';

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi");
    print("Ekran Genisliği : $ekranGenisligi");
    return Scaffold(
      appBar: AppBar(title: const Text("Fire Lord",style: TextStyle(fontFamily: "RubikVinyl", fontSize: 40),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Charizard",style: TextStyle(fontSize: 30, color: anaRenk, fontWeight: FontWeight.bold,fontFamily: "RubikVinyl"),),
          Image.asset("image/charizard.png",width: 250,height: 250,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){},
                child: Text("POWER : 9",style: TextStyle(color: yaziRenk3,fontSize: 10 ),),
                style: (TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                )),
              ),
              TextButton(onPressed: (){},
                child: Text("ENDURANCE : 6 ",style: TextStyle(color: yaziRenk3,fontSize: 10),),
                style: (TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                )),
              ),
              TextButton(onPressed: (){},
                child: Text("ELEMANTAL : FİRE",style: TextStyle(color: yaziRenk3,fontSize: 10),),
                style: (TextButton.styleFrom(
                    backgroundColor: anaRenk,

                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                )),
              ),
              TextButton(onPressed: (){},
                child: Text("FAMİLY : DRAGON",style: TextStyle(color: yaziRenk3,fontSize: 10),),
                style: (TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                )),
              ),
            ],
          ),
          Abilities(yazi1: "Length : 5'7", yazi2: "Weigh : 200 Lbs", yazi3: "Weakneses : Water & Resistance : Fire "),
          Padding
            (//MainAxisAlignment.spaceEvenly kullabilirdik eğer consts Spaceri kullanmasaydık hizalam da yardımcı oluyor.
            padding: const EdgeInsets.only(left:24,right: 24),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("120 HP ",style: TextStyle(fontSize: 24,color: yaziRenk1,fontWeight: FontWeight.bold,backgroundColor: yaziRenk3),),
                const Spacer(),
                TextButton(
                  onPressed: (){},
                  
                  child: Text("Fire Spin : 50 Mana ",style: TextStyle(color: yaziRenk4,fontSize: 24,backgroundColor: yaziRenk3),),
                  style: TextButton.styleFrom(backgroundColor: yaziRenk3,

                  ),
                  
                ),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}