//
//  TelaRecentes.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 17/01/22.
//

import SwiftUI

struct RecentsView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var image: UIImage?
    @State private var isAnalysisOpen: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: image ?? UIImage(named: "Logo_01")!)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(13)
                    .shadow(radius: 20)
                
                Button(action: {
                    self.showImagePicker = true
                    self.sourceType = .photoLibrary
                    
                    
                }, label: {
                    Text("Fotos Recentes")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding(.vertical, 15)
                        .padding(.horizontal, 93)
                        .background(Color("AccentColor"))
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
                    .offset(y: 20)
                Button(action: {
                    saveImage(image:image)
                    isAnalysisOpen.toggle()
                }, label: {
                    Text("Analisar")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding(.vertical, 15)
                        .padding(.horizontal, 125)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
                    .sheet(isPresented: $isAnalysisOpen) {
                        ResultView()
                    }
                    .offset(y:25)
                Spacer()
            }
            
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
    }
}

struct RecentsView_Previews: PreviewProvider {
    static var previews: some View {
        RecentsView()
    }
}
