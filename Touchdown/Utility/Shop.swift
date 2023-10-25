//
//  Shop.swift
//  Touchdown
//
//  Created by Arjun Prabhune on 10/23/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
