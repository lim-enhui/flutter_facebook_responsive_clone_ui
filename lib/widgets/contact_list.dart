import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

import '../models/models.dart';

class ContactList extends StatelessWidget {
  final List<User> users;

  const ContactList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey.shade600,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final User user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(user: user),
                );
              },
              itemCount: users.length,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
