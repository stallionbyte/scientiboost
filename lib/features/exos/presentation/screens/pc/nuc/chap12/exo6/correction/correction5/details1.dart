import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          // Raisonnement complet : Isoler le temps t avec l'activité
          transition(transition: "Activité"),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} A = \frac{A_0}{2^{\frac{t}{T}}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math: r"\begin{array}{l} A = \frac{A_0}{8} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          transition(transition: "Or"),
          EspConstants.esp20,

          tex(math: r"\begin{array}{l} 8 = 2^3 \end{array}", scale: 2.0),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ A = \frac{A_0}{2^3} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A_0}{2^3} = \frac{A_0}{2^{\frac{t}{T}}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          transition(transition: "Simplification"),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{1}{2^3} = \frac{1}{2^{\frac{t}{T}}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 2^3 = 2^{\frac{t}{T}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          transition(transition: "Égalité des exposants"),
          EspConstants.esp80,

          tex(
            math: r"\begin{array}{l} \Rightarrow \ 3 = \frac{t}{T} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math: r"\begin{array}{l} \Rightarrow \ t = 3T \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          TransitionConstants.or,

          tex(
            math: r"\begin{array}{l} \lambda = \frac{ln2}{T} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ T \cdot \lambda = ln2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ T = \frac{ln2}{\lambda} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{3 \cdot ln2}{\lambda} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
