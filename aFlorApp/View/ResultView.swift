//
//  ButtonRecentsView.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import SwiftUI
import CoreML

struct ResultView: View {
    
    @State var isPresented: Bool = true
    //@State var classificationLabel: String = ""
    @Environment(\.dismiss) var dismiss
    var result: String
    
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
                        .offset(y:-60)
                    
                    VStack {
                        Text("Aqui estão os resultados:".localized())
                            
                            Text(result)
                                .padding()
                                .font(.body)
                    }
                    .offset(y: -40)
                    
                    Spacer()
                    
                    Text("Procure mais sobre o resultado no Catálogo!".localized())
                    Spacer()
                }
                else {
                    Text("Não há imagem para análise.".localized())
                }
            }
            .toolbar(content: {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Fechar".localized())
                        .fontWeight(.medium)
                })
            })
        }
        .background(Color("modalBackground"))
    }
    
}
