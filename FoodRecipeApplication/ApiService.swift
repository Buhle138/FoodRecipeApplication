//
//  ApiService.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/18.
//

import Foundation


@MainActor
class ApiService: ObservableObject {
    
    @Published var foodItems: [Category]? = [Category]()
    
    func getAll() async throws {
        
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php")!
        
        let(data, response) = try await URLSession.shared.data(from: url)
       
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            fatalError("Invalid Response")
        }
        
        let decodedData = try JSONDecoder().decode(Categories.self, from: data)
        
        self.foodItems = decodedData.categories
        
    }
    
}
    

