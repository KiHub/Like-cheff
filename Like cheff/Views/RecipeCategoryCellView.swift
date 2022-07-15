//
//  RecipeCategoryCellView.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import SwiftUI

struct RecipeCategoryCellView: View {
    
    let recipeCategory: RecipeCategoryViewModel
    
    var body: some View {
        HStack(spacing: 20) {
            
            AsyncImage(url: recipeCategory.imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            } placeholder: {
                ProgressView()
            }

            
//            AsyncImage(url: recipeCategory.imageUrl) { image in
//                image.image?.resizable()
//                
//                    .aspectRatio(contentMode: .fit)
//                    .frame(maxWidth: 100, maxHeight: 100)
//                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//            } placeholder: {
//                ProgressView()
//            }

            Text(recipeCategory.title)
        }
    }
}

