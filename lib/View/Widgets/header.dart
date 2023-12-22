import 'package:flutter/material.dart';
import '../../Model/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: DefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            padding: const EdgeInsets.only(
              left: DefaultPadding,
              right: DefaultPadding,
              bottom: 36 + DefaultPadding,
            ),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'PureGlow',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin:
              const EdgeInsets.symmetric(horizontal: DefaultPadding),
              padding:
              const EdgeInsets.symmetric(horizontal: DefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Search...',
                      ),
                      onChanged: (String searchText) {},
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/search.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
