//
//  Model.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/18.
//

import Foundation

struct Categories: Codable {
    let categories: [Category]
}

struct Category: Codable{
    let idCategory: String
    let strCategory: String
    let strCategoryThumb: String
    let strCategoryDescription: String
}
