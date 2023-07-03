import 'package:flutter/material.dart';
import 'package:kkm/model/clothes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kkm/model/selection.dart';
import 'package:kkm/screens/detailclothes.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothListState();
}

class _ClothListState extends State<Clothes> {
  final List<ClothesList> clothesList = <ClothesList>[];
  final List<Selection> selection = <Selection>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 9; i++) {
      clothesList.add(ClothesList(
          "메린",
          false,
          "https://movie-phinf.pstatic.net/20181213_264/1544692854634ss65r_JPEG/movie_image.jpg",
          "2000",
          "메린의 미친 옷",
          1000,
          3000,
          "부산광역시 연제구",
          false,
          false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: makeClothes(context, clothesList),
    );
  }
}

List<Widget> makeClothes(BuildContext context, List<ClothesList> clothes) {
  List<Widget> results = [];
  bool odd = clothes.length % 2 == 1 ? true : false;
  for (var i = 0; i < clothes.length; i = i + 2) {
    results.add(Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DetailClothes()));
            },
            child: SizedBox(
              width: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150.w,
                    height: 190.h,
                    padding: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "images/cat.jpg",
                            )),
                        border: Border.all(width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 16.h,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          clothes[i].userName,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 13.w,
                        color: const Color(0xff8E8E8E),
                      ),
                      Text(
                        clothes[i].location,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff747474)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    clothes[i].clothName,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 31.h,
                        width: 72.w,
                        color: const Color(0xffF5F5F5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "보증금",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                            SizedBox(
                              width: 5.13.w,
                            ),
                            Text(
                              "${clothes[i].deposit}원",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 31.h,
                        width: 72.w,
                        color: const Color(0xffF5F5F5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "대여비",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                            SizedBox(
                              width: 5.13.w,
                            ),
                            Text(
                              "${clothes[i].rentalfee}원",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          odd
              ? //index가 홀수고
              i == clothes.length - 1
                  ? //마지막 index면
                  Text("") //출력 x
                  : InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DetailClothes()));
                      },
                      child: SizedBox(
                        width: 150.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150.w,
                              height: 190.h,
                              padding: EdgeInsets.only(
                                  top: 8.h, left: 8.w, right: 8.w),
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "images/cat.jpg",
                                      )),
                                  border: Border.all(width: 0.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.r))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    size: 16.h,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    clothes[i + 1].userName,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 13.w,
                                  color: const Color(0xff8E8E8E),
                                ),
                                Text(
                                  clothes[i + 1].location,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff747474)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              clothes[i + 1].clothName,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 31.h,
                                  width: 72.w,
                                  color: const Color(0xffF5F5F5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "보증금",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 5.13.w,
                                      ),
                                      Text(
                                        "${clothes[i + 1].deposit}원",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 31.h,
                                  width: 72.w,
                                  color: const Color(0xffF5F5F5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "대여비",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 5.13.w,
                                      ),
                                      Text(
                                        "${clothes[i + 1].rentalfee}원",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
              : InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const DetailClothes()));
                  },
                  child: SizedBox(
                    width: 150.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150.w,
                          height: 190.h,
                          padding:
                              EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "images/cat.jpg",
                                  )),
                              border: Border.all(width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 16.h,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                clothes[i + 1].userName,
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 13.w,
                              color: const Color(0xff8E8E8E),
                            ),
                            Text(
                              clothes[i + 1].location,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff747474)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          clothes[i + 1].clothName,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 31.h,
                              width: 72.w,
                              color: const Color(0xffF5F5F5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "보증금",
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5.13.w,
                                  ),
                                  Text(
                                    "${clothes[i + 1].deposit}원",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 31.h,
                              width: 72.w,
                              color: const Color(0xffF5F5F5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "대여비",
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5.13.w,
                                  ),
                                  Text(
                                    "${clothes[i + 1].rentalfee}원",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
        ],
      ),
    ));
  }
  return results;
}
