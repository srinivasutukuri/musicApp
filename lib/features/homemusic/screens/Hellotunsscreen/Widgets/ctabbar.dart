import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/common/cards/hellotunescard/Hellotunescard.dart';
import 'package:sample/common/shapes/containers/circularcontainer.dart';
import 'package:sample/features/homemusic/controllers/hellotunesprovider/hellotunesprovider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Ctabbar extends StatefulWidget {
  const Ctabbar({super.key});

  @override
  State<Ctabbar> createState() => _CtabbarState();
}

class _CtabbarState extends State<Ctabbar> {
  final ItemScrollController hellotunecardController = ItemScrollController();
  final ItemPositionsListener hellotunesListener =
      ItemPositionsListener.create();
  final ItemScrollController lablecontoller = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Consumer<ColorIndexProvider>(
            builder: (context, provider, child) {
              return ScrollablePositionedList.builder(
                itemScrollController: lablecontoller,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      provider.setColorIndex(index);
                      hellotunecardController.scrollTo(
                        index: index,
                        duration: Duration(seconds: 2),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text('Lable $index'),
                          CCircularContainer(
                            height: 5,
                            width: 20,
                            color: provider.colorIndex == index
                                ? Colors.red
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        SizedBox(
          height: 350,
          child: ScrollablePositionedList.builder(
            itemPositionsListener: hellotunesListener,
            itemScrollController: hellotunecardController,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Hellotunescard();
            },
          ),
        ),
      ],
    );
  }
}
