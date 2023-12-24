import 'package:flutter/material.dart';
import 'package:minicommerce/src/features/search/presentation/search_bar.dart' as searchBar;


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFEFE), // Background color set to black
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: searchBar.SearchBar(
              onSearch: (query) {
                // Implement your search logic or function call
                print('Search query: $query');
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
