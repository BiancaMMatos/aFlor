//
//  TutorialDetail.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 21/01/22.
//

import SwiftUI

struct TutorialDetail: View {
    
    var onBoardingStateFetcher: OnBoardingStateFetcher
    
    var tutorials:[TutorialModel] {
        @State var data: [TutorialModel] = modelData.tutorials
        return data
    }
    var modelData =  ModelData()
    
    var body: some View {
        
        GeometryReader { bounds in
            VStack {
                    
                    Spacer()
                    Text("aFlor")
                        .fontWeight(.heavy)
                        .font(.system(size: 35))
                        .frame(width: bounds.size.width, height: bounds.size.height * 0.2, alignment: .center)
                        .padding(.top, 90)
                    
                    TutorialRow(tutorial: tutorials[0])
                    TutorialRow(tutorial: tutorials[1])
                    TutorialRow(tutorial: tutorials[2])

                    
                    Tutorial(onBoardingStateFetcher: onBoardingStateFetcher)
                    
            }
            
        }
        .frame(height: 1000)
        .ignoresSafeArea(.all)
    }
    
}

