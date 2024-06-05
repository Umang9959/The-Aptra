import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/Custom/normal_text.dart';

class DialogBoxx extends StatelessWidget {
  const DialogBoxx({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BoldText(
            text: "APTRA",
            color: Colors.black,
            size: 18,
            fontStyle: 'Figtree',
          ),
          InkWell(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/close.png",
              width: 29,
              height: 29,
            ),
          ),
        ],
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          BoldText(
              text:
                  "We are delighted to present the APTRA India Conference in Delhi 19-21 March 2024 in partnership with Delhi Duty Free as Platinum Partner.",
              color: Color(0xFFE41E1B),
              size: 16,
              textAlign: TextAlign.left,
              fontStyle: "Figtree"),
          NormalText(
            text:
                "Alongside networking opportunities, the speaker programme will shine the spotlight on this most dynamic and fast-growing market. With experts from Travel Retail, Aviation and the India Consumer Market, the packed programme of valuable insights on the business of Travel Retail in India, includes:\n"
                "• the political and economic dynamics driving the national agenda following the economic liberalisation of the past decade\n"
                "• the unstoppable rise of the aviation industry, airport and airline investments creating the customer base for Travel Retail\n"
                "• navigating the complicated ecosystem of regulations, policies and procedures in a country that has both national and state legislature\n"
                "• a deeper understanding of Indian consumer and cultural references in India 3.0, with presentations and insights from India market experts.",
            color: Color(0xFF333333),
            size: 16,
            textAlign: TextAlign.left,
            fontStyle: "Figtree",
          )
        ],
      ),
    );
  }
}
