//
//  RecipeCategoryListScreen.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import SwiftUI

struct RecipeCategoryListScreen: View {
    
    @StateObject var model: RecipeCategoryListViewModel =
    RecipeCategoryListViewModel()
    
    var body: some View {
        NavigationView {
            RecipeCategoryListView(categories: model.recipeCategory)
                .task {
                    await model.populareCategory()
                }
        }
        .navigationTitle("Like cheff")
    }
}

struct RecipeCategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryListScreen()
    }
}
