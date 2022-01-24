//
//  ButtonRecentsView.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import SwiftUI

struct ResultView: View {
    
    //@StateObject var vm = CacheViewModel()
    //@State private var image: UIImage?
    
    var body: some View {
        NavigationView {
            VStack {
                if let image = CacheManager.instance.get(name: "foto_teste"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .clipped()
                        .cornerRadius(10)
                    Spacer()
                }
            }
            
        }
        
    }
}


struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
