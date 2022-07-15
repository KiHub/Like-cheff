//
//  RecipeCategoryListView.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import SwiftUI

struct RecipeCategoryListView: View {
    
    let categories: [RecipeCategoryViewModel]
    
    var body: some View {
        List(categories) { category in
            RecipeCategoryCellView(recipeCategory: category)
        }
    }
}


