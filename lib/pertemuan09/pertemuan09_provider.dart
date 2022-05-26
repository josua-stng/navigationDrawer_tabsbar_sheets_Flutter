import 'package:flutter/material.dart';

class ButtonSheeds extends StatelessWidget {
  const ButtonSheeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Center(
        child: TextButton(
            onPressed: () {
              showBottomSheet(
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    final theme = Theme.of(context);
                    return Wrap(
                      children: [
                        ListTile(
                          title: Text(
                            'Header',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          tileColor: theme.colorScheme.primary,
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                            color: Colors.white,
                          ),
                        ),
                        ListTile(
                          title: Text('Whatsapp'),
                        ),
                        ListTile(
                          title: Text('Phone Number'),
                        ),
                        ListTile(
                          title: Text('Telegram'),
                        )
                      ],
                    );
                  });
            },
            child: Text('Call Doctor')),
      );
    });
  }
}
