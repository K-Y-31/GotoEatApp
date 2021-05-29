//
//  URLImageView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/09.
//

import SwiftUI

struct URLImageView: View {
    @ObservedObject var viewModel: URLImageViewModel
    public var body: some View {
        if let imageData = self.viewModel.getData {
            if let image = UIImage(data: imageData) {
                return Image(uiImage: image).resizable()
            } else {
                return Image(uiImage: UIImage()).resizable()
            }
        } else {
            return Image(uiImage: UIImage()).resizable()
        }
    }
}
