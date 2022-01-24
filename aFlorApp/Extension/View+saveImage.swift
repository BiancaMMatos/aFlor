//
//  View+saveImage.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 21/01/22.
//

import SwiftUI

extension View {
    func saveImage(image: UIImage?){
        guard let img = image else { return }
        CacheManager.instance.add(image: img, endereco_memoria: "foto_teste")
    }
}
