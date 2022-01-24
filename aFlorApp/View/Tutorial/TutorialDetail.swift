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
        
            VStack {
                
                Spacer()
                Text("aFlor")
                    .fontWeight(.heavy)
                    .font(.system(size: 35))
                    .frame(width: 100, alignment: .center)
                    .padding(.top, 90)
                
                TutorialRow(tutorial: tutorials[0])
                TutorialRow(tutorial: tutorials[1])
                TutorialRow(tutorial: tutorials[2])

                
                Tutorial(onBoardingStateFetcher: onBoardingStateFetcher)
            }
    }
    
}

//struct TutorialDetail_Previews: PreviewProvider {
//    var onBoardingStateFetcher: OnBoardingStateFetcher
//    static var previews: some View {
//        TutorialDetail(onBoardingStateFetcher: onBoardingStateFetcher)
//    }
//}

