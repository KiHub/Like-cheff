//
//  RecipeCatgories.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import Foundation

struct RecipeCategoryResponse: Decodable {
    let categories: [RecipeCategory]
}

struct RecipeCategory: Decodable {
    let imageUrl: String
    let title: String
}
