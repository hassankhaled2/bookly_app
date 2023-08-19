import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),

                  color: Colors.greenAccent,

                  image:const DecorationImage(
                      image:AssetImage(AssetsData.testImage,),
                      fit: BoxFit.fill
                  )
              ),
            ),
          ),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width:MediaQuery.of(context).size.width *.5,
                  child:  Text('Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis
                    ,style:Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold
                    ),)),
              const  SizedBox(height:3 ,),
              const Text('J.k.Rowing',style: Styles.textStyle14,),
              const  SizedBox(height:3 ,),
              Row(
                children: [
                  Text('19.99 €',style:Styles.textStyle20,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}