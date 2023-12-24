import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onSearch;

  SearchBar({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10), // Add margin to create space at the top
      child: TextField(
        onSubmitted: onSearch,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Color(0xFF999999),
            fontSize: 14,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
            height: 0.11,
            letterSpacing: -0.15,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF999999),
            size: 16,
          ),
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
