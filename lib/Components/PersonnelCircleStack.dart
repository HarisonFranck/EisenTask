import 'package:eisentask/models/Personnel.dart';
import 'package:flutter/material.dart';

class PersonnelCircleStack extends StatelessWidget {
  PersonnelCircleStack({super.key, this.personnels});

  List<Personnel>? personnels;

  @override
  Widget build(BuildContext context) {
    if (personnels != null && personnels!.isNotEmpty) {
      return Stack(
        children:
            personnels!.map((personnel) {
              return Positioned(
                top: 6,
                left: personnel.id * 30,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(personnel.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
