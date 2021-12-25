import 'package:flutter/material.dart';
import 'package:new_flutter/burc_item.dart';
import 'package:new_flutter/model/burc.dart';
import 'package:new_flutter/strings.dart';

class BurcListesi extends StatelessWidget {
   late List<Burc> tumBurclar;
  
   BurcListesi(){
     tumBurclar = veriKaynaginiHazirla();
     print(tumBurclar);
   }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index){
            return BurcItem(listelenecekBurc: tumBurclar[index]);
        }, 
        itemCount: tumBurclar.length,
        ),
      ),
    );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];

  for(int i=0; i < 12; i++){
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarih = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    //koc1.png değerini oluşturmak   KOc -----> koc -----> koc1.png
    var burcKucukResim = 
        Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
    //koc_buyuk1.png
    var burcBuyukResim = 
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';



    Burc eklenecekBurc = Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
    gecici.add(eklenecekBurc);
  }
  return gecici;
}
  