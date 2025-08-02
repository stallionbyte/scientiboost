import 'package:scientiboost/core/widgets_builders/builders.dart';

class PhyNucData {
  static const valueCEnMParSTexMath = r"3 \cdot 10^8";
  static final cEnMParS = buildTex2SvgInRichText(
    math: r"\text{c} = " + valueCEnMParSTexMath + r"\ \text{m/s}",
    scale: 1.0,
  );

  static const valueMasseElectronEnU = r"0,000549";
  static final masseElectronEnU = buildTex2SvgInRichText(
    math: r"m_e(\ électron \ ) = " + valueMasseElectronEnU + r" \ \text{u}",
    scale: 1.0,
  );

  static const valueMasseProtonEnU = r"1,007276";
  static final masseProtonEnU = buildTex2SvgInRichText(
    math: r"m_p(\ proton \ ) = " + valueMasseProtonEnU + r" \ \text{u}",
    scale: 1.0,
  );

  static const valueMasseNeutronEnU = r"1,008665";
  static final masseNeutronEnU = buildTex2SvgInRichText(
    math: r"m_n(\ neutron \ ) = " + valueMasseNeutronEnU + r" \ \text{u}",
    scale: 1.0,
  );

  static const valueUEnKgTexMath = r"1,66 \cdot 10^{-27}";
  static final uEnKg = buildTex2SvgInRichText(
    math: r"1 \ \text{u} = " + valueUEnKgTexMath + r" \ \text{kg}",
    scale: 1.0,
  );
}
