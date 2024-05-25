import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../components/autoTxtResize.dart';

class inspection_ extends StatefulWidget {
  const inspection_({Key? key}) : super(key: key);

  @override
  State<inspection_> createState() => _inspection_State();
}

class _inspection_State extends State<inspection_>
    with TickerProviderStateMixin {
  var size, height, width;
  List<String> oldNew = ["ผู้ป่วยใหม่", "ผู้ป่วยเก่า", "ผู้ป่วย"];

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    /*oldNew.add((oldNew.length + 1).toString());*/
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    Color blueBG = Color(0xff057092);
    Color bluetxt = Color(0xff005589);
    Color greyBG = Color(0xfff7f7f7);
    Color greytxt = Color(0xff8a8a8a);
    Color greenBtn = Color(0xff1cc453);
    Color redBtn = Color(0xfff02c0e);
    double f1 = 15;
    double f2 = 18;
    double f3 = 22;
    double f4 = 24;

    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: ClassicHeader(
        idleText: 'เลื่อนลงเพื่อรีเฟรช',
        releaseText: "ปล่อยเพื่อรีเฟรช",
        refreshingText: "กำลังโหลด",
        completeText: "เสร็จสิ้น",
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: oldNew.length,
          itemBuilder: (context, index) {
            return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey, width: 0.1),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () => showDialog(
                    barrierColor: Colors.white.withOpacity(0.95),
                    context: context,
                    builder: (context) => AlertDialog(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: greyBG,
                      content: Container(
                        width: width,
                        height: height * 0.75,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: height * 0.07),
                              child: ScrollConfiguration(
                                behavior: CustomScroll(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width * 0.2,
                                        decoration: BoxDecoration(
                                            color: blueBG,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: AutoSizeText(
                                          'นัดหมาย',
                                          minFontSize: 8,
                                          maxLines: 1,
                                          stepGranularity: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        width: width,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Card(
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              children: [
                                                Text(
                                                  oldNew[index],
                                                  style: TextStyle(
                                                      color: bluetxt,
                                                      fontSize: f3,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                CircleAvatar(
                                                  radius: width * 0.07,
                                                  backgroundImage: AssetImage(
                                                      'images/profileImg.png'),
                                                ),
                                                Container(
                                                  width: width * 0.4,
                                                  child: AuTxtResize(
                                                    label: 'คุณ มารีย์ วัลลภาณที',
                                                    style: TextStyle(
                                                        color: greytxt,
                                                        fontSize: f2,
                                                        height: 2),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: width * 0.02),
                                          width: width,
                                          child: Card(
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10, horizontal: 20),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Container(
                                                          width: width * 0.18,
                                                          child: AuTxtResize(
                                                            label: 'รายละเอียด',
                                                            style: TextStyle(
                                                                color: bluetxt,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: f1,
                                                                height: 1),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: width * 0.12,
                                                            child: AuTxtResize(
                                                              label: 'หัวข้อ :',
                                                              style: TextStyle(
                                                                  color: greytxt,
                                                                  height: 2.5,
                                                                  fontSize: f2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            width: width * 0.42,
                                                            child: AuTxtResize(
                                                              label:
                                                                  '\tการรักษาเบื้องต้น',
                                                              style: TextStyle(
                                                                  color: greytxt,
                                                                  height: 2.5,
                                                                  fontSize: f2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        '''\t\t\t\t\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis convallis ipsum. In hac habitasse platea dictumst. In a finibus purus. In tempus magna non lorem sodales aliquet. Phasellus efficitur ante vel est tristique aliquam. Pellentesque mattis facilisis tempus. Ut eget imperdiet justo. Proin at gravida felis, in rhoncus lorem. Nulla sed viverra nisi. Nam nulla sem, tristique id erat vel, dignissim mattis turpis. Maecenas rhoncus porttitor turpis. Donec nec pharetra est, in posuere urna. Proin dictum, sapien at accumsan mattis, magna libero facilisis tellus, vitae ultricies metus risus sed risus. Proin in vestibulum nunc, vitae efficitur purus. Praesent aliquam vehicula metus, vitae tempor mi varius id.''',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: f1,
                                                            height: 1),
                                                      )
                                                    ]),
                                              ))),
                                      Container(
                                        width: width,
                                        child: Card(
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 30),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: width * 0.26,
                                                  child: AuTxtResize(
                                                    label: 'ข้อมูลการติดต่อ',
                                                    style: TextStyle(
                                                        color: bluetxt,
                                                        fontSize: f1,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: greyBG,
                                                  ),
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 3),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: width * 0.03),
                                                  width: width,
                                                  height: height * 0.05,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            right: width * 0.05),
                                                        child: FaIcon(
                                                          FontAwesomeIcons.line,
                                                          color: greytxt,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            right: width * 0.03),
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          width: width * 0.28,
                                                          child: AuTxtResize(
                                                              label: 'Maree89',
                                                              style: TextStyle(
                                                                  fontSize: f1,
                                                                  color:
                                                                      greytxt)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 2),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: greyBG,
                                                  ),
                                                  height: height * 0.05,
                                                  width: width,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: width * 0.03),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            right: width * 0.03),
                                                        child: Icon(
                                                          Icons.phone_in_talk,
                                                          color: greytxt,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            right: width * 0.03),
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          width: width * 0.28,
                                                          child: AuTxtResize(
                                                            label: '098-9855-423',
                                                            style: TextStyle(
                                                                fontSize: f1,
                                                                color: greytxt),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: ElevatedButton.icon(
                                      icon: Icon(
                                        Icons.check_circle_outline,
                                        color: Color(0xffd0f09b),
                                      ),
                                      label: Container(
                                        width: width * 0.18,
                                        child: AuTxtResize(
                                          label: 'ยอมรับ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: f1,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        splashFactory: NoSplash.splashFactory,
                                        elevation: 0,
                                        backgroundColor: greenBtn,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      onPressed: () => showDialog(
                                        barrierColor:
                                            Colors.white.withOpacity(0.95),
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              side: BorderSide(
                                                  color: greenBtn, width: 3)),
                                          backgroundColor: greyBG,
                                          content: Container(
                                            width: width,
                                            height: height * 0.75,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: height * 0.07),
                                                  child: ScrollConfiguration(
                                                    behavior: CustomScroll(),
                                                    child: SingleChildScrollView(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    width * 0.08,
                                                                child:
                                                                    AuTxtResize(
                                                                  label: 'กด',
                                                                  style: TextStyle(
                                                                      color:
                                                                          greenBtn,
                                                                      fontSize:
                                                                          f3),
                                                                ),
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.2,
                                                                child:
                                                                    AuTxtResize(
                                                                  label:
                                                                      ' ยอมรับ ',
                                                                  style: TextStyle(
                                                                      color:
                                                                          greenBtn,
                                                                      fontSize:
                                                                          f4,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              Container(
                                                                width:
                                                                    width * 0.18,
                                                                child:
                                                                    AuTxtResize(
                                                                  label:
                                                                      'อีกครั้ง',
                                                                  style: TextStyle(
                                                                      color:
                                                                          greenBtn,
                                                                      fontSize:
                                                                          f3),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: width * 0.46,
                                                            child: AuTxtResize(
                                                                label:
                                                                    'เพื่อยืนยันรายการนี้',
                                                                style: TextStyle(
                                                                    color:
                                                                        greenBtn,
                                                                    fontSize: f3,
                                                                    height: 1.2)),
                                                          ),
                                                          Container(
                                                            width: width,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: height *
                                                                        0.01),
                                                            child: Card(
                                                              elevation: 1,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(8),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          width *
                                                                              0.23,
                                                                      child:
                                                                          AuTxtResize(
                                                                        label: oldNew[
                                                                            index],
                                                                        style: TextStyle(
                                                                            color:
                                                                                bluetxt,
                                                                            fontSize:
                                                                                f3,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                    ),
                                                                    CircleAvatar(
                                                                      radius:
                                                                          width *
                                                                              0.07,
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              'images/profileImg.png'),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          width *
                                                                              0.4,
                                                                      child:
                                                                          AuTxtResize(
                                                                        label:
                                                                            'คณ มารีย์ วัลลภาณที',
                                                                        style: TextStyle(
                                                                            color:
                                                                                greytxt,
                                                                            fontSize:
                                                                                f2,
                                                                            height:
                                                                                2),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          width *
                                                                              0.02),
                                                              width: width,
                                                              child: Card(
                                                                  elevation: 1,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                10),
                                                                  ),
                                                                  child: Padding(
                                                                    padding: EdgeInsets.symmetric(
                                                                        vertical:
                                                                            10,
                                                                        horizontal:
                                                                            20),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child:
                                                                                Container(
                                                                              width:
                                                                                  width * 0.18,
                                                                              child:
                                                                                  AuTxtResize(
                                                                                label: 'รายละเอียด',
                                                                                style: TextStyle(color: bluetxt, fontWeight: FontWeight.bold, fontSize: f1, height: 1),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Container(
                                                                                width: width * 0.12,
                                                                                child: AuTxtResize(
                                                                                  label: 'หัวข้อ :',
                                                                                  style: TextStyle(color: greytxt, height: 2.5, fontSize: f2, fontWeight: FontWeight.bold),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: width * 0.42,
                                                                                alignment: Alignment.centerLeft,
                                                                                child: AuTxtResize(
                                                                                  label: '\tการรักษาเบื้องต้น',
                                                                                  style: TextStyle(color: greytxt, height: 2.5, fontSize: f2, fontWeight: FontWeight.bold),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            '''\t\t\t\t\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis convallis ipsum. In hac habitasse platea dictumst. In a finibus purus. In tempus magna non lorem sodales aliquet. Phasellus efficitur ante vel est tristique aliquam. Pellentesque mattis facilisis tempus. Ut eget imperdiet justo. Proin at gravida felis, in rhoncus lorem. Nulla sed viverra nisi. Nam nulla sem, tristique id erat vel, dignissim mattis turpis. Maecenas rhoncus porttitor turpis. Donec nec pharetra est, in posuere urna. Proin dictum, sapien at accumsan mattis, magna libero facilisis tellus, vitae ultricies metus risus sed risus. Proin in vestibulum nunc, vitae efficitur purus. Praesent aliquam vehicula metus, vitae tempor mi varius id.''',
                                                                            style: TextStyle(
                                                                                color: Colors.grey,
                                                                                fontSize: f1,
                                                                                height: 1),
                                                                          )
                                                                        ]),
                                                                  ))),
                                                          Container(
                                                            width: width,
                                                            child: Card(
                                                              elevation: 1,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            15,
                                                                        horizontal:
                                                                            30),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          width *
                                                                              0.26,
                                                                      child:
                                                                          AuTxtResize(
                                                                        label:
                                                                            'ข้อมูลการติดต่อ',
                                                                        style: TextStyle(
                                                                            color:
                                                                                bluetxt,
                                                                            fontSize:
                                                                                f1,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10),
                                                                        color:
                                                                            greyBG,
                                                                      ),
                                                                      margin: EdgeInsets
                                                                          .symmetric(
                                                                              vertical:
                                                                                  3),
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              width *
                                                                                  0.03),
                                                                      width:
                                                                          width,
                                                                      height:
                                                                          height *
                                                                              0.05,
                                                                      child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: width * 0.05),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.line,
                                                                              color:
                                                                                  greytxt,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: width * 0.03),
                                                                            child:
                                                                                Container(
                                                                              alignment:
                                                                                  Alignment.centerLeft,
                                                                              width:
                                                                                  width * 0.28,
                                                                              child:
                                                                                  AuTxtResize(label: 'Maree89', style: TextStyle(fontSize: f1, color: greytxt)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                              top:
                                                                                  2),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10),
                                                                        color:
                                                                            greyBG,
                                                                      ),
                                                                      height:
                                                                          height *
                                                                              0.05,
                                                                      width:
                                                                          width,
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              width *
                                                                                  0.03),
                                                                      child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: width * 0.03),
                                                                            child:
                                                                                Icon(
                                                                              Icons.phone_in_talk,
                                                                              color:
                                                                                  greytxt,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: width * 0.03),
                                                                            child:
                                                                                Container(
                                                                              alignment:
                                                                                  Alignment.centerLeft,
                                                                              width:
                                                                                  width * 0.28,
                                                                              child:
                                                                                  AuTxtResize(
                                                                                label: '098-9855-423',
                                                                                style: TextStyle(fontSize: f1, color: greytxt),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        /*************** Accept confirm ***************/
                                                        Expanded(
                                                            child: ElevatedButton
                                                                .icon(
                                                          icon: Icon(
                                                            Icons
                                                                .check_circle_outline,
                                                            color:
                                                                Color(0xffd0f09b),
                                                          ),
                                                          label: Container(
                                                            width: width * 0.2,
                                                            child: AuTxtResize(
                                                              label: 'ยอมรับ',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      width *
                                                                          0.04,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            splashFactory: NoSplash
                                                                .splashFactory,
                                                            elevation: 0,
                                                            backgroundColor:
                                                                greenBtn,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15)),
                                                          ),
                                                          onPressed: () =>
                                                              showDialog(
                                                            barrierDismissible:
                                                                false,
                                                            barrierColor: Colors
                                                                .white
                                                                .withOpacity(0.9),
                                                            context: context,
                                                            builder: (context) =>
                                                                WillPopScope(
                                                              onWillPop:
                                                                  () async =>
                                                                      false,
                                                              child: AlertDialog(
                                                                elevation: 3,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                20),
                                                                    side: BorderSide(
                                                                        color:
                                                                            greenBtn,
                                                                        width:
                                                                            3)),
                                                                backgroundColor:
                                                                    Colors.white,
                                                                content:
                                                                    Container(
                                                                  width:
                                                                      width * 0.1,
                                                                  height: height *
                                                                      0.23,
                                                                  child: Column(
                                                                    children: [
                                                                      Image.asset(
                                                                        'images/accept.png',
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        width:
                                                                            width *
                                                                                0.1,
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            width *
                                                                                0.4,
                                                                        child:
                                                                            AutoSizeText(
                                                                          'บันทึกข้อมูลสำเร็จ',
                                                                          minFontSize:
                                                                              8,
                                                                          maxLines:
                                                                              1,
                                                                          stepGranularity:
                                                                              1,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: TextStyle(
                                                                              color:
                                                                                  greenBtn,
                                                                              fontSize:
                                                                                  f3,
                                                                              fontWeight:
                                                                                  FontWeight.bold,
                                                                              letterSpacing: 0),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width: width *
                                                                            0.56,
                                                                        child:
                                                                            AuTxtResize(
                                                                          label:
                                                                              'สามารถดูรายการยอมรับคำปรึกษา',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  greytxt,
                                                                              fontSize:
                                                                                  f1),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width: width *
                                                                            0.48,
                                                                        child:
                                                                            AuTxtResize(
                                                                          label:
                                                                              'ได้ที่เมนู "รายการที่ถูกยอมรับ"',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  greytxt,
                                                                              fontSize:
                                                                                  f1,
                                                                              height:
                                                                                  1.3),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            width,
                                                                        margin: EdgeInsets
                                                                            .only(
                                                                                top: 15),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: ElevatedButton(
                                                                            style: ElevatedButton.styleFrom(splashFactory: NoSplash.splashFactory, elevation: 1, backgroundColor: greenBtn, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            onPressed: () => Navigator.of(context)
                                                                              ..pop()
                                                                              ..pop()
                                                                              ..pop(),
                                                                            child: Container(
                                                                              width:
                                                                                  width * 0.15,
                                                                              child:
                                                                                  AuTxtResize(
                                                                                label: 'เสร็จสิ้น',
                                                                                style: TextStyle(color: Colors.white, fontSize: f1, fontWeight: FontWeight.bold),
                                                                              ),
                                                                            )),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                        SizedBox(
                                                          width: width * 0.03,
                                                        ),
                                                        /*************** Back Button ***************/
                                                        Expanded(
                                                          child: ElevatedButton(
                                                            onPressed: () =>
                                                                Navigator.of(
                                                                        context)
                                                                    .pop(),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                              splashFactory: NoSplash
                                                                  .splashFactory,
                                                              elevation: 0,
                                                              backgroundColor:
                                                                  Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  side: BorderSide(
                                                                      color: Colors
                                                                          .grey,
                                                                      width: 2)),
                                                            ),
                                                            child: Container(
                                                              width: width * 0.25,
                                                              child: AutoSizeText(
                                                                'กลับ',
                                                                minFontSize: 8,
                                                                maxLines: 1,
                                                                stepGranularity:
                                                                    1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                    color:
                                                                        greytxt,
                                                                    fontSize:
                                                                        width *
                                                                            0.04,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
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
                                      ),
                                    )),
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Expanded(
                                      child: ElevatedButton.icon(
                                        icon: Icon(
                                          Icons.cancel_outlined,
                                          color: redBtn,
                                        ),
                                        label: Container(
                                          width: width * 0.18,
                                          child: AuTxtResize(
                                            label: 'ปฏิเสธ',
                                            style: TextStyle(
                                                color: redBtn,
                                                fontSize: f1,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        onPressed: () => showDialog(
                                          barrierColor:
                                              Colors.white.withOpacity(0.95),
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            elevation: 3,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide(
                                                    color: redBtn, width: 3)),
                                            backgroundColor: greyBG,
                                            content: Container(
                                              width: width,
                                              height: height * 0.75,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: height * 0.07),
                                                    child: ScrollConfiguration(
                                                      behavior: CustomScroll(),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: width *
                                                                      0.08,
                                                                  child:
                                                                      AuTxtResize(
                                                                    label: 'กด',
                                                                    style: TextStyle(
                                                                        color:
                                                                            redBtn,
                                                                        fontSize:
                                                                            f3),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width:
                                                                      width * 0.2,
                                                                  child:
                                                                      AuTxtResize(
                                                                    label:
                                                                        ' ปฏิเสธ ',
                                                                    style: TextStyle(
                                                                        color:
                                                                            redBtn,
                                                                        fontSize:
                                                                            f4,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: width *
                                                                      0.18,
                                                                  child:
                                                                      AuTxtResize(
                                                                    label:
                                                                        'อีกครั้ง',
                                                                    style: TextStyle(
                                                                        color:
                                                                            redBtn,
                                                                        fontSize:
                                                                            f3),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              width: width * 0.46,
                                                              child: AuTxtResize(
                                                                  label:
                                                                      'เพื่อยกเลิกรายการนี้',
                                                                  style: TextStyle(
                                                                      color:
                                                                          redBtn,
                                                                      fontSize:
                                                                          f3,
                                                                      height:
                                                                          1.2)),
                                                            ),
                                                            Container(
                                                              width: width,
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      top: height *
                                                                          0.01),
                                                              child: Card(
                                                                elevation: 1,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                10)),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(8),
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        width: width *
                                                                            0.23,
                                                                        child:
                                                                            AuTxtResize(
                                                                          label: oldNew[
                                                                              index],
                                                                          style: TextStyle(
                                                                              color:
                                                                                  bluetxt,
                                                                              fontSize:
                                                                                  f3,
                                                                              fontWeight:
                                                                                  FontWeight.bold),
                                                                        ),
                                                                      ),
                                                                      CircleAvatar(
                                                                        radius:
                                                                            width *
                                                                                0.07,
                                                                        backgroundImage:
                                                                            AssetImage(
                                                                                'images/profileImg.png'),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            width *
                                                                                0.4,
                                                                        child:
                                                                            AuTxtResize(
                                                                          label:
                                                                              'คณ มารีย์ วัลลภาณที',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  greytxt,
                                                                              fontSize:
                                                                                  f2,
                                                                              height:
                                                                                  2),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                margin: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            width *
                                                                                0.02),
                                                                width: width,
                                                                child: Card(
                                                                    elevation: 1,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          vertical:
                                                                              10,
                                                                          horizontal:
                                                                              20),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Align(
                                                                              alignment:
                                                                                  Alignment.topCenter,
                                                                              child:
                                                                                  Container(
                                                                                width: width * 0.18,
                                                                                child: AuTxtResize(
                                                                                  label: 'รายละเอียด',
                                                                                  style: TextStyle(color: bluetxt, fontWeight: FontWeight.bold, fontSize: f1, height: 1),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Container(
                                                                                  width: width * 0.12,
                                                                                  child: AuTxtResize(
                                                                                    label: 'หัวข้อ :',
                                                                                    style: TextStyle(color: greytxt, height: 2.5, fontSize: f2, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: width * 0.42,
                                                                                  child: AuTxtResize(
                                                                                    label: 'การรักษาเบื้องต้น',
                                                                                    style: TextStyle(color: greytxt, height: 2.5, fontSize: f2, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Text(
                                                                              '''\t\t\t\t\t\t\t\t\t\t\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis convallis ipsum. In hac habitasse platea dictumst. In a finibus purus. In tempus magna non lorem sodales aliquet. Phasellus efficitur ante vel est tristique aliquam. Pellentesque mattis facilisis tempus. Ut eget imperdiet justo. Proin at gravida felis, in rhoncus lorem. Nulla sed viverra nisi. Nam nulla sem, tristique id erat vel, dignissim mattis turpis. Maecenas rhoncus porttitor turpis. Donec nec pharetra est, in posuere urna. Proin dictum, sapien at accumsan mattis, magna libero facilisis tellus, vitae ultricies metus risus sed risus. Proin in vestibulum nunc, vitae efficitur purus. Praesent aliquam vehicula metus, vitae tempor mi varius id.''',
                                                                              style: TextStyle(
                                                                                  color: Colors.grey,
                                                                                  fontSize: f1,
                                                                                  height: 1),
                                                                            )
                                                                          ]),
                                                                    ))),
                                                            Container(
                                                              width: width,
                                                              child: Card(
                                                                elevation: 1,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              15,
                                                                          horizontal:
                                                                              30),
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        width: width *
                                                                            0.26,
                                                                        child:
                                                                            AuTxtResize(
                                                                          label:
                                                                              'ข้อมูลการติดต่อ',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  bluetxt,
                                                                              fontSize:
                                                                                  f1,
                                                                              fontWeight:
                                                                                  FontWeight.bold),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          color:
                                                                              greyBG,
                                                                        ),
                                                                        margin: EdgeInsets.symmetric(
                                                                            vertical:
                                                                                3),
                                                                        width:
                                                                            width,
                                                                        height:
                                                                            height *
                                                                                0.05,
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                width * 0.03),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding:
                                                                                  EdgeInsets.only(right: width * 0.05),
                                                                              child:
                                                                                  FaIcon(
                                                                                FontAwesomeIcons.line,
                                                                                color: greytxt,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                                  EdgeInsets.only(right: width * 0.03),
                                                                              child:
                                                                                  Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                width: width * 0.28,
                                                                                child: AuTxtResize(label: 'Maree89', style: TextStyle(fontSize: f1, color: greytxt)),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets
                                                                            .only(
                                                                                top: 2),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          color:
                                                                              greyBG,
                                                                        ),
                                                                        height:
                                                                            height *
                                                                                0.05,
                                                                        width:
                                                                            width,
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                width * 0.03),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding:
                                                                                  EdgeInsets.only(right: width * 0.05),
                                                                              child:
                                                                                  Icon(
                                                                                Icons.phone_in_talk,
                                                                                color: greytxt,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding:
                                                                                  EdgeInsets.only(right: width * 0.03),
                                                                              child:
                                                                                  Container(
                                                                                alignment: Alignment.centerLeft,
                                                                                width: width * 0.28,
                                                                                child: AuTxtResize(
                                                                                  label: '098-9855-423',
                                                                                  style: TextStyle(fontSize: f1, color: greytxt),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          /*************** Accept confirm ***************/
                                                          Expanded(
                                                              child:
                                                                  ElevatedButton
                                                                      .icon(
                                                            icon: Icon(
                                                              Icons.cancel,
                                                              color: Colors.white,
                                                            ),
                                                            label: Container(
                                                              width: width * 0.2,
                                                              child: AuTxtResize(
                                                                label: 'ปฏิเสธ',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: f1,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                              splashFactory: NoSplash
                                                                  .splashFactory,
                                                              elevation: 0,
                                                              backgroundColor:
                                                                  redBtn,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15)),
                                                            ),
                                                            onPressed: () =>
                                                                showDialog(
                                                              barrierDismissible:
                                                                  false,
                                                              barrierColor: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.9),
                                                              context: context,
                                                              builder: (context) =>
                                                                  WillPopScope(
                                                                onWillPop:
                                                                    () async =>
                                                                        false,
                                                                child:
                                                                    AlertDialog(
                                                                  elevation: 3,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                      side: BorderSide(
                                                                          color:
                                                                              redBtn,
                                                                          width:
                                                                              3)),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  content:
                                                                      Container(
                                                                    width: width *
                                                                        0.1,
                                                                    height:
                                                                        height *
                                                                            0.23,
                                                                    child: Column(
                                                                      children: [
                                                                        Image
                                                                            .asset(
                                                                          'images/rejected.png',
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          width: width *
                                                                              0.1,
                                                                        ),
                                                                        Container(
                                                                          width: width *
                                                                              0.4,
                                                                          child:
                                                                              AutoSizeText(
                                                                            'ปฏิเสธรายการนี้แล้ว',
                                                                            minFontSize:
                                                                                8,
                                                                            maxLines:
                                                                                1,
                                                                            stepGranularity:
                                                                                1,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: TextStyle(
                                                                                color: redBtn,
                                                                                fontSize: f3,
                                                                                fontWeight: FontWeight.bold,
                                                                                letterSpacing: 0),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width: width *
                                                                              0.56,
                                                                          child:
                                                                              AutoSizeText(
                                                                            'สามารถดูรายการปฏิเสธคำปรึกษา',
                                                                            minFontSize:
                                                                                8,
                                                                            maxLines:
                                                                                1,
                                                                            stepGranularity:
                                                                                1,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: TextStyle(
                                                                                color: greytxt,
                                                                                fontSize: f1),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width: width *
                                                                              0.48,
                                                                          child:
                                                                              AutoSizeText(
                                                                            'ได้ที่เมนู "รายการที่ถูกปฏิเสธ"',
                                                                            minFontSize:
                                                                                8,
                                                                            maxLines:
                                                                                1,
                                                                            stepGranularity:
                                                                                1,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: TextStyle(
                                                                                color: greytxt,
                                                                                fontSize: f1,
                                                                                height: 1.3),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              width,
                                                                          margin: EdgeInsets.only(
                                                                              top:
                                                                                  15),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: ElevatedButton(
                                                                              style: ElevatedButton.styleFrom(splashFactory: NoSplash.splashFactory, elevation: 1, backgroundColor: redBtn, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                              onPressed: () => Navigator.of(context)
                                                                                ..pop()
                                                                                ..pop()
                                                                                ..pop(),
                                                                              child: Container(
                                                                                width: width * 0.15,
                                                                                child: AuTxtResize(
                                                                                  label: 'เสร็จสิ้น',
                                                                                  style: TextStyle(color: Colors.white, fontSize: f1, fontWeight: FontWeight.bold),
                                                                                ),
                                                                              )),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )),
                                                          SizedBox(
                                                            width: width * 0.03,
                                                          ),
                                                          /*************** Back Button ***************/
                                                          Expanded(
                                                            child: ElevatedButton(
                                                              onPressed: () =>
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop(),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                splashFactory:
                                                                    NoSplash
                                                                        .splashFactory,
                                                                elevation: 0,
                                                                backgroundColor:
                                                                    Colors.white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                15),
                                                                    side: BorderSide(
                                                                        color: Colors
                                                                            .grey,
                                                                        width:
                                                                            2)),
                                                              ),
                                                              child: Container(
                                                                width:
                                                                    width * 0.25,
                                                                child:
                                                                    AutoSizeText(
                                                                  'กลับ',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color:
                                                                          greytxt,
                                                                      fontSize:
                                                                          f1,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
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
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          splashFactory: NoSplash.splashFactory,
                                          elevation: 0,
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              side: BorderSide(
                                                  color: redBtn, width: 2)),
                                        ),
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
                  ),
                  child: Container(
                    color: Colors.transparent,
                    width: width,
                    height: height * 0.2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(top: height * 0.01),
                              width: width * 0.15,
                              height: height * 0.018,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff087494)),
                              child: AutoSizeText(
                                'นัดหมาย',
                                minFontSize: 8,
                                maxLines: 1,
                                stepGranularity: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.03),
                                child: CircleAvatar(
                                  radius: width * 0.09,
                                  backgroundImage:
                                      AssetImage('images/profileImg.png'),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: width * 0.18,
                                    child: AutoSizeText(
                                      oldNew[index],
                                      minFontSize: 8,
                                      maxLines: 1,
                                      stepGranularity: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Color(0xff087494),
                                          fontSize: f2,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.56,
                                    child: AutoSizeText(
                                      'คุณ มารีย์ วัลลภาณที',
                                      minFontSize: 8,
                                      maxLines: 1,
                                      stepGranularity: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: f3,
                                          height: 1.2),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.12,
                                          child: AuTxtResize(
                                            label: 'หัวข้อ :',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: f1),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.45,
                                          child: AutoSizeText(
                                            '\tการรักษา',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: f1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.22,
                                        child: AutoSizeText(
                                          'รายละเอียด :',
                                          minFontSize: 8,
                                          maxLines: 1,
                                          stepGranularity: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              height: 1),
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.36,
                                        child: AutoSizeText(
                                          'อยากสอบถามค่ะ ว่าถ้ามีxxxxxx',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: f1,
                                              height: 1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
