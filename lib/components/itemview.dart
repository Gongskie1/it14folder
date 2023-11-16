import 'package:flutter/material.dart';
import 'package:week4/components/itemlist.dart';
import '../constant/items.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  ItemList items = ItemList();
  TextEditingController imageController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController soldController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  Widget listTile(Items item) => ListTile(
        leading: Image.asset(item.image),
        title: Text(item.title),
        subtitle: Text(item.price),
      );

  showAddDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: imageController,
                  decoration:
                      const InputDecoration(hintText: 'Input item image'),
                ),
                TextField(
                  controller: titleController,
                  decoration:
                      const InputDecoration(hintText: 'Input item title'),
                ),
                TextField(
                  controller: priceController,
                  decoration:
                      const InputDecoration(hintText: 'Input item price'),
                ),
                TextField(
                  controller: soldController,
                  decoration:
                      const InputDecoration(hintText: 'Input sold items'),
                ),
                TextField(
                  controller: locationController,
                  decoration: const InputDecoration(hintText: 'Input location'),
                ),
                TextField(
                  controller: rateController,
                  decoration: const InputDecoration(hintText: 'Input rate'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('CANCEL')),
                    TextButton(
                        onPressed: () {
                          addItem();
                        },
                        child: const Text('SAVE')),
                  ],
                )
              ],
            ),
          );
        });
  }

  addItem() {
    Items newItem = Items(
      image: imageController.text,
      title: titleController.text,
      rate: rateController.text,
      sold: soldController.text,
      location: locationController.text,
      price: priceController.text,
      liked: false,
    );

    setState(() {
      items.itemList.add(newItem);

      Navigator.pop(context);
      imageController.clear();
      titleController.clear();
      priceController.clear();
      rateController.clear();
      soldController.clear();
      locationController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Items'),
        actions: [
          IconButton(
              onPressed: () {
                showAddDialog(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView(
          children: items.itemList.map((item) {
        return listTile(item);
      }).toList()),
    );
  }
}
