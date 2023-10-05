//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Arjun Prabhune on 10/4/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable> ( file: String) -> T{
        // 1. Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        // 5. Return the ready to use data
        return decodedData
    }
}
