//
//  OrchidDetail.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import SwiftUI

struct OrchidDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var orchid: Orchid
    
    var body: some View {
        ScrollView {
            RectangleImage(image: orchid.image)
                .offset(y: -10)
                .padding()
                .frame(height:300)
                
            
            
            
            VStack(alignment: .leading) {
                HStack {
                    Text(orchid.nome)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                }
                .padding(.bottom, 10)
                
                HStack {
                    Text(orchid.descricao)
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .padding(.leading, 3)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                OrchidDetailRow(orchid: orchid)
                
            }
            .navigationTitle(orchid.nome)
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}
struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        OrchidDetail(orchid:modelData.orchids[0])
            .environmentObject(modelData)
    }
}

