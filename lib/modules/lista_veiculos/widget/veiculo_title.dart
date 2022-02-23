import 'package:flutter/material.dart';

import '../../../core/ui/garagem_ui.dart';
import '../../../models/garagem_model.dart';

class VeiculoTitle extends StatelessWidget {
  final GaragemModel veiculo;

  const VeiculoTitle({Key? key, required this.veiculo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Expanded(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                veiculo.placa!,
                style: GaragemUi.textBoldBlue,
              ),
              const SizedBox(
                    height: 20,
                  ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    veiculo.horaEntrada!,
                    style: GaragemUi.textBold,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    veiculo.horaSaida!,
                    style: GaragemUi.textBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                veiculo.vaga!,
                style: GaragemUi.textBoldBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
