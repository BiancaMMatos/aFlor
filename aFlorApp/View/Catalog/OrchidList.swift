//
//  OrchidList.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import SwiftUI

struct OrchidList: View {
    
    var orchids:[Orchid] {
        @State var data: [Orchid] = modelData.orchids
        return data
    }
    var modelData =  ModelData()
    
    var body: some View {
        GeometryReader { bounds in
            NavigationView {
            List(orchids) { orchid in
                
                NavigationLink {
                    OrchidDetail(orchid: orchid)
                } label: {
                    OrchidRow(orchid: orchid)
                }
                
            }
            .frame(width: bounds.size.width, height: bounds.size.height)
            
            .navigationTitle("Catálogo")
            
            .frame(height: 1300)
            .ignoresSafeArea(.all)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
    }
}

struct OrchidList_Previews: PreviewProvider {
    static var previews: some View {
        OrchidList()
            .environmentObject(ModelData())
    }
}
