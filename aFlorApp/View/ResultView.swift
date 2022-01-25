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
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationView {
            VStack {
                if let image = CacheManager.instance.get(name: "foto_teste"){

                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 300)
                        .clipped()
                        .cornerRadius(13)
                    
                    Spacer()
                    
                    Text("Isso é ")
                    Spacer()
                    Text("Procure mais sobre ela no Catálogo!")
                    Spacer()
                }
                else {
                    Text("Não há imagem para análise.")
                }
            }
            .toolbar(content: {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Fechar")
                })
            })
        }
        
    }
    
}



struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
