//
//  TutorialView.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 20/01/22.
//

import SwiftUI

struct Tutorial: View {
    
    var onBoardingStateFetcher: OnBoardingStateFetcher
    
    var body: some View {
        
        NavigationView {
            VStack {
                Button(action: {onBoardingStateFetcher.finishOnBoarding()},
                       label: {
                    Text("Continuar")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding(.vertical, 15)
                        .padding(.horizontal, 100)
                        .background(Color("AccentColor"))
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
            }
            .frame(width: 350, height: 30)
            .statusBar(hidden: true)
        }
    }
    
}

