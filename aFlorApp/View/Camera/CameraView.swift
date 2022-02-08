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
        
        GeometryReader { bounds in
            VStack {
                
                Image(uiImage: image ?? UIImage(named: "tela_orquidea")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width < 700 ? bounds.size.width - 80 : bounds.size.width * 0.6, height: bounds.size.height * 0.6)
                    .cornerRadius(13)
                    .shadow(radius: 20)
                    .padding(.bottom, 30)
                
                Button(action: {
                    self.showImagePicker = true
                    self.sourceType = .camera
                }, label: {
                    Text("Tirar Foto".localized())
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color("AccentColor"))
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                        .padding(.horizontal, 40)
                })
                    .padding(.bottom, 8)
                
                Button(action: {
                    saveImage(image:image)
                    isAnalysisOpen.toggle()
                    classifyViewModel.classifyImage(image: image)
                }, label: {
                    Text("Analisar".localized())
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color("greenButton"))
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                        .padding(.horizontal, 40)
                })
                    .sheet(isPresented: $isAnalysisOpen) {
                        ResultView(result: classifyViewModel.resultClassify ?? "erro".localized())
                    }
                
                
            }
            .frame(width: bounds.size.width, height: bounds.size.height)
            .navigationViewStyle(StackNavigationViewStyle())
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
            }
        }
        .background(Color("background"))
    }

    
}

