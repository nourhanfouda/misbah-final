import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/5gradient_button.dart';
import 'package:misbah/widgets/8buybackage_widget.dart';
import 'package:misbah/widgets/9criditcard_widget.dart';

class BuyBackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MyAppBar(
        title: 'شراء الباقة',
        image: 'assets/icons/back.png',
        onTap: () {
          Get.back();
        },
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //290
              Container(
                width: double.infinity,
                height: 420 / size.height * size.height,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),

                  //scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 45, left: 30, right: 30),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '5 KD',
                            adNum: '7  إعلانات',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 45, left: 30, right: 30),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '1 KD',
                            adNum: 'إعلانات 1',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 30, right: 30, bottom: 20),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: 'إعلان مميز',
                            price: '1 KD',
                            adNum: '',
                            duration: 'إسبوع في الواجهة الرئيسية',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 30, right: 30, bottom: 20),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '10 KD',
                            adNum: 'إعلان 15',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'اختر طريقة الدفع',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, right: 8),
                    child: GestureDetector(
                      child: CriditCardWidget(
                        image: 'assets/images/visa.png',
                        label: 'فيزا/ماستر',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: GestureDetector(
                      child: CriditCardWidget(
                        image: 'assets/images/knet.png',
                        label: 'كي نت',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16 / size.height * size.height,
              ),
              Center(
                child: SizedBox(
                  width: 240 / size.width * size.width,
                  height: 48 / size.height * size.height,
                  child: GradientButton(
                    label: 'ادفع',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Container(
                              width: 62 / size.width * size.width,
                              height: 62 / size.height * size.height,
                              child:
                                  Image.asset('assets/images/greenicon.png')),
                          content: Text(
                            'تم شراء الباقة والدفع بنجاح',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff013668), fontSize: 26),
                          ),
                          actions: [
                            Container(),
                            Center(
                              child: SizedBox(
                                width: 240 / size.width * size.width,
                                height: 48 / size.height * size.height,
                                child: GradientButton(
                                  label: 'تم',
                                  onTap: () {
                                    Get.back();
                                  },
                                ),
                              ),
                            ),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 166 / size.height * size.height,
              ),
            ],
          )
        ],
      ),
    );
  }
}
