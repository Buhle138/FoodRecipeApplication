//
//  ContentView.swift
//  FoodRecipeApplication
//
//  Created by Buhle Radzilani on 2024/06/17.
//

import SwiftUI

struct ContentView: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    let missions = ["Buhle", "Yes", "THree", "Fourr", "Five", "Six", "Seven", "eight", "Ninge", "Ten", "Eleven", "Twelve", "Thirteen", "Fasd"]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(missions, id: \.self) {missions in
                        NavigationLink {
                        } label: {
                            VStack{
//                                Image(missions.image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 100, height: 100)
//                                    .padding()
                                
                                VStack{
                                    Text("Buhle")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    
                                    Text(missions)
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        }
                        
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Food items")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
