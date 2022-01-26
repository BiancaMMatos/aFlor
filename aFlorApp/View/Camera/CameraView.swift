//
//  MenuCamera.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 17/01/22.
//

import SwiftUI

struct CameraView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    @State var isAnalysisOpen: Bool = false
    
    @State var isPresentedButton: Bool = false
    @ObservedObject var classifyViewModel = ClassifyViewModel()
    
    var body: some View {
    
        NavigationView {
            VStack {
                Image(uiImage: image ?? UIImage(named: "tela_orquidea")!)
                    .resizable()
                    .frame(width: 350, height: 400)
                    .cornerRadius(13)
                    .shadow(radius: 20)
                Button(action: {
                    self.showImagePicker = true
                    self.sourceType = .camera
                }, label: {
                    Text("Tirar Foto")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding(.vertical, 15)
                        .padding(.horizontal, 120)
                        .background(Color("AccentColor"))
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
                    .offset(y: 20)
                Button(action: {
                    saveImage(image:image)
                    isAnalysisOpen.toggle()
                    classifyViewModel.classifyImage(image: image)
                }, label: {
                    Text("Analisar")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding(.vertical, 15)
                        .padding(.horizontal, 125)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
                    .offset(y:25)
                    .sheet(isPresented: $isAnalysisOpen) {
                        ResultView(result: classifyViewModel.resultClassify ?? "erro")
                    }
                Spacer()
            }
        }.sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        
    }
    
}
//
//struct CameraView_Previews: PreviewProvider {
//    static var previews: some View {
//        CameraView()
//    }
//}
