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
    
    @State var isPresentedButton: Bool = false
    @ObservedObject var classifyViewModel = ClassifyViewModel()
    
    var body: some View {
        GeometryReader { bounds in
            NavigationView {
                VStack {
                    Spacer()
                    Image(uiImage: image ?? UIImage(named: "tela_orquidea")!)
                        .resizable()
                        .frame(width: bounds.size.width * 0.7, height: bounds.size.height * 0.6)
                        .cornerRadius(13)
                        .shadow(radius: 20)
                        .offset(y:-50)
                   
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
                        .offset(y: -20)
                    Button(action: {
                        saveImage(image:image)
                        isAnalysisOpen.toggle()
                        isPresentedButton.toggle()
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
                        .offset(y:-15)
                        .sheet(isPresented: $isAnalysisOpen) {
                            ResultView(result: classifyViewModel.resultClassify ?? "Adicione uma nova imagem.")
                        }
                        
                    Spacer()
                }
                
            }
            .frame(width: bounds.size.width, height: bounds.size.height)
            .navigationViewStyle(StackNavigationViewStyle())

            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        }
    }
}
