import 'package:flutter/material.dart';
import 'package:new_flutter/burc_detay.dart';
import 'package:new_flutter/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenecekBurc;
  const BurcItem({required this.listelenecekBurc ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>BurcDetay(secilenBurc: listelenecekBurc),
              ),
              );
            },
            leading: Image.asset(
              "assets/" + listelenecekBurc.burcKucukResim, 
              ),
            title: Text(
              listelenecekBurc.burcAdi, style: myTextStyle.headline5,
              ),
            subtitle: Text(listelenecekBurc.burcTarihi, style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink, 
              ),
          ),
        ),
      ),
    );
  }
}