class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
  });
  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/hotel_5.png',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'rawyal, sfax',
      dist: 2.0,
    ),
  ];
}
