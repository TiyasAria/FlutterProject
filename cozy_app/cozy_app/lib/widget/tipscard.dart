import 'package:cozy_app/utils/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
                'assets/tips1.png',
             width: 80,),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('City Guidelines', style: blackTextStyle.copyWith(fontSize: 18)),
              SizedBox(height: 4),
              Text('Updated 20 Apr', style: greyTextStyle.copyWith(fontSize: 14))
            ]),
            Spacer(),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.chevron_right,
              color: greyColor,),
            )
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Image.asset(
              'assets/tips2.png',
              width: 80,),
            SizedBox(width: 16,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Jakarta Fairship', style: blackTextStyle.copyWith(fontSize: 18)),
              SizedBox(height: 4),
              Text('Updated 11 Dec', style: greyTextStyle.copyWith(fontSize: 14))
            ]),
          ],
        ),
      ],
    );
  }
}
