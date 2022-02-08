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
        
        //todos os atributos
        VStack(alignment: .leading){
            // FLORAÇÃO
            VStack(alignment: .leading) {
                Text("Floração".localized())
                    .padding()
                    .font(.title3.bold())
                
                Text(orchid.floracao.localized())
                    .padding()
                    .font(.system(size: 20, weight: .regular, design: .rounded))
            }
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(13)
            .foregroundColor(Color("background"))
            
            Spacer()
            
            // SOL
            VStack(alignment: .leading) {
                Text("Sol".localized())
                    .padding()
                    .font(.title3.bold())
                
                Text(orchid.sol.localized())
                    .padding()
                    .font(.system(size: 20, weight: .regular, design: .rounded))
            }
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(13)
            .foregroundColor(Color("background"))
            
            Spacer()
            
            // ÁGUA
            VStack(alignment: .leading) {
                Text("Água".localized())
                    .padding()
                    .font(.title3.bold())
                
                Text(orchid.agua.localized())
                    .padding()
                    .font(.system(size: 20, weight: .regular, design: .rounded))
            }
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(13)
            .foregroundColor(Color("background"))
        }
        .frame(width: .infinity, height: .infinity)
        
    }
}
