//
//  String+Localization.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 04/02/22.
//

import Foundation

extension String {
        // Nova função:
    func localized() -> String {       // Vai retornar uma string
        return NSLocalizedString(
            self,                      // Pega a própria strig em que a função foi chamada
            tableName: "Localizable", // Nome do arquivo .string (vai ser criado)
            bundle: .main,
            value: self,               // Caso não tenha um valor á aquela string vai ser usada ela mesmo
            comment: self
        )
    }
}
