//
//  URLImageViewModel.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/09.
//

import SwiftUI

class URLImageViewModel: ObservableObject {
    @Published var getData: Data? = nil
    let url: String
    
    init(url: String, isSync: Bool = false) {
        self.url = url
        if isSync {
            self.downloadImageSync(url: self.url)
        } else {
            self.downloadImageAsync(url: self.url)
        }
    }
    
    private func downloadImageAsync(url: String) {
        guard let imageURL = URL(string: url) else { return }
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.getData = data
            }
        }
    }
    
    private func downloadImageSync(url: String) {
        guard let imageURL = URL(string: url) else { return }
        let data = try? Data(contentsOf: imageURL)
        self.getData = data
    }
}
