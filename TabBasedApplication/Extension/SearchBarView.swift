//
//  SearchBarView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct SearchBarView: UIViewRepresentable {

    @Binding var searchBarText : String

    class Coordinator : NSObject, UISearchBarDelegate
    {
        @Binding var searchBarValue: String

        init(text:Binding<String>)
        {
            _searchBarValue = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            debugPrint("textDidChange")
            searchBarValue = searchText
        }

    }

    func makeCoordinator() -> Coordinator {
          return Coordinator(text: $searchBarText)
      }

    func makeUIView(context: Context) -> UISearchBar {

        debugPrint("makeUIView")
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.delegate = context.coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: Context) {
        debugPrint("updateUIView")
        uiView.text = searchBarText
    }

    typealias UIViewType = UISearchBar


}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchBarText: .constant("test"))
    }
}
