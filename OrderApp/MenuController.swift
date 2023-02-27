//
//  MenuController.swift
//  OrderApp
//
//  Created by APPLE on 27/02/23.
//

import Foundation

class MenuController {
    let baseURL = URL(string: "http://localhost:8080/")!
    
    func fetchCategories() async throws -> [String] {
        
        let categoriesURL = baseURL.appendingPathComponent("categories")
        enum MenuControllerError: Error, LocalizedError {
            case categoriesNotFound
        }
    }
    
    func fetchMenuItems(forCategory categoryName: String) async throws -> [MenuItem] {
        
        let baseMenuURL = baseURL.appendingPathComponent("menu")
        var components = URLComponents(url: baseMenuURL, resolvingAgainstBaseURL: true)!
        components.queryItems = [URLQueryItem(name: "category", value: categoryName)]
        let menuURL = components.url!
        
        enum MenuControllerError: Error, LocalizedError {
            case categoriesNotFound
            case menuItemsNotFound
            case orderRequestFailed
        }
    }
    
    typealias MinutesToPrepare = Int

    func submitOrder(forMenuIDs menuIDs: [Int]) async throws -> MinutesToPrepare {
    }
}
