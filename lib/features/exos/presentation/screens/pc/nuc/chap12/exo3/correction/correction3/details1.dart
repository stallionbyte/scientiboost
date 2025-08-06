import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Raisonnement détaillé : Isoler le temps t de A₀/5 = A₀·e^(-ln2/T·t)
          tex(
            math:
                r"\begin{array}{l} A = A_0 \cdot e^{-\frac{\ln 2}{T} t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math: r"\begin{array}{l} A = \frac{A_0}{5} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \frac{A_0}{5} = A_0 \cdot e^{-\frac{\ln 2}{T} t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A_0}{5 \cdot A_0} = \frac{A_0 \cdot e^{-\frac{\ln 2}{T} t}}{A_0} \end{array}",
            scale: 6.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{1}{5} = e^{-\frac{\ln 2}{T} t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{1}{5}\right) = \ln\left(e^{-\frac{\ln 2}{T} t}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{1}{5}\right) = -\frac{\ln 2}{T} t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          transition(transition: "En utilisant la propriété :"),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \ln\left(\frac{1}{a}\right) = -\ln(a) \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{1}{5}\right) = -\ln(5) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ -\ln(5) = -\frac{\ln 2}{T} t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{-\ln(5)}{-\frac{\ln 2}{T}} = t \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln(5) \cdot T}{\ln 2} = t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{\ln(5)}{\ln 2} \cdot T \end{array}",
            scale: 2.0,
          ),
        ],
      ),
    );
  }
}
