import 'package:flutter/material.dart';
import 'package:standard_searchbar/new/standard_icons.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

class SearchBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right:20, bottom: 10),
      child: StandardSearchAnchor(
              searchBar: StandardSearchBar(
                height: 50,
                borderRadius: 10,
                leading: StandardIcons(icons: [ Icon(Icons.search)],),
                bgColor: Colors.green.shade100,
              ),
              suggestions: StandardSuggestions(
                suggestions: [
                  StandardSuggestion(text: 'Aloe vera'),
                  StandardSuggestion(text: 'Snake plant'),
                  StandardSuggestion(text: 'Rubber plant'),
                ],
              )),
    );
  }
}
