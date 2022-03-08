import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeIllustration extends StatelessWidget {
  const CoffeeIllustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
// background:
      Positioned.fill(
        child: SvgPicture.string(
          '<svg viewBox="35.0 44.8 280.6 275.8" ><path transform="translate(-128.41, -96.13)" d="M 306.2379455566406 141.5947875976562 C 331.4797973632812 136.4018096923828 351.6580200195312 163.0735015869141 374.2833251953125 175.3981781005859 C 397.5091857910156 188.0499725341797 431.4645385742188 190.6896209716797 441.3540954589844 215.1964721679688 C 451.5493774414062 240.4607849121094 429.359375 266.9399108886719 421.7840576171875 293.1071472167969 C 416.2390441894531 312.2611083984375 414.0714111328125 332.341552734375 402.6974182128906 348.7276000976562 C 391.8117980957031 364.4100036621094 374.5447387695312 373.2058715820312 358.7411499023438 383.9302978515625 C 341.7390441894531 395.4680786132812 326.3862609863281 410.1196594238281 306.2379455566406 414.1856079101562 C 284.0783386230469 418.6574401855469 260.2952575683594 417.5913696289062 239.8672027587891 407.9191589355469 C 218.7804870605469 397.9351501464844 203.8556518554688 379.0014953613281 190.9356231689453 359.5927429199219 C 177.4131469726562 339.2789611816406 164.0267791748047 317.49365234375 163.4390716552734 293.1071472167969 C 162.8466033935547 268.5213012695312 170.6204986572266 242.4768218994141 187.6860198974609 224.747802734375 C 203.9932403564453 207.8065338134766 233.4015197753906 213.9261932373047 252.6572265625 200.4201049804688 C 274.7539672851562 184.9213409423828 279.7916259765625 147.0355377197266 306.2379455566406 141.5947875976562" fill="#edc5a1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
          allowDrawingOutsideViewBox: true,
          fit: BoxFit.fill,
        ),
      ),
      Positioned.fill(
        child: Padding(
          padding: EdgeInsets.fromLTRB(-2.0, 72.0, -27.0, -62.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 265.8,
                child: Pinned.fromPins(
                  Pin(start: 2.0, end: 27.0),
                  Pin(size: 265.8, middle: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 74.8, end: 0.0),
                        child:
                            // Adobe XD layer: 'XMLID_11_' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 15.1),
                              Pin(size: 1.0, end: -1.0),
                              child:
                                  // Adobe XD layer: 'XMLID_73_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="0.0 191.0 294.4 1.0" ><path transform="translate(0.0, 190.98)" d="M 0 0 L 294.4344482421875 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 7.5, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'XMLID_10_' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 1.0, end: 57.9),
                                    Pin(size: 144.7, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_3_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="243.2 46.3 1.0 144.7" ><path transform="translate(243.18, 46.3)" d="M 0 144.6802825927734 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 58.3, end: 29.8),
                                    Pin(size: 110.6, start: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_2_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="214.0 0.0 58.3 110.6" ><path transform="translate(-452.95, -319.33)" d="M 707.7217407226562 326.3487548828125 C 718.5184326171875 340.3726501464844 746.5791625976562 429.9447631835938 696.1276245117188 429.9447631835938 C 645.6761474609375 429.9447631835938 673.73681640625 340.3726501464844 684.5335083007812 326.3487854003906 C 688.3056030273438 321.4496765136719 692.7091674804688 319.3290405273438 696.1276245117188 319.3290405273438 C 699.546142578125 319.3290405273438 703.9497680664062 321.44921875 707.7217407226562 326.3487548828125 Z" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 11.2, end: 47.7),
                                    Pin(size: 11.2, middle: 0.319),
                                    child:
                                        // Adobe XD layer: 'XMLID_7_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="243.2 57.3 11.2 11.2" ><path transform="translate(243.18, 57.34)" d="M 0 11.20718860626221 L 11.20718860626221 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 15.2, middle: 0.7945),
                                    Pin(size: 15.2, middle: 0.4519),
                                    child:
                                        // Adobe XD layer: 'XMLID_8_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="227.9 79.4 15.2 15.2" ><path transform="translate(227.93, 79.42)" d="M 15.2460994720459 15.2460994720459 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 43.9, end: 0.0),
                                    Pin(size: 43.9, middle: 0.5697),
                                    child:
                                        // Adobe XD layer: 'XMLID_12_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0x26ffffff),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 43.9, end: 0.0),
                                    Pin(size: 43.9, middle: 0.5697),
                                    child:
                                        // Adobe XD layer: 'XMLID_4_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 40.6, end: 18.3),
                                    Pin(size: 40.6, middle: 0.6792),
                                    child:
                                        // Adobe XD layer: 'XMLID_9_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="243.2 102.1 40.6 40.6" ><path transform="translate(243.18, 102.11)" d="M 0 40.63595199584961 L 40.63595199584961 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 17.4, end: 17.4),
                                    Pin(size: 1.0, middle: 0.6245),
                                    child:
                                        // Adobe XD layer: 'XMLID_14_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="267.3 118.6 17.4 1.0" ><path transform="translate(267.29, 118.64)" d="M 17.38986587524414 0 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 1.0, end: 25.1),
                                    Pin(size: 7.8, middle: 0.5575),
                                    child:
                                        // Adobe XD layer: 'XMLID_15_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="276.0 102.1 1.0 7.8" ><path transform="translate(275.98, 102.11)" d="M 0 7.834980010986328 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 36.5, middle: 0.7781),
                                    Pin(size: 36.5, end: 21.8),
                                    child:
                                        // Adobe XD layer: 'XMLID_16_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="206.7 132.7 36.5 36.5" ><path transform="translate(206.68, 132.7)" d="M 36.49741744995117 36.49741744995117 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 37.6, middle: 0.729),
                                    Pin(size: 51.2, end: 30.2),
                                    child: Transform.rotate(
                                      angle: -0.6463,
                                      child:
                                          // Adobe XD layer: 'XMLID_13_' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          border: Border.all(
                                              width: 6.0,
                                              color: const Color(0x26474747)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 1.0, middle: 0.7474),
                                    Pin(size: 11.8, middle: 0.7774),
                                    child:
                                        // Adobe XD layer: 'XMLID_79_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="225.1 139.3 1.0 11.8" ><path transform="translate(225.06, 139.3)" d="M 0 11.77960109710693 L 0 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 9.0, middle: 0.7052),
                                    Pin(size: 1.0, middle: 0.746),
                                    child:
                                        // Adobe XD layer: 'XMLID_80_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="206.7 141.7 9.0 1.0" ><path transform="translate(206.68, 141.73)" d="M 0 0 L 9.033177375793457 0" fill="none" fill-opacity="0.15" stroke="#474747" stroke-width="6" stroke-opacity="0.15" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 9.9, start: 23.4),
                                    Pin(size: 24.5, end: 1.6),
                                    child:
                                        // Adobe XD layer: 'XMLID_86_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 9.9, middle: 0.4311),
                                    Pin(size: 24.5, end: 1.6),
                                    child:
                                        // Adobe XD layer: 'XMLID_85_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 6.9, start: 29.8),
                                    Pin(size: 52.6, middle: 0.7301),
                                    child:
                                        // Adobe XD layer: 'XMLID_84_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 6.9, middle: 0.4152),
                                    Pin(size: 52.6, middle: 0.7301),
                                    child:
                                        // Adobe XD layer: 'XMLID_83_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 138.9, start: 7.1),
                                    Pin(size: 14.9, middle: 0.6193),
                                    child:
                                        // Adobe XD layer: 'XMLID_89_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0x26ffffff),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 138.9, start: 7.1),
                                    Pin(size: 14.9, middle: 0.6193),
                                    child:
                                        // Adobe XD layer: 'XMLID_82_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 138.9, start: 7.1),
                                    Pin(size: 14.9, middle: 0.7038),
                                    child:
                                        // Adobe XD layer: 'XMLID_88_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0x26ffffff),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 138.9, start: 7.1),
                                    Pin(size: 14.9, middle: 0.7038),
                                    child:
                                        // Adobe XD layer: 'XMLID_81_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 4.0, middle: 0.416),
                                    Pin(size: 4.0, middle: 0.6153),
                                    child:
                                        // Adobe XD layer: 'XMLID_77_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 4.0, middle: 0.416),
                                    Pin(size: 4.0, middle: 0.6919),
                                    child:
                                        // Adobe XD layer: 'XMLID_91_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 4.0, start: 31.3),
                                    Pin(size: 4.0, middle: 0.6153),
                                    child:
                                        // Adobe XD layer: 'XMLID_93_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 4.0, start: 31.3),
                                    Pin(size: 4.0, middle: 0.6919),
                                    child:
                                        // Adobe XD layer: 'XMLID_92_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 157.2, start: 0.0),
                                    Pin(size: 11.2, end: 26.2),
                                    child:
                                        // Adobe XD layer: 'XMLID_87_' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 6.0,
                                            color: const Color(0x26474747)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 124.6, middle: 0.4576),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 27.9, end: 27.9),
                              Pin(size: 16.1, end: 0.0),
                              child:
                                  // Adobe XD layer: 'XMLID_104_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="27.9 249.7 68.9 16.1" ><path transform="translate(-394.11, -462.89)" d="M 421.9970092773438 712.6199340820312 L 423.7574157714844 725.3504638671875 C 424.0206909179688 727.2549438476562 425.8015441894531 728.6777954101562 427.9239501953125 728.6777954101562 L 484.9326171875 728.6777954101562 C 487.0549926757812 728.6777954101562 488.8358764648438 727.2550048828125 489.0991516113281 725.3504638671875 L 490.8595275878906 712.6199340820312 L 421.9970092773438 712.6199340820312 Z" fill="#d6d6d4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 27.9, end: 27.9),
                              Pin(size: 16.1, end: 0.0),
                              child:
                                  // Adobe XD layer: 'XMLID_74_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="27.9 249.7 68.9 16.1" ><path transform="translate(-394.11, -462.89)" d="M 483.7046203613281 728.677490234375 L 487.8542785644531 727.6046752929688 L 490.8595581054688 712.6201171875 L 421.9970092773438 712.6201171875 L 422.6734924316406 717.512939453125 L 479.5131225585938 717.512939453125 C 479.5433654785156 717.512939453125 479.5736389160156 717.512939453125 479.6038818359375 717.512939453125 C 487.7306213378906 717.512939453125 483.7046203613281 728.677490234375 483.7046203613281 728.677490234375 Z" fill="#bababa" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 5.4, end: 5.4),
                              Pin(size: 128.6, end: 16.1),
                              child:
                                  // Adobe XD layer: 'XMLID_103_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="5.4 121.1 113.8 128.6" ><path transform="translate(-366.08, -302.32)" d="M 469.73388671875 547.7422485351562 L 485.2837524414062 423.4259643554688 L 371.52001953125 423.4259643554688 L 387.0698547363281 547.7422485351562 C 387.3780822753906 550.2071533203125 389.5000915527344 552.0493774414062 392.0343322753906 552.0493774414062 L 464.7694396972656 552.0493774414062 C 467.3032836914062 552.0493774414062 469.4252319335938 550.2071533203125 469.73388671875 547.7422485351562 Z" fill="#5eb173" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 5.4, end: 5.4),
                              Pin(size: 128.6, end: 16.1),
                              child:
                                  // Adobe XD layer: 'XMLID_75_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="5.4 121.1 113.8 128.6" ><path transform="translate(-366.08, -302.32)" d="M 469.73388671875 547.7422485351562 L 485.2837524414062 423.4259643554688 L 371.52001953125 423.4259643554688 L 387.0698547363281 547.7422485351562 C 387.3780822753906 550.2071533203125 389.5000915527344 552.0493774414062 392.0343322753906 552.0493774414062 L 464.7694396972656 552.0493774414062 C 467.3032836914062 552.0493774414062 469.4252319335938 550.2071533203125 469.73388671875 547.7422485351562 Z" fill="#c76838" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 48.6, middle: 0.4972),
                              Pin(size: 24.6, end: 37.4),
                              child:
                                  // Adobe XD layer: 'XMLID_30_' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 8.4, middle: 0.4343),
                                    Pin(size: 11.0, middle: 0.5952),
                                    child:
                                        // Adobe XD layer: 'XMLID_134_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="17.5 8.1 8.4 11.0" ><path transform="translate(-466.13, -619.46)" d="M 487.4544067382812 638.5208129882812 C 486.3291625976562 638.5208129882812 485.5041198730469 637.9457397460938 485.20166015625 637.697998046875 C 484.2351989746094 636.90673828125 483.6449890136719 635.5426025390625 483.5827026367188 633.9561767578125 C 483.5049133300781 631.98583984375 484.2103271484375 630.0885009765625 485.4689636230469 628.8804931640625 C 485.8074340820312 628.5562744140625 486.836181640625 627.5679931640625 488.1762390136719 627.5679931640625 C 488.3154602050781 627.5679931640625 488.4551391601562 627.5786743164062 488.5921325683594 627.6004638671875 C 489.4660949707031 627.7392578125 490.2871398925781 628.3316650390625 490.9035339355469 629.268310546875 C 491.8624572753906 630.725341796875 492.2062683105469 632.75 491.7788696289062 634.4267578125 C 491.2847290039062 636.3641357421875 489.6355285644531 638.4576416015625 487.5513916015625 638.51953125 L 487.4544067382812 638.5208129882812 Z M 487.8947143554688 632.403076171875 C 487.5082092285156 633.326416015625 487.5967102050781 633.927734375 487.7074584960938 634.0287475585938 C 487.71728515625 634.03759765625 487.73193359375 634.04736328125 487.7471008300781 634.0562744140625 C 487.7982177734375 633.999755859375 487.8871765136719 633.8743896484375 487.9667663574219 633.6515502929688 C 488.1135864257812 633.241455078125 488.02685546875 632.7384033203125 487.8947143554688 632.403076171875 Z" fill="#60a06c" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 21.1, middle: 0.7267),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_19_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="20.0 0.0 21.1 24.6" ><path transform="translate(-469.3, -609.35)" d="M 495.7984008789062 633.9163818359375 C 495.2077331542969 633.9163818359375 494.6499938964844 633.7513427734375 494.1856994628906 633.4395751953125 C 493.1898193359375 632.7702026367188 493.2637023925781 631.8935546875 493.5385437011719 628.6334228515625 C 493.7124633789062 626.5693359375 493.9752807617188 623.4501953125 494.1963806152344 618.5346069335938 C 494.2074890136719 618.2841796875 494.2225646972656 618.0333862304688 494.2408752441406 617.7843017578125 C 494.21240234375 617.7838745117188 494.1839294433594 617.7833862304688 494.1559143066406 617.7833862304688 C 494.0513916015625 617.7833862304688 493.949951171875 617.787841796875 493.8525390625 617.7967529296875 C 493.4994201660156 617.8296508789062 493.1453857421875 617.8439331054688 492.7913818359375 617.8577270507812 C 492.4070434570312 617.8724365234375 492.043701171875 617.8865966796875 491.6887512207031 617.9266357421875 C 491.5402221679688 617.9435424804688 491.4085388183594 617.9600830078125 491.29248046875 617.9746704101562 C 491.0149536132812 618.0098266601562 490.8143920898438 618.03515625 490.6226806640625 618.03515625 C 490.2241821289062 618.03515625 489.8994750976562 617.9075317382812 489.657958984375 617.6553344726562 C 488.7417602539062 616.700927734375 489.7455749511719 614.7074584960938 490.5181579589844 613.9512939453125 C 491.12255859375 613.35888671875 491.9649658203125 613.0587158203125 493.021728515625 613.0587158203125 C 493.6092529296875 613.0587158203125 494.2825927734375 613.1506958007812 495.0640563964844 613.3385009765625 C 495.5622253417969 611.9249877929688 496.26806640625 610.8966064453125 497.1687316894531 610.2740478515625 C 497.5352172851562 610.02099609375 498.5087890625 609.3480224609375 499.8008117675781 609.3480224609375 C 499.9783020019531 609.3480224609375 500.1575317382812 609.36083984375 500.3323059082031 609.38720703125 C 500.6098937988281 609.4285888671875 501.4540100097656 609.553955078125 502.1438293457031 610.2490844726562 C 502.8243713378906 610.9354248046875 502.9924926757812 611.7835693359375 503.0027160644531 612.4227294921875 C 503.342041015625 612.3052978515625 503.7352294921875 612.2207641601562 504.1693115234375 612.2207641601562 C 504.3289794921875 612.2207641601562 504.4895324707031 612.2327880859375 504.6461486816406 612.2559204101562 C 504.8974304199219 612.293701171875 505.6584167480469 612.4075927734375 506.2833251953125 613.0364990234375 C 507.314697265625 614.0772094726562 507.0465698242188 615.5253295898438 506.9820251464844 615.8051147460938 L 506.8072204589844 616.5647583007812 C 506.9522399902344 616.5029907226562 507.0758972167969 616.4234008789062 507.1781921386719 616.3241577148438 C 507.44677734375 616.0657348632812 507.6073913574219 615.6498413085938 507.6549682617188 615.088623046875 L 507.8106384277344 613.261474609375 L 510.0980224609375 615.400390625 L 510.169677734375 615.5440673828125 C 510.5699462890625 616.3455810546875 510.3004455566406 617.3809204101562 509.3904418945312 618.5386352539062 C 508.7219543457031 619.3912353515625 507.4392395019531 619.8062133789062 505.4693908691406 619.8062133789062 C 504.876953125 619.8062133789062 504.2267150878906 619.7683715820312 503.5279846191406 619.694091796875 C 503.2584533691406 621.8761596679688 503.31494140625 624.2597045898438 503.3153991699219 624.2863159179688 C 503.3389587402344 625.19140625 503.3656616210938 625.9995727539062 503.39013671875 626.720947265625 C 503.5221862792969 630.6655883789062 503.576904296875 632.29833984375 502.304443359375 633.2314453125 C 501.8561401367188 633.5601196289062 501.2872924804688 633.7411499023438 500.702392578125 633.7411499023438 C 500.702392578125 633.7411499023438 500.702392578125 633.7411499023438 500.7019958496094 633.7411499023438 C 500.1669006347656 633.7411499023438 499.6607971191406 633.59130859375 499.2387084960938 633.3074951171875 C 498.7926025390625 633.0082397460938 498.5782470703125 632.6719360351562 498.5025939941406 632.0781860351562 C 498.3078002929688 632.62255859375 498.0102844238281 633.0291137695312 497.5668334960938 633.3533325195312 C 497.0730590820312 633.7166748046875 496.4446105957031 633.9163818359375 495.7984008789062 633.9163818359375 Z M 498.8245544433594 618.7747802734375 C 498.6275329589844 621.0009155273438 498.6782531738281 623.118896484375 498.6787109375 623.142822265625 C 498.705810546875 624.1867065429688 498.7369689941406 625.1185302734375 498.7645263671875 625.9511108398438 C 498.775634765625 626.2935791015625 498.7872314453125 626.6204833984375 498.7965393066406 626.93310546875 C 498.9228515625 625.28662109375 499.0669860839844 623.1370849609375 499.1950378417969 620.2923583984375 C 499.2168273925781 619.8102416992188 499.2510986328125 619.3441162109375 499.2973327636719 618.8984985351562 C 499.1390075683594 618.8575439453125 498.9811096191406 618.816650390625 498.8245544433594 618.7747802734375 Z M 504.5317993164062 616.5589599609375 C 505.046875 616.6675415039062 505.4911804199219 616.7213134765625 505.875 616.7213134765625 C 506.0177612304688 616.7213134765625 506.1507568359375 616.7137451171875 506.2744140625 616.6986083984375 L 505.6966552734375 616.390869140625 C 505.5254211425781 616.2996826171875 505.3519592285156 616.2516479492188 505.1936340332031 616.2516479492188 C 505.1563110351562 616.2516479492188 505.1171569824219 616.2542724609375 505.0771179199219 616.2605590820312 C 505.0352783203125 616.2703247070312 504.7950744628906 616.3357543945312 504.5317993164062 616.5589599609375 Z M 500.2051086425781 615.1259155273438 C 500.4497375488281 614.5797729492188 500.7379760742188 614.1136474609375 501.0679931640625 613.7293701171875 C 501.0395202636719 613.7271728515625 501.0110473632812 613.725830078125 500.9830322265625 613.725830078125 C 500.9283142089844 613.725830078125 500.8709411621094 613.7302856445312 500.8122253417969 613.7396240234375 C 500.8091430664062 613.740966796875 500.3616943359375 613.8375244140625 499.9396362304688 614.2965087890625 C 499.86181640625 614.3809814453125 499.7359313964844 614.553955078125 499.5931701660156 614.8870849609375 C 499.5931701660156 614.8875732421875 500.0445556640625 615.063232421875 500.2051086425781 615.1259155273438 Z" fill="#60a06c" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 9.4, end: 6.0),
                                    Pin(size: 11.0, middle: 0.6741),
                                    child:
                                        // Adobe XD layer: 'XMLID_26_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="33.1 9.1 9.4 11.0" ><path transform="translate(-485.72, -620.76)" d="M 522.2626342773438 640.9063720703125 C 521.2454833984375 640.9063720703125 520.3665771484375 640.58740234375 519.7884521484375 640.0083618164062 C 518.9327392578125 639.1521606445312 518.65380859375 637.6240234375 519.0230102539062 635.815185546875 C 519.4237060546875 633.8519287109375 520.724609375 631.2233276367188 523.0717163085938 630.2777709960938 C 523.2958374023438 630.1875 524.0982666015625 629.89306640625 525.0086669921875 629.89306640625 C 525.8590087890625 629.89306640625 526.5791015625 630.1385498046875 527.1492919921875 630.6224975585938 C 528.2674560546875 631.572998046875 528.455078125 633.1451416015625 528.1446533203125 634.2815551757812 C 527.8271484375 635.44287109375 526.96826171875 636.208740234375 525.998291015625 636.692626953125 C 526.1090087890625 636.8292236328125 526.2103881835938 637.0257568359375 526.2415771484375 637.3029174804688 C 526.3153686523438 637.9562377929688 525.983154296875 639.0543823242188 525.2221069335938 639.8015747070312 C 524.5162963867188 640.4931640625 523.4105834960938 640.9063720703125 522.2626342773438 640.9063720703125 Z M 524.5283203125 633.4226684570312 C 524.4024047851562 633.468505859375 524.2498779296875 633.5574340820312 524.0906372070312 633.67578125 C 524.2632446289062 633.5925903320312 524.4117431640625 633.5049438476562 524.5283203125 633.4226684570312 Z" fill="#60a06c" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 8.4, end: 0.0),
                                    Pin(size: 10.0, middle: 0.709),
                                    child:
                                        // Adobe XD layer: 'XMLID_24_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="40.1 10.3 8.4 10.0" ><path transform="translate(-494.44, -622.22)" d="M 538.1427001953125 642.5575561523438 C 537.098388671875 642.5575561523438 536.1100463867188 642.1821899414062 535.4981079101562 641.5537109375 C 534.653564453125 640.6864624023438 534.3679809570312 639.2240600585938 534.7149047851562 637.54150390625 C 535.1583251953125 635.3892822265625 536.48681640625 633.5675659179688 538.0986328125 632.9008178710938 C 538.6594848632812 632.6691284179688 539.3355102539062 632.5369873046875 539.9542236328125 632.5369873046875 C 540.9620971679688 632.5369873046875 541.7848510742188 632.8665771484375 542.3336791992188 633.4905395507812 C 543.3263549804688 634.619384765625 542.966552734375 636.1734008789062 542.8327026367188 636.62255859375 C 542.5538940429688 637.559326171875 541.9396362304688 638.2713012695312 541.190185546875 638.765869140625 C 541.3196411132812 638.9056396484375 541.445068359375 639.1221313476562 541.4757690429688 639.4454956054688 C 541.5344848632812 640.0744018554688 541.215576171875 641.08984375 540.5088500976562 641.7333984375 C 539.9235229492188 642.2653198242188 539.0833129882812 642.5575561523438 538.1427001953125 642.5575561523438 Z" fill="#60a06c" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 18.0, start: 0.0),
                                    Pin(start: 2.0, end: 0.7),
                                    child:
                                        // Adobe XD layer: 'XMLID_21_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="0.0 2.0 18.0 21.9" ><path transform="translate(-444.34, -611.85)" d="M 455.4906616210938 635.7234497070312 C 454.7848205566406 635.7234497070312 454.0940856933594 635.6220092773438 453.4385070800781 635.4227294921875 C 451.2351684570312 634.7520751953125 449.4574279785156 632.9356689453125 448.4317932128906 630.308837890625 C 447.322998046875 627.4677124023438 447.6556701660156 623.8651123046875 449.2701721191406 620.6262817382812 C 448.6106262207031 620.7548828125 448.0270690917969 621.1111450195312 447.5004577636719 621.4326782226562 C 446.9351806640625 621.7782592773438 446.4468383789062 622.0762329101562 445.8912963867188 622.0762329101562 C 445.5866394042969 622.0762329101562 445.2988891601562 621.9815063476562 445.0586853027344 621.8013916015625 C 444.5489807128906 621.4215698242188 444.2959289550781 620.7055053710938 444.34619140625 619.7870483398438 C 444.403564453125 618.7401123046875 444.8914489746094 617.268798828125 446.078125 616.5696411132812 C 446.5233459472656 616.3071899414062 447.0445861816406 616.1741943359375 447.627197265625 616.1741943359375 C 448.7893981933594 616.1741943359375 450.1161499023438 616.69775390625 451.4993591308594 617.3408203125 C 452.8456420898438 615.84912109375 454.3903198242188 614.7999267578125 455.9990539550781 614.2907104492188 C 456.8939208984375 614.0068969726562 457.7754211425781 613.8570556640625 458.5484313964844 613.8570556640625 C 459.7243957519531 613.8570556640625 460.6236877441406 614.200439453125 461.2223510742188 614.8777465820312 C 462.5473022460938 616.3783569335938 461.9464416503906 619.0963134765625 460.5534362792969 620.6930541992188 C 459.8836059570312 621.4616088867188 458.6253967285156 622.404541015625 456.4366760253906 622.5325927734375 C 456.3174743652344 622.5396728515625 456.2027282714844 622.5428466796875 456.0902099609375 622.5428466796875 C 455.2238159179688 622.5428466796875 454.5250854492188 622.3462524414062 453.7164916992188 622.1181030273438 C 453.5150146484375 622.0611572265625 453.3233337402344 622.0020141601562 453.1396484375 621.9410400390625 C 452.2776794433594 624.9232177734375 452.6730651855469 628.1046142578125 454.1381530761719 629.3228149414062 C 454.5873413085938 629.6964111328125 455.3496704101562 630.0953979492188 456.1418151855469 630.0953979492188 C 456.316162109375 630.0953979492188 456.4856262207031 630.0757446289062 456.6470336914062 630.037109375 C 456.6972961425781 630.0255737304688 457.8746032714844 629.7333374023438 458.1285400390625 628.7930908203125 C 458.2530822753906 628.3309936523438 458.15478515625 627.7857666015625 457.8888244628906 627.4677124023438 C 457.7015991210938 627.2444458007812 457.4338073730469 627.1354370117188 457.19677734375 627.0399169921875 C 456.93212890625 626.9322509765625 456.2289733886719 626.6471557617188 456.2929992675781 625.8946533203125 C 456.3646240234375 625.0429077148438 457.4275817871094 624.655029296875 458.3847351074219 624.655029296875 C 458.6560363769531 624.655029296875 458.9188842773438 624.6870727539062 459.1666259765625 624.7510986328125 C 461.2263488769531 625.28173828125 462.7145385742188 628.1868896484375 462.2292785644531 630.7279052734375 C 461.8214416503906 632.8578491210938 460.2073974609375 634.017333984375 459.6772155761719 634.3980712890625 C 458.4866027832031 635.2533569335938 456.999755859375 635.7234497070312 455.4906616210938 635.7234497070312 L 455.4906616210938 635.7234497070312 Z M 454.6184692382812 618.9121704101562 C 455.1677551269531 619.1982421875 455.4982299804688 619.32763671875 455.8833923339844 619.32763671875 C 455.961669921875 619.32763671875 456.0426330566406 619.322265625 456.1284484863281 619.3121337890625 C 456.8952331542969 619.2186889648438 457.7887573242188 618.7606201171875 458.012939453125 618.0657958984375 C 458.1299133300781 617.7047119140625 458.0894470214844 617.3564453125 458.0293579101562 617.2950439453125 C 458.0124816894531 617.27734375 457.9110717773438 617.2279052734375 457.6766967773438 617.2279052734375 C 457.1580810546875 617.2279052734375 456.4754028320312 617.4627685546875 456.0288391113281 617.6953735351562 L 455.96435546875 617.7301025390625 C 455.4857482910156 617.9906616210938 455.0299072265625 618.3927001953125 454.6184692382812 618.9121704101562 Z" fill="#60a06c" fill-opacity="0.34" stroke="none" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 5.4, end: 5.4),
                              Pin(size: 128.6, end: 16.0),
                              child:
                                  // Adobe XD layer: 'XMLID_72_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="5.4 121.1 113.8 128.6" ><path transform="translate(-366.08, -302.32)" d="M 371.52001953125 423.426025390625 L 372.7431030273438 433.2032775878906 L 467.3721923828125 433.2032775878906 C 470.9881286621094 433.2032775878906 473.7861633300781 436.3726501464844 473.3373718261719 439.9610290527344 L 463.4729309082031 542.2481079101562 C 463.0948791503906 546.1704711914062 460.1518859863281 549.3616943359375 456.2730712890625 550.0559692382812 L 445.133056640625 552.0498046875 L 460.9755859375 552.0604858398438 L 460.9782409667969 552.0498046875 L 464.7694091796875 552.0498046875 C 467.3036804199219 552.0498046875 469.4256591796875 550.2075805664062 469.7343139648438 547.7427368164062 L 485.2842102050781 423.4264221191406 L 371.52001953125 423.4264221191406 Z" fill="#c75538" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 27.9, end: 27.9),
                              Pin(size: 16.1, end: 0.0),
                              child:
                                  // Adobe XD layer: 'XMLID_63_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="27.9 249.7 68.9 16.1" ><path transform="translate(-394.11, -462.89)" d="M 421.9970092773438 712.6199340820312 L 423.7574157714844 725.3504638671875 C 424.0206909179688 727.2549438476562 425.8015441894531 728.6777954101562 427.9239501953125 728.6777954101562 L 484.9326171875 728.6777954101562 C 487.0549926757812 728.6777954101562 488.8358764648438 727.2550048828125 489.0991516113281 725.3504638671875 L 490.8595275878906 712.6199340820312 L 421.9970092773438 712.6199340820312 Z" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 5.4, end: 5.4),
                              Pin(size: 128.6, end: 16.1),
                              child:
                                  // Adobe XD layer: 'XMLID_59_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="5.4 121.1 113.8 128.6" ><path transform="translate(-366.08, -302.32)" d="M 469.73388671875 547.7422485351562 L 485.2837524414062 423.4259643554688 L 371.52001953125 423.4259643554688 L 387.0698547363281 547.7422485351562 C 387.3780822753906 550.2071533203125 389.5000915527344 552.0493774414062 392.0343322753906 552.0493774414062 L 464.7694396972656 552.0493774414062 C 467.3032836914062 552.0493774414062 469.4252319335938 550.2071533203125 469.73388671875 547.7422485351562 Z" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 19.3, middle: 0.4131),
                              child:
                                  // Adobe XD layer: 'XMLID_108_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="0.0 101.8 124.6 19.3" ><path transform="translate(-359.3, -278.26)" d="M 480.944580078125 399.3699340820312 C 441.3911743164062 399.3699340820312 401.8377685546875 399.3699340820312 362.2843627929688 399.3699340820312 C 358.4193725585938 399.4050903320312 358.9512939453125 397.3302001953125 360.29052734375 393.346923828125 C 361.0884399414062 391.0056762695312 361.0884399414062 388.4647216796875 360.29052734375 386.1234741210938 C 358.9512939453125 382.1401977539062 358.4193725585938 380.0653076171875 362.2843627929688 380.1004638671875 C 401.8377685546875 380.1004638671875 441.3911743164062 380.1004638671875 480.944580078125 380.1004638671875 C 484.8096313476562 380.0653076171875 484.2776489257812 382.1401977539062 482.9384765625 386.1234741210938 C 482.1405029296875 388.4647216796875 482.1405029296875 391.0056762695312 482.9384765625 393.346923828125 C 484.2776489257812 397.3302001953125 484.8096313476562 399.4050903320312 480.944580078125 399.3699340820312 Z" fill="#646464" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 18.5, middle: 0.4149),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 1.6, end: 0.0),
                                    Pin(size: 7.2, start: 0.0),
                                    child: SvgPicture.string(
                                      '<svg viewBox="123.0 0.0 1.6 7.2" ><path transform="translate(-512.91, -381.79)" d="M 636.5489501953125 387.0601501464844 C 637.4135131835938 384.4880676269531 637.939697265625 382.7130126953125 637.1649169921875 381.7870178222656 C 636.9981079101562 382.3727722167969 636.7869262695312 383.0185852050781 636.5489501953125 383.7261657714844 C 635.9676513671875 385.431396484375 635.8150634765625 387.2420349121094 636.0806274414062 389.0050964355469 C 636.1793212890625 388.3472900390625 636.3318481445312 387.6961669921875 636.5489501953125 387.0601501464844 Z" fill="#7c7c7c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 1.6, start: 0.0),
                                    Pin(size: 7.2, start: 0.0),
                                    child: SvgPicture.string(
                                      '<svg viewBox="0.0 0.0 1.6 7.2" ><path transform="translate(-359.3, -381.79)" d="M 360.7607727050781 389.004150390625 C 361.0262756347656 387.2415161132812 360.8737182617188 385.4304504394531 360.2924194335938 383.7252197265625 C 360.0544738769531 383.01806640625 359.8432006835938 382.371826171875 359.6764221191406 381.7860717773438 C 358.9016418457031 382.7124938964844 359.4277954101562 384.4875793457031 360.2924194335938 387.0591735839844 C 360.5094604492188 387.6956481933594 360.6615905761719 388.3467407226562 360.7607727050781 389.004150390625 Z" fill="#7c7c7c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 4.1, end: 0.0),
                                    child: SvgPicture.string(
                                      '<svg viewBox="0.0 14.4 124.6 4.1" ><path transform="translate(-359.3, -399.81)" d="M 483.5553894042969 414.2439575195312 C 483.1301879882812 414.7523498535156 482.31494140625 415.005859375 480.945556640625 414.9933776855469 C 441.3921508789062 414.9933776855469 401.8387451171875 414.9933776855469 362.2853088378906 414.9933776855469 C 360.9158935546875 415.005859375 360.1006774902344 414.7523498535156 359.6754455566406 414.2439575195312 C 358.9028930664062 416.9570617675781 359.1065979003906 418.3567504882812 362.2853088378906 418.3278198242188 C 401.8387451171875 418.3278198242188 441.3921508789062 418.3278198242188 480.945556640625 418.3278198242188 C 484.1242370605469 418.3567504882812 484.3279418945312 416.9570617675781 483.5553894042969 414.2439575195312 Z" fill="#7c7c7c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 19.0, middle: 0.4126),
                              child:
                                  // Adobe XD layer: 'XMLID_68_' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 1.6, end: 0.0),
                                    Pin(size: 6.4, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_69_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="123.1 12.6 1.6 6.4" ><path transform="translate(-512.91, -395.83)" d="M 636.5529174804688 409.078369140625 C 636.4803466796875 408.8653259277344 636.4216918945312 408.649169921875 636.3624877929688 408.4330444335938 C 635.7865600585938 410.5287780761719 635.8306274414062 412.7490234375 636.4981689453125 414.8247375488281 C 638.1531372070312 414.1402282714844 637.599853515625 412.192626953125 636.5529174804688 409.078369140625 Z" fill="#646464" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 12.6, start: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_70_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="0.0 0.0 124.6 12.6" ><path transform="translate(-359.3, -380.1)" d="M 360.8818969726562 390.5283813476562 C 361.3435363769531 390.337158203125 363.065673828125 386.0340576171875 365.7276000976562 386.0340576171875 C 405.281005859375 386.0340576171875 438.9425964355469 386.0340576171875 478.4959716796875 386.0340576171875 C 481.7156372070312 386.0340576171875 482.285400390625 392.5107421875 482.7474975585938 392.7019653320312 C 482.7674865722656 392.64013671875 482.9169616699219 386.185302734375 482.9378356933594 386.1239013671875 C 484.2779235839844 382.137451171875 484.8098754882812 380.0626220703125 480.9350891113281 380.101318359375 C 441.4190368652344 380.101806640625 401.9203491210938 380.1022338867188 362.404296875 380.1030883789062 C 358.4081115722656 380.02392578125 358.9373474121094 382.10009765625 360.2903442382812 386.1243286132812 C 360.3116760253906 386.1857299804688 360.8623046875 390.467041015625 360.8818969726562 390.5283813476562 Z" fill="#646464" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 1.6, start: 0.0),
                                    Pin(size: 6.4, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_71_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="0.0 12.6 1.6 6.4" ><path transform="translate(-359.3, -395.83)" d="M 360.3459777832031 414.82470703125 C 361.0131530761719 412.7489929199219 361.0576477050781 410.5287170410156 360.4816589355469 408.4329833984375 C 360.4220275878906 408.649169921875 360.36376953125 408.8652954101562 360.291259765625 409.0783386230469 C 359.243896484375 412.1925964355469 358.6905517578125 414.1402282714844 360.3459777832031 414.82470703125 Z" fill="#646464" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 19.3, middle: 0.4131),
                              child:
                                  // Adobe XD layer: 'XMLID_44_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="0.0 101.8 124.6 19.3" ><path transform="translate(-359.3, -278.26)" d="M 480.944580078125 399.3699340820312 C 441.3911743164062 399.3699340820312 401.8377685546875 399.3699340820312 362.2843627929688 399.3699340820312 C 358.4193725585938 399.4050903320312 358.9512939453125 397.3302001953125 360.29052734375 393.346923828125 C 361.0884399414062 391.0056762695312 361.0884399414062 388.4647216796875 360.29052734375 386.1234741210938 C 358.9512939453125 382.1401977539062 358.4193725585938 380.0653076171875 362.2843627929688 380.1004638671875 C 401.8377685546875 380.1004638671875 441.3911743164062 380.1004638671875 480.944580078125 380.1004638671875 C 484.8096313476562 380.0653076171875 484.2776489257812 382.1401977539062 482.9384765625 386.1234741210938 C 482.1405029296875 388.4647216796875 482.1405029296875 391.0056762695312 482.9384765625 393.346923828125 C 484.2776489257812 397.3302001953125 484.8096313476562 399.4050903320312 480.944580078125 399.3699340820312 Z" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.4, end: 6.4),
                              Pin(size: 14.5, middle: 0.3477),
                              child:
                                  // Adobe XD layer: 'XMLID_106_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="6.4 87.4 111.8 14.5" ><path transform="translate(-367.33, -260.22)" d="M 485.5305480957031 362.0607604980469 L 373.7579650878906 362.0607604980469 L 374.8521118164062 358.1610412597656 C 376.5977783203125 351.9396667480469 382.5434265136719 347.6089782714844 389.3389892578125 347.6089782714844 L 469.9495239257812 347.6089782714844 C 476.7455444335938 347.6089782714844 482.690673828125 351.9396667480469 484.4364013671875 358.1610412597656 L 485.5305480957031 362.0607604980469 Z" fill="#d6d6d4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.4, end: 6.4),
                              Pin(size: 14.5, middle: 0.3477),
                              child:
                                  // Adobe XD layer: 'XMLID_66_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="6.4 87.4 111.8 14.5" ><path transform="translate(-367.33, -260.22)" d="M 485.5305480957031 362.0607604980469 L 373.7579650878906 362.0607604980469 L 374.8521118164062 358.1610412597656 C 376.5977783203125 351.9396667480469 382.5434265136719 347.6089782714844 389.3389892578125 347.6089782714844 L 469.9495239257812 347.6089782714844 C 476.7455444335938 347.6089782714844 482.690673828125 351.9396667480469 484.4364013671875 358.1610412597656 L 485.5305480957031 362.0607604980469 Z" fill="#e9ddcb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.4, end: 8.0),
                              Pin(size: 14.5, middle: 0.3477),
                              child:
                                  // Adobe XD layer: 'XMLID_76_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="6.4 87.4 110.2 14.5" ><path transform="translate(-367.33, -260.22)" d="M 397.213134765625 352.2140808105469 L 473.4827880859375 352.1909790039062 C 478.9978942871094 352.1909790039062 482.3958740234375 356.1631774902344 483.9129638671875 356.6497497558594 C 481.2216796875 352.6081848144531 475.1978149414062 347.6089782714844 469.9495544433594 347.6089782714844 L 389.3390197753906 347.6089782714844 C 382.54345703125 347.6089782714844 376.5978698730469 351.939697265625 374.8521423339844 358.1610412597656 L 373.758056640625 362.0607604980469 L 383.4516906738281 362.0607604980469 C 385.7907104492188 356.9183959960938 391.1639099121094 352.2140808105469 397.213134765625 352.2140808105469 Z" fill="#fdf7ee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.4, end: 6.4),
                              Pin(size: 14.5, middle: 0.3477),
                              child:
                                  // Adobe XD layer: 'XMLID_43_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="6.4 87.4 111.8 14.5" ><path transform="translate(-367.33, -260.22)" d="M 485.5305480957031 362.0607604980469 L 373.7579650878906 362.0607604980469 L 374.8521118164062 358.1610412597656 C 376.5977783203125 351.9396667480469 382.5434265136719 347.6089782714844 389.3389892578125 347.6089782714844 L 469.9495239257812 347.6089782714844 C 476.7455444335938 347.6089782714844 482.690673828125 351.9396667480469 484.4364013671875 358.1610412597656 L 485.5305480957031 362.0607604980469 Z" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 30.5, middle: 0.6978),
                              Pin(size: 8.8, middle: 0.3057),
                              child:
                                  // Adobe XD layer: 'XMLID_107_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="65.7 78.6 30.5 8.8" ><path transform="translate(-441.29, -249.2)" d="M 537.4796752929688 336.583740234375 L 506.9670104980469 336.583740234375 L 506.9670104980469 333.7350158691406 C 506.9670104980469 330.4308471679688 509.6458129882812 327.7520141601562 512.9500122070312 327.7520141601562 L 531.4967041015625 327.7520141601562 C 534.8009033203125 327.7520141601562 537.4796752929688 330.4308471679688 537.4796752929688 333.7350158691406 L 537.4796752929688 336.583740234375 Z" fill="#d6d6d4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 30.5, middle: 0.6978),
                              Pin(size: 8.8, middle: 0.3057),
                              child:
                                  // Adobe XD layer: 'XMLID_67_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="65.7 78.6 30.5 8.8" ><path transform="translate(-441.29, -249.2)" d="M 537.4796752929688 336.583740234375 L 506.9670104980469 336.583740234375 L 506.9670104980469 333.7350158691406 C 506.9670104980469 330.4308471679688 509.6458129882812 327.7520141601562 512.9500122070312 327.7520141601562 L 531.4967041015625 327.7520141601562 C 534.8009033203125 327.7520141601562 537.4796752929688 330.4308471679688 537.4796752929688 333.7350158691406 L 537.4796752929688 336.583740234375 Z" fill="#d6d6d4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 30.5, middle: 0.6978),
                              Pin(size: 8.8, middle: 0.3057),
                              child:
                                  // Adobe XD layer: 'XMLID_78_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="65.7 78.6 30.5 8.8" ><path transform="translate(-441.29, -249.2)" d="M 507.0191955566406 336.4886474609375 C 507.0191955566406 333.3401489257812 509.5712280273438 330.7880859375 512.7197265625 330.7880859375 L 531.830810546875 330.7880859375 C 534.7324829101562 330.7880859375 537.1226806640625 332.9576416015625 537.480224609375 335.7623596191406 L 537.480224609375 333.4535827636719 C 537.480224609375 330.3050842285156 534.927734375 327.7530212402344 531.7797241210938 327.7530212402344 L 512.6685791015625 327.7530212402344 C 509.5201110839844 327.7530212402344 506.9680480957031 330.3050842285156 506.9680480957031 333.4535827636719 L 506.9680480957031 336.5846862792969 L 507.0191955566406 336.5846862792969 L 507.0191955566406 336.4886474609375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 22.7, middle: 0.4049),
                              Pin(size: 42.0, middle: 0.6694),
                              child:
                                  // Adobe XD layer: 'XMLID_32_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="41.3 149.8 22.7 42.0" ><path transform="translate(-410.84, -338.13)" d="M 469.5397033691406 529.947265625 C 464.8149719238281 529.947265625 456.3030395507812 526.6115112304688 453.5552978515625 517.6641845703125 C 450.8782653808594 510.3642883300781 452.022216796875 501.8083190917969 456.5423278808594 495.3285522460938 C 459.82470703125 490.6238403320312 464.3146362304688 487.9249877929688 468.8601379394531 487.9249877929688 C 470.2486572265625 487.9249877929688 471.6310119628906 488.1780700683594 472.9692993164062 488.6770935058594 L 473.03466796875 488.7019958496094 L 473.0960693359375 488.7362365722656 C 474.0416259765625 489.2708435058594 474.5815734863281 489.8966674804688 474.74658203125 490.6509704589844 C 475.0281372070312 491.9363403320312 474.1563720703125 493.1438598632812 473.0520324707031 494.6734313964844 C 470.8375244140625 497.7422790527344 467.8038330078125 501.9453430175781 470.7850646972656 509.7020263671875 C 474.239990234375 518.6925048828125 474.2591247558594 527.2208251953125 472.1153259277344 529.251708984375 C 471.6278991699219 529.7138061523438 470.761474609375 529.947265625 469.5397033691406 529.947265625 Z" fill="#60a06c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 30.5, middle: 0.6978),
                              Pin(size: 8.8, middle: 0.3057),
                              child:
                                  // Adobe XD layer: 'XMLID_42_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="65.7 78.6 30.5 8.8" ><path transform="translate(-441.29, -249.2)" d="M 537.4796752929688 336.583740234375 L 506.9670104980469 336.583740234375 L 506.9670104980469 333.7350158691406 C 506.9670104980469 330.4308471679688 509.6458129882812 327.7520141601562 512.9500122070312 327.7520141601562 L 531.4967041015625 327.7520141601562 C 534.8009033203125 327.7520141601562 537.4796752929688 330.4308471679688 537.4796752929688 333.7350158691406 L 537.4796752929688 336.583740234375 Z" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 22.6, middle: 0.5972),
                              Pin(size: 39.7, middle: 0.6723),
                              child:
                                  // Adobe XD layer: 'XMLID_31_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="60.9 152.0 22.6 39.7" ><path transform="translate(-435.35, -340.9)" d="M 506.2768249511719 532.5931396484375 C 504.5440063476562 532.5931396484375 502.9268188476562 531.9268798828125 501.8389587402344 530.7651977539062 C 500.884033203125 529.744873046875 500.40771484375 528.4306030273438 500.4975280761719 527.0638427734375 C 500.7319641113281 523.5150756835938 499.5212707519531 520.1201782226562 498.3502197265625 516.8373413085938 C 497.2827758789062 513.8445434570312 496.2741088867188 511.0171813964844 496.2669372558594 508.0732727050781 C 496.2411499023438 497.2369995117188 503.5104064941406 493.8025207519531 504.4079284667969 493.4204711914062 C 504.9821472167969 493.0757751464844 505.6368408203125 492.9010009765625 506.3542175292969 492.9010009765625 C 509.24560546875 492.9010009765625 512.7899780273438 495.7457275390625 515.3829345703125 500.1479797363281 C 517.1139526367188 503.0860900878906 522.2402954101562 513.61328125 515.53369140625 525.7135620117188 C 513.110595703125 530.0860595703125 509.7366638183594 532.5931396484375 506.2768249511719 532.5931396484375 L 506.2768249511719 532.5931396484375 Z" fill="#60a06c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 20.9, middle: 0.4108),
                              Pin(size: 40.2, middle: 0.6622),
                              child:
                                  // Adobe XD layer: 'XMLID_33_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="42.6 149.3 20.9 40.2" ><path transform="translate(-412.5, -337.58)" d="M 474.7646484375 487.6217041015625 C 480.0093078613281 490.5864868164062 466.7215576171875 494.2380676269531 472.0613708496094 508.1325073242188 C 475.70751953125 517.6211547851562 475.1738586425781 525.2354736328125 473.6100158691406 526.717041015625 C 472.0462341308594 528.198486328125 459.8472290039062 526.4292602539062 456.5048217773438 515.4911499023438 C 450.9879455566406 500.4959106445312 462.9823913574219 483.2256469726562 474.7646484375 487.6217041015625 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 20.8, middle: 0.5998),
                              Pin(size: 37.9, middle: 0.6651),
                              child:
                                  // Adobe XD layer: 'XMLID_27_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="62.3 151.6 20.8 37.9" ><path transform="translate(-437.01, -340.34)" d="M 506.9249877929688 492.3258056640625 C 506.9249877929688 492.3258056640625 499.2425537109375 495.3551330566406 499.2679138183594 506.1815795898438 C 499.2821350097656 512.234375 503.9535217285156 518.305419921875 503.4963073730469 525.233154296875 C 503.1787414550781 530.0449829101562 511.4189147949219 533.2219848632812 516.8663940429688 523.3927001953125 C 526.4656982421875 506.0730590820312 512.2385864257812 488.9700927734375 506.9249877929688 492.3258056640625 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 46.8, middle: 0.4916),
                              Pin(size: 22.8, end: 39.2),
                              child:
                                  // Adobe XD layer: 'XMLID_102_' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 6.6, middle: 0.4343),
                                    Pin(size: 9.2, middle: 0.5952),
                                    child:
                                        // Adobe XD layer: 'XMLID_39_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="17.5 8.1 6.6 9.2" ><path transform="translate(-467.13, -619.46)" d="M 486.1957397460938 628.6329345703125 C 484.1453857421875 630.6006469726562 484.0484313964844 634.6243896484375 485.8759460449219 636.1201782226562 C 486.0071716308594 636.2273559570312 486.6939086914062 636.7686157226562 487.6358947753906 636.7405395507812 C 489.3233642578125 636.6903686523438 490.6371765136719 634.8485107421875 491.0276794433594 633.3168334960938 C 491.6392211914062 630.9181518554688 490.3471984863281 627.8719482421875 488.5636901855469 627.589111328125 C 487.4642028808594 627.4151611328125 486.4986572265625 628.3421020507812 486.1957397460938 628.6329345703125 Z M 488.9154663085938 633.0610961914062 C 488.8687744140625 633.1922607421875 488.5854797363281 633.9857177734375 487.9877014160156 634.06884765625 C 487.5892028808594 634.1244506835938 487.2618713378906 633.8349609375 487.2196044921875 633.7966918945312 C 486.6805114746094 633.3056640625 486.71435546875 632.1821899414062 487.2676391601562 630.9808959960938 C 487.6105346679688 630.435546875 487.8707275390625 630.3279418945312 488.0517272949219 630.3408203125 C 488.6686401367188 630.3858032226562 489.3264465332031 631.90869140625 488.9154663085938 633.0610961914062 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 7.9, middle: 0.618),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'XMLID_38_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="24.1 0.0 7.9 22.8" ><path transform="translate(-475.37, -609.35)" d="M 499.8634033203125 631.811767578125 C 498.9147338867188 631.1743774414062 499.7233276367188 629.77783203125 500.266357421875 617.6856079101562 C 500.416259765625 614.3497924804688 501.1158447265625 611.320556640625 502.8557739257812 610.117431640625 C 503.2000122070312 609.8795166015625 504.1824951171875 609.1998901367188 505.3829345703125 609.3782348632812 C 505.6373291015625 609.4160766601562 506.2222290039062 609.51123046875 506.6936645507812 609.9866943359375 C 507.528076171875 610.8281860351562 507.2576293945312 612.1046142578125 507.2291870117188 612.2291870117188 C 506.9653930664062 612.088623046875 506.45703125 611.8720092773438 505.84814453125 611.9730224609375 C 505.84814453125 611.9730224609375 505.1209716796875 612.093994140625 504.4671630859375 612.8046875 C 502.7748413085938 614.644287109375 502.970947265625 622.2760009765625 502.970947265625 622.2760009765625 C 503.1337280273438 628.6192016601562 503.4584350585938 630.8408203125 502.222900390625 631.7472534179688 C 501.5779418945312 632.220458984375 500.5732421875 632.2885131835938 499.8634033203125 631.811767578125 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 6.8, middle: 0.7296),
                                    Pin(start: 2.9, end: 0.2),
                                    child:
                                        // Adobe XD layer: 'XMLID_37_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="29.2 2.9 6.8 19.7" ><path transform="translate(-481.75, -612.94)" d="M 511.2964172363281 635.2677612304688 C 510.4744873046875 634.7156982421875 511.1749877929688 633.5059814453125 511.6455688476562 623.0309448242188 C 511.7754211425781 620.1412353515625 512.3816528320312 617.5171508789062 513.888916015625 616.4750366210938 C 514.1874389648438 616.2686767578125 515.0382690429688 615.6802368164062 516.0780639648438 615.8350219726562 C 516.2986450195312 615.867919921875 516.8052368164062 615.9501953125 517.2135620117188 616.362060546875 C 517.9363403320312 617.091064453125 517.701904296875 618.1967163085938 517.6774291992188 618.3048095703125 C 517.4492797851562 618.183349609375 517.0084838867188 617.9952392578125 516.4810180664062 618.0828857421875 C 516.4810180664062 618.0828857421875 515.8512573242188 618.1873779296875 515.2846069335938 618.8033447265625 C 513.8186645507812 620.39697265625 513.9885864257812 627.0075073242188 513.9885864257812 627.0075073242188 C 514.1295776367188 632.5026245117188 514.4110717773438 634.4266357421875 513.340576171875 635.2120971679688 C 512.7819213867188 635.6217651367188 511.9115600585938 635.680419921875 511.2964172363281 635.2677612304688 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 7.6, end: 6.0),
                                    Pin(size: 9.2, middle: 0.6742),
                                    child:
                                        // Adobe XD layer: 'XMLID_36_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="33.1 9.1 7.6 9.2" ><path transform="translate(-486.72, -620.76)" d="M 523.7708740234375 637.2547607421875 C 523.3897094726562 637.3534545898438 522.8212890625 637.3547973632812 522.4481201171875 637.083984375 C 521.5167846679688 636.4078979492188 521.8098754882812 634.0386352539062 523.0027465820312 632.689697265625 C 523.1691284179688 632.5015258789062 524.2254638671875 631.3464965820312 525.1358642578125 631.665771484375 C 525.4107666015625 631.7623901367188 525.7514038085938 632.0203247070312 525.7759399414062 632.3485107421875 C 525.8306274414062 633.083740234375 524.2792358398438 633.952392578125 522.8746948242188 634.0550537109375 C 522.1025390625 634.111572265625 521.4772338867188 633.9287719726562 521.1254272460938 633.7988891601562 C 520.7140502929688 634.37353515625 520.7789916992188 634.7239990234375 520.8265380859375 634.8654174804688 C 521.1134033203125 635.7171630859375 523.0192260742188 635.6456298828125 523.2781372070312 635.633544921875 C 523.4439697265625 635.6255493164062 526.779296875 635.4205322265625 527.3966674804688 633.1593017578125 C 527.6305541992188 632.302734375 527.4887084960938 631.0969848632812 526.6832885742188 630.4129028320312 C 525.5388793945312 629.4411010742188 523.7575073242188 630.1175537109375 523.5142822265625 630.2158203125 C 520.3773803710938 631.4794921875 518.9132080078125 636.8761596679688 520.5281372070312 638.4924926757812 C 521.4683837890625 639.4332275390625 523.6627807617188 639.3064575195312 524.708984375 638.2789916992188 C 525.4215087890625 637.5794067382812 525.5958251953125 636.4679565429688 525.3947143554688 636.3438110351562 C 525.204345703125 636.2260131835938 524.7537841796875 637.0003051757812 523.7708740234375 637.2547607421875 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 6.7, end: 0.0),
                                    Pin(size: 8.2, middle: 0.709),
                                    child:
                                        // Adobe XD layer: 'XMLID_35_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="40.1 10.3 6.7 8.2" ><path transform="translate(-495.44, -622.22)" d="M 539.1875 639.275146484375 C 538.8480834960938 639.36279296875 538.3428344726562 639.3641357421875 538.010986328125 639.12353515625 C 537.1766967773438 638.5177612304688 537.5071411132812 636.4321899414062 538.5042114257812 635.2144775390625 C 538.65771484375 635.0272216796875 539.3969116210938 634.1243286132812 540.0027465820312 634.3272094726562 C 540.297119140625 634.4259033203125 540.5261840820312 634.7750244140625 540.5145874023438 635.0952758789062 C 540.4888305664062 635.8033447265625 539.2870483398438 636.3339233398438 538.3904418945312 636.4291381835938 C 537.7077026367188 636.5016479492188 537.1486206054688 636.3277587890625 536.834228515625 636.2013549804688 C 536.4681396484375 636.7124633789062 536.5260009765625 637.0242309570312 536.5686645507812 637.1500854492188 C 536.7914428710938 637.8123168945312 538.0982055664062 637.8843994140625 538.749755859375 637.833251953125 C 539.9151000976562 637.7420654296875 541.625244140625 637.0509033203125 542.0930786132812 635.4790649414062 C 542.1522216796875 635.28076171875 542.5054321289062 634.0140380859375 541.7791137695312 633.1885375976562 C 540.9994506835938 632.3021240234375 539.448974609375 632.463134765625 538.5523071289062 632.8340454101562 C 535.950439453125 633.909912109375 534.708251953125 638.4620971679688 536.2484741210938 640.0441284179688 C 537.13037109375 640.9501342773438 539.0811767578125 641.0426635742188 540.022705078125 640.1864624023438 C 540.6720581054688 639.5962524414062 540.816162109375 638.5777587890625 540.6329345703125 638.4652709960938 C 540.4625854492188 638.3602905273438 540.0614013671875 639.0487670898438 539.1875 639.275146484375 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 19.3, middle: 0.7267),
                                    Pin(size: 5.0, middle: 0.2082),
                                    child:
                                        // Adobe XD layer: 'XMLID_34_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="20.0 3.7 19.3 5.0" ><path transform="translate(-470.3, -613.98)" d="M 508.6495056152344 618.906982421875 C 508.6023254394531 619.4638671875 508.4422302246094 620.1901245117188 507.9031982421875 620.708251953125 C 504.84228515625 623.6517333984375 494.2382202148438 615.403076171875 491.248046875 618.3296508789062 C 490.6013793945312 618.9630737304688 490.0320434570312 620.3916015625 490.4074401855469 620.782958984375 C 490.5795593261719 620.9622192382812 490.8766784667969 620.8786010742188 491.6959533691406 620.7860717773438 C 492.4191284179688 620.7042236328125 493.1507568359375 620.7224731445312 493.8752746582031 620.6544189453125 C 495.647216796875 620.4876708984375 498.3509521484375 621.5515747070312 501.1632080078125 622.1466674804688 C 501.8712768554688 622.2965087890625 507.460205078125 623.4391479492188 508.7984924316406 621.7325439453125 C 508.967041015625 621.5172729492188 509.8405456542969 620.403564453125 509.4811706542969 619.684814453125 L 509.4811706542969 619.684814453125 C 509.2045593261719 619.4255981445312 508.9269714355469 619.1663208007812 508.6495056152344 618.906982421875 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 16.2, start: 0.0),
                                    Pin(start: 2.0, end: 0.7),
                                    child:
                                        // Adobe XD layer: 'XMLID_25_' (shape)
                                        SvgPicture.string(
                                      '<svg viewBox="0.0 2.0 16.2 20.1" ><path transform="translate(-445.34, -611.85)" d="M 452.5718994140625 617.8973388671875 C 454.4688110351562 618.8175048828125 455.1039428710938 619.4566650390625 456.3475341796875 619.304931640625 C 457.3344116210938 619.1849365234375 458.6065063476562 618.57861328125 458.97119140625 617.448974609375 C 459.11572265625 617.001953125 459.1997680664062 616.2183227539062 458.779052734375 615.7850952148438 C 458.1376953125 615.1241455078125 456.5996704101562 615.562744140625 455.7293090820312 616.016357421875 C 455.7293090820312 616.016357421875 455.6817016601562 616.0416870117188 455.6434326171875 616.0626831054688 C 451.7930908203125 618.1624755859375 450.5686645507812 626.529296875 453.68115234375 629.117431640625 C 454.4617309570312 629.7667236328125 455.7341918945312 630.3084716796875 456.9661865234375 630.01318359375 C 457.1458740234375 629.969970703125 458.7158813476562 629.5545654296875 459.0992431640625 628.1357421875 C 459.2886962890625 627.434326171875 459.1624145507812 626.581298828125 458.6834106445312 626.008056640625 C 458.1123657226562 625.324462890625 457.271728515625 625.3155517578125 457.291748046875 625.0802001953125 C 457.3121948242188 624.8365478515625 458.2395629882812 624.5123291015625 459.0570068359375 624.72314453125 C 460.6376953125 625.1304931640625 461.8723754882812 627.554931640625 461.4676513671875 629.6719970703125 C 461.126953125 631.4537353515625 459.7312622070312 632.455810546875 459.2705078125 632.7862548828125 C 457.6755981445312 633.9310302734375 455.5842895507812 634.222412109375 453.8096923828125 633.6820068359375 C 450.8057250976562 632.7679443359375 449.6248779296875 629.7413330078125 449.3726806640625 629.0955810546875 C 447.190673828125 623.5057373046875 451.2971801757812 615.85888671875 456.3799438476562 614.2489013671875 C 456.7544555664062 614.130126953125 459.5035400390625 613.25927734375 460.66796875 614.5775756835938 C 461.6588745117188 615.69921875 461.1011352539062 617.9515380859375 459.9954833984375 619.2191162109375 C 458.7719116210938 620.6219482421875 456.9564208984375 620.728271484375 456.4969482421875 620.7548828125 C 455.609619140625 620.8070068359375 454.9531860351562 620.6214599609375 454.06494140625 620.37109375 C 451.7966918945312 619.7305908203125 451.6481323242188 619.0216064453125 450.3961181640625 618.8353271484375 C 447.9894409179688 618.476806640625 446.49462890625 620.792236328125 445.703369140625 620.2008056640625 C 445.00244140625 619.6763916015625 445.3226318359375 617.2239990234375 446.641845703125 616.446533203125 C 447.9658813476562 615.6658935546875 450.0918579101562 616.6942138671875 452.5718994140625 617.8973388671875 Z" fill="#f6f9e4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 12.8, middle: 0.75),
                              Pin(size: 49.5, start: 22.8),
                              child:
                                  // Adobe XD layer: 'XMLID_125_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="83.9 22.8 12.8 49.5" ><path transform="translate(-464.02, -179.59)" d="M 560.6995849609375 202.3760070800781 C 557.2503662109375 207.2092590332031 553.4004516601562 208.4359436035156 550.4921875 214.0546569824219 C 549.6893920898438 215.6051025390625 547.3316650390625 220.160400390625 548.0460205078125 225.6185302734375 C 548.9915771484375 232.8433227539062 554.40966796875 234.6921997070312 554.9398193359375 241.1853332519531 C 555.180908203125 244.1376647949219 554.3825073242188 247.6948852539062 551.3817138671875 251.8596801757812" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 15.4, end: 15.5),
                              Pin(size: 49.8, start: 0.0),
                              child:
                                  // Adobe XD layer: 'XMLID_62_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="93.8 0.0 15.4 49.8" ><path transform="translate(-476.37, -151.13)" d="M 584.18701171875 151.1340026855469 C 586.9027709960938 162.39501953125 584.9524536132812 169.3266754150391 582.6303100585938 173.5946350097656 C 578.3944091796875 181.3802490234375 570.6976928710938 184.3877410888672 570.1768798828125 192.2253875732422 C 569.9309692382812 195.9258575439453 571.3951416015625 199.0365295410156 572.5608520507812 200.9730377197266" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 5.3, middle: 0.6453),
                              Pin(size: 11.9, start: 26.7),
                              child:
                                  // Adobe XD layer: 'XMLID_6_' (shape)
                                  SvgPicture.string(
                                '<svg viewBox="77.0 26.7 5.3 11.9" ><path transform="translate(-455.4, -184.45)" d="M 537.7152099609375 211.1340026855469 C 537.7152099609375 211.1340026855469 532.3779907226562 217.3607177734375 532.3779907226562 222.9945373535156" fill="none" stroke="#474747" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
  }
}
