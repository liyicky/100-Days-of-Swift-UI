//
//  ImagePicker.swift
//  Instafilter
//
//  Created by Jason Cheladyn on 2022/08/12.
//

import SwiftUI
import PhotosUI

struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        let picker = PHPickerViewController(configuration: config)
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {

    }
    
}
