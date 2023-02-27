//
//  Order.swift
//  OrderApp
//
//  Created by APPLE on 27/02/23.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

