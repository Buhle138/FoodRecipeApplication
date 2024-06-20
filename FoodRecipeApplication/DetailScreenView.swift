//
//  DetailScreenView.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/20.
//

import SwiftUI

struct DetailScreenView: View {
    
    
    let category: Category
   
    var body: some View {
        GeometryReader{geometry in
            
                VStack{
                    
                    AsyncImage(url: URL(string: category.strCategoryThumb)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                        
                    } placeholder: {
                        Circle()
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: geometry.size.width * 0.6)
                    .padding(.top)
                    
                    ScrollView{
                        VStack(alignment: .leading){
                            Text("\(category.strCategory) Details")
                                .font(.title.bold())
                                .padding(.bottom, 5)
                            Text(category.strCategoryDescription)
                        }
                    }
                    
                }
            
            
        }
    }
}
