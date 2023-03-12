//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Macbook Pro on 12/03/2023.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // create decoder
        let decoder = JSONDecoder()
        
        // create property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // return the ready to use data
        return loaded
    }
}
