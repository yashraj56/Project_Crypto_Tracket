
import 'package:flutter/material.dart';

import 'coinCard.dart';
import 'coinModel.dart';

Scaffold TilesMaker(){
  return Scaffold(body: Container(

    child: ListView.builder(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      scrollDirection: Axis.vertical,
      itemCount: coinList.length,
      itemBuilder: (context, index) {
        return CoinCard(
          name: coinList[index].name,
          symbol: coinList[index].symbol,
          imageUrl: coinList[index].imageUrl,
          price: coinList[index].price.toDouble(),
          change: coinList[index].change.toDouble(),
          changePercentage: coinList[index].changePercentage.toDouble(),
        );
      },
    ),
  ));
}
/*
import 'package:flutter/material.dart';
import 'coinCard.dart';
import 'coinModel.dart';

class Tiles_Maker extends StatefulWidget {
  const Tiles_Maker({Key? key}) : super(key: key);

  @override
  State<Tiles_Maker> createState() => _Tiles_MakerState();
}

class _Tiles_MakerState extends State<Tiles_Maker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: coinList.length,
      itemBuilder: (context, index) {
        return CoinCard(
          name: coinList[index].name,
          symbol: coinList[index].symbol,
          imageUrl: coinList[index].imageUrl,
          price: coinList[index].price.toDouble(),
          change: coinList[index].change.toDouble(),
          changePercentage: coinList[index].changePercentage.toDouble(),
        );
      },
    ));
  }
}
*/
