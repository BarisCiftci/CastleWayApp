//
//  Castle.swift
//  SwiftUIContinuedLearning
//
//  Created by Baris Ciftci on 27/07/2023.
//

import Foundation


struct Castle: Codable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let latitude: Double
    let longitude: Double
    let address: String
    let description: String
}
