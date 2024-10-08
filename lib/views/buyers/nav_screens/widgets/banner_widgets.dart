
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List  _bannerImagesList = [];

  int pageIndex = 0;

  getBanners(){
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot){
      querySnapshot.docs.forEach((doc){
        setState(() {
          _bannerImagesList.add(doc['image']);
        });
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getBanners();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.yellow.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: PageView.builder(
          itemCount: _bannerImagesList.length,
          itemBuilder: (context,index){
          return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(_bannerImagesList[index],fit: BoxFit.cover,));
      })
      ,
    );
  }
}
