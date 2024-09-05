import 'package:flutter/material.dart';

class UiSearchBar extends StatelessWidget {
  const UiSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // search bar
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.2),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18,
                  ),
                  focusColor: Colors.black,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          const SizedBox(width: 10),

          // icon
          const Icon(Icons.tune_outlined)
        ],
      ),
    );
  }
}
