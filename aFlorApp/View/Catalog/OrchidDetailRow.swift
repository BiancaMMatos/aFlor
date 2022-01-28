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
        
//        GeometryReader { bounds in
//            Spacer()
            //todos os atributos
            VStack(alignment: .leading){
                // FLORAÇÃO
                VStack(alignment: .leading) {
                    Text("Floração")
                        .padding()
                        .font(.title3.bold())
                    
                    Text(orchid.floracao)
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
                    Text("Sol")
                        .padding()
                        .font(.title3.bold())
                    
                    Text(orchid.sol)
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
                    Text("Água")
                        .padding()
                        .font(.title3.bold())
                    
                    Text(orchid.agua)
                        .padding()
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                }
                .padding()
                .background(Color("AccentColor"))
                .cornerRadius(13)
                .foregroundColor(Color("background"))
            }
            .frame(width: .infinity, height: .infinity)
            //.frame(width: bounds.size.width, height: bounds.size.height)
        //}
        
//        GeometryReader { bounds in
//            VStack(alignment: .leading) {
//
//                // FLORAÇÃO
//
//                VStack {
//                    VStack {
//                        Text("Floração")
//                            .padding(.leading, -92)
//                    }
//                    .frame(width: bounds.size.width)
//                    .font(.title3.bold())
//                    .padding(.bottom, 3)
//                    .frame(alignment: .leading)
//                }
//
//                Text(orchid.floracao)
//                    .frame(width: bounds.size.width)
//                    .padding(.leading, 13)
//                    .font(.system(size: 20, weight: .regular, design: .rounded))
//            }
//            .padding()
//            .background(Color("AccentColor"))
//            .cornerRadius(13)
//            .foregroundColor(Color("background"))
//        }
//
//        Spacer()
//
//        GeometryReader { bounds in
//            VStack(alignment: .leading) {
//
//                // SOL
//
//                VStack {
//                    VStack {
//                        Text("Sol")
//                            .padding(.leading, -92)
//                    }
//                    .font(.title3.bold())
//                    .padding(.bottom, 3)
//                    .frame(alignment: .leading)
//                }
//                .frame(width: bounds.size.width)
//                Text(orchid.sol)
//                    .frame(width: bounds.size.width)
//                    .padding(.leading, 13)
//                    .font(.system(size: 20, weight: .regular, design: .rounded))
//            }
//            .padding()
//            .background(Color("AccentColor"))
//            .cornerRadius(13)
//            .foregroundColor(Color("background"))
//        }
//
//        Spacer()
//
//        GeometryReader { bounds in
//            VStack(alignment: .leading) {
//
//                // ÁGUA
//
//                VStack {
//                    VStack {
//                        Text("Água")
//                            .padding(.leading, -92)
//                    }
//                    .font(.title3.bold())
//                    .padding(.bottom, 3)
//                    .frame(alignment: .leading)
//                }
//                .frame(width: bounds.size.width * 0.8)
//                Text(orchid.agua)
//                    .frame(width: bounds.size.width)
//                    .padding(.leading, 13)
//                    .font(.system(size: 20, weight: .regular, design: .rounded))
//            }
//            .padding()
//            .background(Color("AccentColor"))
//            .cornerRadius(13)
//            .foregroundColor(Color("background"))
//        }
//    }
}
//
//struct OrchidDetailRow_Previews: PreviewProvider {
//    static var orchids = ModelData().orchids
//
//    static var previews: some View {
//        Group {
//            OrchidDetailRow(orchid: orchids[0])
//            OrchidDetailRow(orchid: orchids[1])
//        }
//        .previewLayout(.sizeThatFits)
//    }
//}


}
