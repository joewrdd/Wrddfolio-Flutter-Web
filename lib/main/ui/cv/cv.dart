import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class Cv extends StatelessWidget {
  const Cv({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GradientText(
            text: ConstantTexts.cvDescription,
            style: GoogleFonts.orbitron(fontSize: 35),
            gradient: LinearGradient(
              colors: [ConstantColors.neonPurple, ConstantColors.secondary],
            ),
          ),
          const SizedBox(height: 75),
          ElevatedButton.icon(
            onPressed: () {
              downloadCv();
            },
            icon: Icon(Icons.file_download),
            label: Text(ConstantTexts.cvText),
            style: ButtonStyle(
              side: WidgetStateProperty.all(
                BorderSide(color: ConstantColors.neonPurple),
              ),
              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.hovered)) {
                  return ConstantColors.neonPurple.withOpacity(0.3);
                }
                return ConstantColors.neonPurple.withOpacity(0.2);
              }),
              foregroundColor: WidgetStateProperty.all(Colors.white),
              minimumSize: WidgetStateProperty.all(Size(150, 50)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.hovered)) {
                  return ConstantColors.primaryDark.withOpacity(0.2);
                }
                return Colors.transparent;
              }),
              elevation: WidgetStateProperty.resolveWith<double>((states) {
                if (states.contains(WidgetState.hovered)) {
                  return 5;
                }
                return 2;
              }),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> downloadCv() async {
  try {
    ByteData data = await rootBundle.load('assets/JoeWardCV.pdf');

    final bytes = data.buffer.asUint8List();
    final base64 = base64Encode(bytes);
    final url = 'data:application/pdf;base64,$base64';

    final fileName = 'JoeWardCV.pdf';

    if (kIsWeb) {
      final anchor =
          html.AnchorElement()
            ..href = url
            ..download = fileName
            ..style.display = 'none';

      html.document.body?.append(anchor);
      anchor.click();
      anchor.remove();
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error downloading CV: $e');
    }
  }
}
