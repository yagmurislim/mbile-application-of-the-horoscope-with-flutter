import 'package:flutter/material.dart';
import 'package:new_flutter/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
   Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;
 
  @override
  void initState() {
    super.initState();
    appbarRengiBul();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: CustomScrollView(
           slivers: [
             SliverAppBar(
               expandedHeight: 250,
               pinned: true,           
               backgroundColor: appbarRengi,
               flexibleSpace: FlexibleSpaceBar(
                 title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
                 centerTitle: true,
                 background: Image.asset(
                   'assets/' + widget.secilenBurc.burcBuyukResim, 
                    fit: BoxFit.cover,
                 ),
                ),
               ),
               SliverToBoxAdapter(
                 child: Container(
                   margin: EdgeInsets.all(16),
                   padding: EdgeInsets.all(8),
                   child: SingleChildScrollView(
                     child: Text(
                       widget.secilenBurc.burcDetayi, 
                       style: Theme.of(context).textTheme.subtitle1,
                     ),
                    ),
                 ),
                ),
              ],
            ));
  }

  void appbarRengiBul() async{
    var PaletteGenerator;
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/${widget.secilenBurc.burcBuyukResim}'));
    appbarRengi = _generator.vibrantColor!.color;
     setState(() {
       
     });
     print(appbarRengi);
  }
    
  }







