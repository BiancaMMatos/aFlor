//
//  OrchidDetailRow.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 20/01/22.
//

import SwiftUI

struct OrchidDetailRow: View {
    
    var orchid: Orchid
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // FLORAÇÃO
            VStack {
                VStack {
                    Text("Floração")
                        .padding(.leading, -92)
                }
                .font(.title3.bold())
                .padding(.bottom, 3)
                .frame(alignment: .leading)
            }
            .frame(width: 200)
            Text(orchid.floracao)
                .padding(.leading, 13)
                .font(.system(size: 20, weight: .regular, design: .rounded))
        }
        .padding()
        .background(Color("AccentColor"))
        .cornerRadius(13)
        .foregroundColor(Color("background"))
        
        Spacer()
        
        VStack(alignment: .leading) {
            
            // SOL
            VStack {
                VStack {
                    Text("Sol")
                        .padding(.leading, -92)
                }
                .font(.title3.bold())
                .padding(.bottom, 3)
                .frame(alignment: .leading)
            }
            .frame(width: 200)
            Text(orchid.sol)
                .padding(.leading, 13)
                .font(.system(size: 20, weight: .regular, design: .rounded))
        }
        .padding()
        .background(Color("AccentColor"))
        .cornerRadius(13)
        .foregroundColor(Color("background"))
        
        Spacer()
        
        VStack(alignment: .leading) {
            
            // ÁGUA
            VStack {
                VStack {
                    Text("Água")
                        .padding(.leading, -92)
                }
                .font(.title3.bold())
                .padding(.bottom, 3)
                .frame(alignment: .leading)
            }
            .frame(width: 200)
            Text(orchid.agua)
                .padding(.leading, 13)
                .font(.system(size: 20, weight: .regular, design: .rounded))
        }
        .padding()
        .background(Color("AccentColor"))
        .cornerRadius(13)
        .foregroundColor(Color("background"))
    }
}

struct OrchidDetailRow_Previews: PreviewProvider {
    static var orchids = ModelData().orchids
    
    static var previews: some View {
        Group {
            OrchidDetailRow(orchid: orchids[0])
            OrchidDetailRow(orchid: orchids[1])
        }
        .previewLayout(.sizeThatFits)
    }
}

