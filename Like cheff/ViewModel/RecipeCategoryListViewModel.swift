//
//  RecipeCategoryListViewModel.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import Foundation

@MainActor
class RecipeCategoryListViewModel: ObservableObject {
    
    @Published var recipeCategory: [RecipeCategoryViewModel] = []
    
    
    func populareCategory() async {
        
        do {
            let recipeCategoryResponse = try await NetworkService().get(url: Constants.Urls.recipeCategoriesURL) { data in
                return try? JSONDecoder().decode(RecipeCategoryResponse.self, from: data)
            }
            
            self.recipeCategory = recipeCategoryResponse.categories.map(RecipeCategoryViewModel.init)
            
        } catch {
            print("❌")
        }
    }
}

struct RecipeCategoryViewModel: Identifiable {
    
    let id = UUID()
    private let recipeCategory: RecipeCategory
    
    init(_ recipeCategory: RecipeCategory) {
        self.recipeCategory = recipeCategory
    }
    var title: String {
        recipeCategory.title
    }
    var imageUrl: URL? {
        URL(string: recipeCategory.imageUrl)
    }
    
    
}
