//
//  Tutorial.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 20/01/22.
//

import Foundation
import SwiftUI

struct TutorialModel: Codable, Identifiable, Hashable {
    var id: Int
    var categoria: String
    var descricao: String
    var icone: String
}
