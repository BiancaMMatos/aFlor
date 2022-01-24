//
//  RectangleImage.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(height:250)
            .clipShape(RoundedRectangle(cornerRadius: 9))
            .shadow(radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("orquidea-oncidium"))
    }
}
