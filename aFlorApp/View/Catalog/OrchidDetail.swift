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
                        
                        //VStack {
                            Text(orchid.descricao)
                        //}
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
    
    //    var body: some View {
    //
    //        GeometryReader { bounds in
    //            ScrollView {
    //                Spacer()
    //                    RectangleImage(image: orchid.image)
    //                        .frame(width: bounds.size.width * 0.6, height: bounds.size.height * 0.25, alignment: .center)
    //                    .offset(y:10)
    //
    //                VStack {
    //                    Spacer()
    //                    // nome + descrição
    //                    Text(orchid.nome)
    //                        .font(.system(size: 30, weight: .bold, design: .rounded))
    //                        .padding(.bottom, 10)
    //                    Text(orchid.descricao)
    //                        .font(.system(size: 15, weight: .regular, design: .rounded))
    //                        .padding(.leading, 3)
    //                        .font(.subheadline)
    //                        .foregroundColor(.secondary)
    //
    //                    Divider()
    //
    //                    OrchidDetailRow(orchid: orchid)
    //                }
    //                .navigationTitle(orchid.nome)
    //                .navigationBarTitleDisplayMode(.inline)
    //                .navigationViewStyle(StackNavigationViewStyle())
    //
    //            }
    //            .frame(width: bounds.size.width, height: bounds.size.height)
    //
    //
    //        }
    //
    //        GeometryReader { bounds in
    //            ScrollView {
    //
    //                RectangleImage(image: orchid.image)
    //                    .offset(y: 10)
    //                    .padding()
    //                    .frame(width:bounds.size.width * 0.6, height:bounds.size.height * 0.25)
    //
    //
    //                VStack(alignment: .leading) {
    //                    HStack {
    //                        Text(orchid.nome)
    //                            .font(.system(size: 30, weight: .bold, design: .rounded))
    //                    }
    //                    .padding(.bottom, 10)
    //
    //                    HStack {
    //                        Text(orchid.descricao)
    //                            .font(.system(size: 15, weight: .regular, design: .rounded))
    //                            .padding(.leading, 3)
    //                        Spacer()
    //                    }
    //                    .font(.subheadline)
    //                    .foregroundColor(.secondary)
    //
    //                    Divider()
    //
    //                    OrchidDetailRow(orchid: orchid)
    //
    //                }
    //
    //                .frame(width: bounds.size.width, height: bounds.size.height)
    //            }
    //            .navigationTitle(orchid.nome)
    //            .navigationBarTitleDisplayMode(.inline)
    //            //.frame(height: 1400)
    //        }
    //  }
}
struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        OrchidDetail(orchid:modelData.orchids[0])
            .environmentObject(modelData)
    }
}

