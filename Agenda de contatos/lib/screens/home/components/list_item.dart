import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  Contact contact;

  ListItem({
    super.key,
    required this.contact,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          (widget.contact.isFavorite) ? Icons.star : Icons.star_outline,
          color: Theme.of(context).colorScheme.secondary,
        ),
        iconSize: 24,
        onPressed: () {
          setState(() {
            widget.contact.isFavorite = !widget.contact.isFavorite;
          });
        },
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.contact.photoPath),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.contact.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                widget.contact.phone,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.chevron_right),
        onPressed: () {},
        iconSize: 16,
      ),
    );
  }
}
