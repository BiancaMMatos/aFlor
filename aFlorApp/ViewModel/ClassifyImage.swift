//
//  ClassifyImage.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 26/01/22.
//

import Foundation
import UIKit

class ClassifyViewModel: ObservableObject {
    @Published var resultClassify: String?
    @Published var isLoading: Bool
    @Published var errorMessage: String?
    
    let model = OrchidSpeciesClassifier_1()

    
    init(){
        self.isLoading = false
    }
    
    func classifyImage(image: UIImage?) {

        guard let currentImageName = image else { return }
        
          guard let resizedImage = currentImageName.resizeImageTo(size: CGSize(width: 224, height: 224)),
              let buffer = resizedImage.convertToBuffer() else {
                  return
              }

        let output = try? model.prediction(image: buffer)

        if let output = output {

            let results = output.classLabelProbs.sorted { $0.1 > $1.1 }


            let result = results.map { (key, value) in
                return "\(key) = \(String(format: "%.2f", value * 100))%"
            }.joined(separator: "\n")


            self.resultClassify = result
        }

    }
}
