import 'package:flutter/material.dart';
import 'package:fikisha/models/ride_model.dart';
import 'package:fikisha/utils/margins.dart';
import 'package:fikisha/views/Home/Components/ride_card.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({Key? key}) : super(key: key);

  @override
  State<RideDetails> createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      width: context.screenWidth(),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: RideData.rideDetails
            .map((rideDetails) => RideCard(
                rideModel: rideDetails,
                onSelected: (model) {
                  setState(() {
                    RideData.rideDetails.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                }))
            .toList(),
      ),
    );
  }
}
