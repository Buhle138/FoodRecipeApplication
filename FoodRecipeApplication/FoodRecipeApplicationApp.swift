//
//  FoodRecipeApplicationApp.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/17.
//

import SwiftUI

@main
struct FoodRecipeApplicationApp: App {
    @StateObject var food = ApiService()
    var body: some Scene {
        WindowGroup {
            ContentView(food: food)
        }
    }
}
