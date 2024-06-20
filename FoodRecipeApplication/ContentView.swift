//
//  ContentView.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/17.
//

import SwiftUI

 

struct ContentView: View {
    
    @ObservedObject var food: ApiService
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                VStack{
                    LazyVGrid(columns: columns){
                       
                        ForEach(food.foodItems ?? [Category](), id: \.idCategory){
                            foodItem in
                            NavigationLink{
                               DetailScreenView(category: foodItem)
                            }label: {
                                VStack{
                                    AsyncImage(url: URL(string: foodItem.strCategoryThumb)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(Circle())
                                        
                                    } placeholder: {
                                        Circle()
                                            .foregroundColor(.secondary)
                                    }
                                    .frame(width: 120, height: 120)
                                    
                                    Text(foodItem.strCategory)
                                        .frame(maxHeight: .infinity, alignment: .top)
                                }
                            }
                            
                            
                        }
                    }
                }
            }
            .navigationTitle("Food Recipes")
        }
        .onAppear{
            Task {
                try?  await food.getAll()
            }
          
        }
        
    }
        
    
}
                                   
        

        
