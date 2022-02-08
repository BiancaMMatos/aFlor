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
        GeometryReader { bounds in
                
                ScrollView {
                    VStack {
                        
                        RectangleImage(image: orchid.image)
                            .offset(y: 10)
                            .padding(.bottom, -130)
                            .frame(width: bounds.size.width * 0.6, height: bounds.size.height * 0.2, alignment: .center)
                    VStack(alignment: .leading) {
                        Text(orchid.nome)
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                        
                        Text(orchid.descricao.localized())

                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        Divider()
                        
                        OrchidDetailRow(orchid: orchid)
                    }
                    .offset(y:120)
                    .padding()
                }
                .navigationTitle(orchid.nome)
                .navigationBarTitleDisplayMode(.inline)
                
                Spacer()
            }
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

