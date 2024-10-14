import 'package:flutter/material.dart';
// import 'package:meals_app/screens/tabs.dart';
// import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context)
      //         .pushReplacement(MaterialPageRoute(builder: (ctx) => const TabsScreen()));
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFilterSet = isChecked;
              });
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            subtitle: Text(
              'Only Include gluten-free meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
            title: Text(
              'Lactose-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            subtitle: Text(
              'Only Include lactose-free meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _vegetarianFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegetarianFilterSet = isChecked;
              });
            },
            title: Text(
              'Vegetarian',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            subtitle: Text(
              'Only Include vegetarian meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFilterSet = isChecked;
              });
            },
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            subtitle: Text(
              'Only Include vegan meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
          ),
        ],
      ),
    );
  }
}
