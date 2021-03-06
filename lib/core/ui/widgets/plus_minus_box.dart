import 'package:flutter/material.dart';

import '../formater_helper.dart';
import 'garagem_rounded_button.dart';

class PlusMinusBox extends StatelessWidget {
  final bool elevated;
  final Color? backgroundcolor;
  final String? label;
  final int quantity;
  final double price;
  final VoidCallback minusCalback;
  final VoidCallback plusCalback;
  final bool calculateTotal;

  const PlusMinusBox(
      {Key? key,
      required this.quantity,
      required this.price,
      required this.plusCalback,
      required this.minusCalback,
      this.elevated = false,
      this.backgroundcolor,
      this.label,
      this.calculateTotal = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevated ? 5 : 0,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.black26,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: backgroundcolor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(
              visible: label != null,
              child: Text(
                label ?? '',
                style: const TextStyle(fontSize: 15),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                GaragemRoundedButton(
                  onPressed: minusCalback,
                  label: '-',
                ),
                Text('$quantity'),
                GaragemRoundedButton(
                  onPressed: plusCalback,
                  label: '+',
                ),
              ],
            ),
            Visibility(
              visible: label == null,
              child: const Spacer(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 10),
              constraints: const BoxConstraints(minWidth: 70),
              child: Text(FormaterHelper.formatCurrency(
                  calculateTotal ? price * quantity : price)),
            )
          ],
        ),
      ),
    );
  }
}
