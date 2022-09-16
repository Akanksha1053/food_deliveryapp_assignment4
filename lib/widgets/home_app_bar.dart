import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
      //Row for profile
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://static.remove.bg/remove-bg-web/37843dee2531e43723b012aa78be4b91cc211fef/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: ListTile(
              title: const Text(
                'Deliver to',
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Times Square',
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Colors.green,
                    size: 40,
                  )
                ],
              ),
              // trailing:
            ),
          ),
           CircleAvatar(
            radius: 25,
             backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: Icon(
                Icons.notifications_none_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

