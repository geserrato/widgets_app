import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated'),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Elevated disabled'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.abc_outlined),
                label: const Text('Elevated icon'),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('Filled Button'),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
                label: const Text('FilledButton Icon'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlineButton'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terminal),
                label: const Text('Outline icon'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('Text Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.zoom_out_map),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                ),
              ),
              const CustomButtons(),
              const GradientButton()
            ],
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, colors.primary],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Gradient Button'),
            )),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.blue],
            ),
          ),
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hola mundo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
