import Foundation
import SwiftUI

struct Orchid: Codable, Identifiable, Hashable {
     
    var id: Int
    var nome: String
    var descricao: String
    var floracao: String
    var sol: String
    var agua: String
    
    private var imageName: String
    var imagem: Image {
        Image(imageName)
    }

}
