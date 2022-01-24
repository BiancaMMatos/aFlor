//
//  ContentView.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 14/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var onBoardingStateFetcher = OnBoardingStateFetcher()
    
    var body: some View{
        if onBoardingStateFetcher.onBoardingState == true {
            TabViewMenu()
        } else {
            TutorialDetail(onBoardingStateFetcher: onBoardingStateFetcher)
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}

