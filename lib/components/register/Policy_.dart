import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:popup_card/popup_card.dart';

class policy_ extends StatefulWidget {
  const policy_({Key? key}) : super(key: key);

  @override
  State<policy_> createState() => _policy_State();
}

class _policy_State extends State<policy_> {
  var size, height, width;
  int agree_ = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
            fillColor:
                MaterialStateColor.resolveWith((states) => Color(0xff087494)),
            value: 6,
            groupValue: agree_,
            onChanged: (value) {
              setState(() {
                agree_ = value!;
              });
            }),
        AutoSizeText(
          "ข้าพเจ้าอนุญาตและยอมรับ",
          minFontSize: 8,
          maxLines: 1,
          stepGranularity: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: width * 0.035),
        ),
        Expanded(
          child: PopupItemLauncher(
            tag: 'test',
            child: AutoSizeText(
              "เงื่อนไขและข้อตกลง",
              minFontSize: 8,
              maxLines: 1,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff087494),
                fontSize: width * 0.15,
              ),
            ),
            popUp: PopUpItem(
              padding: EdgeInsets.all(8), // Padding inside of the card
              color: Colors.white, // Color of the card
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)), // Shape of the card
              elevation: 2, // Elevation of the card
              tag: 'test', // MUST BE THE SAME AS IN `PopupItemLauncher`
              child: Container(
                height: 500,
                margin: EdgeInsets.only(bottom: 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('''
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate non arcu ullamcorper condimentum. Etiam quis massa elit. Pellentesque lacinia vitae lorem et egestas. Duis nisl massa, semper at lorem sit amet, bibendum maximus leo. Nam eu quam id dolor maximus sodales eu a tellus. Aliquam in arcu enim. Proin maximus dui eu quam iaculis mattis. Nullam luctus id mi vel lacinia. Donec ullamcorper lobortis rutrum. Sed vehicula odio vel neque vulputate, nec rhoncus nisl commodo. Maecenas et venenatis dolor. Etiam consequat, quam a vehicula euismod, turpis purus vestibulum arcu, in convallis lacus tortor eget libero. Suspendisse tristique augue ut metus tincidunt, non ullamcorper neque dignissim. Mauris ut leo pulvinar, dapibus dolor sed, commodo tellus. Nulla consectetur vehicula quam, id ultrices turpis ultricies sed.

Maecenas ipsum felis, vehicula scelerisque convallis ac, placerat sit amet nunc. Suspendisse vestibulum, nulla eu efficitur rutrum, eros nibh commodo est, sit amet semper velit ex at orci. Nulla porttitor augue sit amet purus euismod, sit amet aliquam tellus maximus. Quisque mollis nunc tortor, vitae egestas mi pellentesque sollicitudin. Aliquam erat volutpat. Quisque nec risus a nibh vulputate pellentesque non id nunc. Suspendisse sollicitudin leo vitae urna pharetra, eu interdum enim imperdiet. Integer id justo vel mi egestas pellentesque sit amet sit amet neque. Nam commodo pellentesque ex vel mattis. Donec sit amet tellus ut magna facilisis egestas. Aliquam viverra volutpat nibh vitae porta.

Proin faucibus quis urna ac sagittis. Aliquam erat volutpat. Sed a convallis enim. Sed velit quam, faucibus non maximus nec, ultricies nec erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec cursus ornare mi sed vestibulum. Nunc bibendum lobortis ex. Cras in eros vulputate, malesuada augue vitae, aliquet nisl.

Nunc fringilla lacinia nulla. In rhoncus mauris ante, non tristique arcu consectetur eu. Suspendisse condimentum mi eget turpis condimentum, ac suscipit ipsum interdum. Pellentesque eget magna purus. Ut pharetra vulputate ultrices. Donec varius sodales velit ut molestie. Nulla elementum ornare dui, tempor tempor tortor pellentesque sit amet. Nam eleifend aliquet vehicula.

Aliquam sit amet urna lectus. Suspendisse tortor purus, aliquet eget mi nec, elementum mattis augue. Sed vulputate auctor nisl, id hendrerit felis faucibus eu. Nunc posuere, nisi vel fermentum dignissim, quam dui porta nisl, ut tempus massa augue finibus diam. Duis rutrum, lectus eu efficitur gravida, tellus ex porttitor lectus, in laoreet mauris turpis eu velit. Sed at ex eros. Donec mattis elementum felis. Sed non tristique lorem. Proin vel egestas libero, faucibus elementum elit. Proin auctor tempor pulvinar. Duis dictum sed justo nec dictum. mauris ante, noncinia nulla. mauris ante, non tristique arcu consectetur eu. Suspendisse condimentum mi eget turpis condimentum, ac suscipit ipsum interdum. Pellentesque eget magna purus. Ut pharetra vulputate ultrices. Donec varius sodales velit ut molestie. Nulla elementum ornare dui, tempor tempor tortor pellentesque sit amet. Nam eleifend aliquet vehicula.
'''),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Color(0xff087494),
                              minimumSize: Size(width, 40)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'ปิด',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ), // Your custom child widget.
            ),
          ),
        ),
      ],
    );
  }
}
