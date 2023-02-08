import 'package:flutter/material.dart';
import 'package:project3/models/address.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    required this.address,
    Key? key,
  }) : super(key: key);

  final Address address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(address.location, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          address.locationInfo,
          style: const TextStyle(fontSize: 15),
          softWrap: true,
          overflow: TextOverflow.visible,
        ),
        trailing: const Icon(Icons.circle_outlined),
      ),
    );
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    // Text(address.location, style: const TextStyle(fontWeight: FontWeight.bold)),
    //         SizedBox(
    //           width: 200,
    // child: Text(
    //   address.locationInfo,
    //   softWrap: true,
    //   overflow: TextOverflow.visible,
    // ),
    //         ),
    //       ],
    //     ),
    //     const Icon(Icons.circle_outlined),
    //   ],
    // );
  }
}
