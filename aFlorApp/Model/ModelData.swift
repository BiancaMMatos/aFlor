//
//  Data.swift
//  aFlorApp
//
//  Created by Bianca Maciel Matos on 19/01/22.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var orchids: [Orchid] = load("orchid.json")
    @Published var tutorials: [TutorialModel] = load("tutorial.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Não foi possível encontrar \(filename).")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível carregar \(filename):\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível analisar \(filename) como \(T.self):\n\(error)")
    }
}
