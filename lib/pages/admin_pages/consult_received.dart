import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:s_pro/pages/admin_pages/consult_success.dart';
import '../../components/autoTxtResize.dart';
import 'consult_appointment.dart';
import 'consult_inspection.dart';

class connsult_received extends StatefulWidget {
  const connsult_received({Key? key}) : super(key: key);

  @override
  State<connsult_received> createState() => _connsult_receivedState();
}

class _connsult_receivedState extends State<connsult_received>
    with TickerProviderStateMixin {
  var size, height, width;
  List<String> oldNew = ["ผู้ป่วยใหม่", "ผู้ป่วยเก่า", "ผู้ป่วย"];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    TabController tabCtrl = TabController(length: 3, vsync: this);
    Color blueBG = Color(0xff057092);
    Color bluetxt = Color(0xff005589);
    Color greyBG = Color(0xfff7f7f7);
    Color greytxt = Color(0xff8a8a8a);
    Color greenBtn = Color(0xff1cc453);
    Color redBtn = Color(0xfff02c0e);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: 20, top: height * 0.07, right: 20, bottom: 10),
        width: width,
        height: height,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: () => Navigator.of(context).pop(),
                  child: Image.asset('images/left-arrow.png',
                      fit: BoxFit.cover, width: width * 0.08),
                )),
            Column(
              children: [
                SizedBox(height: height * 0.08),
                Container(
                  width: width,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: bluetxt, width: 3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Container(
                          width: width * 0.2,
                          child: Image.asset(
                            'images/admin_stethoscope.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.2,
                            child: AuTxtResize(
                              label: 'รายการ',
                              style: TextStyle(
                                  color: bluetxt,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: width * 0.43,
                            child: AuTxtResize(
                              label: 'ปรึกษาแพทย์',
                              style: TextStyle(
                                  color: bluetxt,
                                  fontSize: 37,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                    child: DefaultTabController(
                  length: 3,
                  child: SegmentedTabControl(
                      barDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      controller: tabCtrl,
                      tabTextColor: Colors.black45,
                      selectedTabTextColor: Colors.white,
                      squeezeIntensity: 2,
                      height: 45,
                      tabPadding: const EdgeInsets.symmetric(horizontal: 8),
                      tabs: [
                        SegmentTab(
                            color: blueBG,
                            splashColor: Colors.transparent,
                            label: 'รอตรวจ'),
                        SegmentTab(
                          color: Color(0xffffc45c),
                          splashColor: Colors.transparent,
                          label: 'นัดหมาย',
                        ),
                        SegmentTab(
                            color: Color(0xff40b44c),
                            splashColor: Colors.transparent,
                            label: 'เสร็จสิ้น'),
                      ]),
                )),
                Expanded(
                    child: TabBarView(
                  controller: tabCtrl,
                  children: [
                    inspection_(),
                    appointment_(),
                    success_(),
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
