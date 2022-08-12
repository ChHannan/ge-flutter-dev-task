import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffEEF1F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(fontWeight: FontWeight.w600),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.import_export,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
