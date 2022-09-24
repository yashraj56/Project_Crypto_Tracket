import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  CoinCard({Key? key,
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  }) : super(key: key);

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
            boxShadow: [
              /*BoxShadow(
                color: Colors.white,

                blurRadius: 10,
                spreadRadius: 1,
              ),*/
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      /*BoxShadow(
                        color: (Colors.grey[500])!,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),*/
                      /*BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),*/
                    ],
                  ),
                  height: 60,
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          name,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        symbol.toUpperCase(),
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$'+price.toDouble().toString(),
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Text(
                      change.toDouble() < 0
                          ? change.toDouble().toStringAsFixed(4)
                          : '+' + change.toDouble().toStringAsFixed(4),
                      style: TextStyle(
                        color: change.toDouble() < 0 ? Colors.red : Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      changePercentage.toDouble() < 0
                          ? changePercentage.toDouble().toString() + '%'
                          : '+' + changePercentage.toDouble().toString() + '%',
                      style: TextStyle(
                        color: changePercentage.toDouble() < 0
                            ? Colors.red
                            : Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}