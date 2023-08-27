import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Screen'),
      ),
      body: _BottomsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
          // Navigator.of(context).pop();
        },
      ),
    );
  }
}

class _BottomsView extends StatelessWidget {
  const _BottomsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elvated Button")),
            const ElevatedButton(
                onPressed: null, child: Text("Elvated Disabled")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_outlined),
              label: const Text('Elevated Icons'),
            ),
            FilledButton(onPressed: () {}, child: const Text('data')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('FillIcon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.telegram),
              label: const Text('Telegrama'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person_3),
                label: const Text('Text Icon')),
            IconButton(onPressed: () {}, icon: Icon(Icons.app_registration)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.error),
                iconColor: MaterialStatePropertyAll(Colors.grey),
              ),
            ),
            CustomButton()
            // RichText(
            //   text: TextSpan(
            //     text: 'Hello ',
            //     style: DefaultTextStyle.of(context).style,
            //     children: const <TextSpan>[
            //       TextSpan(
            //           text: 'bold',
            //           style: TextStyle(fontWeight: FontWeight.bold)),
            //       TextSpan(text: ' world!'),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          // splashColor: Colors.grey,
          // highlightColor: Colors.orange,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              'Hola Mundo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
