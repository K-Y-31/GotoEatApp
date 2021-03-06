//
//  SearchViewController.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/15.
//

import SwiftUI

struct SearchViewController: UIViewRepresentable {
    @Binding var text: String
    var placeholder: String
    var searchBarStyle = UISearchBar.Style.minimal
    var autocapitalizationType = UITextAutocapitalizationType.none
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchViewController>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = searchBarStyle
        searchBar.autocapitalizationType = autocapitalizationType
        searchBar.placeholder = placeholder
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchViewController>) {
        uiView.text = text
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>){
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
}
