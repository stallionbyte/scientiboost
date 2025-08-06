import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sbTxt(txt: "Vérification par une autre méthode :"),

          EspConstants.esp40,

          sbTxt(txt: "Le rapport des activités est :"),

          EspConstants.esp20,

          tex(
            math:
                r"\frac{A(t)}{A_0} = \frac{10^6}{2,5 \times 10^9} = 4 \times 10^{-4}",
            scale: 1.5,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Cela représente une réduction par un facteur :"),

          EspConstants.esp20,

          tex(
            math: r"\frac{A_0}{A(t)} = \frac{2,5 \times 10^9}{10^6} = 2500",
            scale: 1.5,
          ),

          EspConstants.esp40,

          sbTxt(txt: "En termes de périodes radioactives :"),

          EspConstants.esp20,

          tex(math: r"2^n = 2500", scale: 1.5),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow n = \frac{\ln(2500)}{\ln(2)} \approx 11,3",
            scale: 1.5,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Donc il faut environ 11,3 périodes :"),

          EspConstants.esp20,

          tex(math: r"t = 11,3 \times 8,1 = 91,5 \ \text{jours}", scale: 1.5),

          EspConstants.esp40,

          sbTxt(txt: "Ce qui confirme notre résultat de 91,3 jours."),
        ],
      ),
    );
  }
}
