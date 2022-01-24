//
//  OrchidRow.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.


import SwiftUI

struct OrchidRow: View {
    var orchid: Orchid

    var body: some View {
        HStack {
            orchid.imagem
                .resizable()
                .frame(width: 50, height: 50)
            Text(orchid.nome)

            Spacer()
        }
    }
}

struct OrchidRow_Previews: PreviewProvider {
    static var orchids = ModelData().orchids

    static var previews: some View {
        Group {
            OrchidRow(orchid: orchids[3])
            OrchidRow(orchid: orchids[4])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
