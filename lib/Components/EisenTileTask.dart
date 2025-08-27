import 'package:eisentask/models/Task.dart';
import 'package:flutter/material.dart';

class EisenTileTask extends StatefulWidget {
  EisenTileTask({
    super.key,
    required this.height,
    required this.width,
    required this.colorTile,
    required this.task,
    required this.icon,
  });
  final double width;
  final double height;
  Color colorTile;
  Task task;
  Icon icon;

  @override
  State<EisenTileTask> createState() => _EisentiletaskState();
}

class _EisentiletaskState extends State<EisenTileTask> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.task.title);
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(2, 2),
              color: Colors.white30,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: widget.colorTile.withOpacity(0.18),
        ),
        child: Row(
          children: [
            Container(width: 40, child: widget.icon),
            Container(
              width: 100,

              child: Column(
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    widget.task.description,
                    style: TextStyle(color: Colors.black45, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
