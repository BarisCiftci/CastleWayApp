//
//  CastleData.swift
//  SwiftUIContinuedLearning
//
//  Created by Baris Ciftci on 27/07/2023.
//

import Foundation

class CastleData: ObservableObject {
    @Published var castles: [Castle] = []
    init() {
        if let file = Bundle.main.url(forResource: "castleway-data", withExtension: "json") {
            do{ let data = try Data(contentsOf: file)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Castle].self, from: data)
                self.castles = jsonData }
            catch{ print("Error decoding JSON: \(error)") } } } }
