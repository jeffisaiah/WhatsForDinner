//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Jeff Gutierrez on 9/22/25.
//

import SwiftUI

struct ContentView: View {
    private let choicesArray = ["BBQ",
                                       "Burgers",
                                       "Burritos",
                                       "Chinese",
                                       "Fried Chicken",
                                       "Pasta",
                                       "Pizza",
                                       "Ramen",
                                       "Salad",
                                       "Steak",
                                       "Sushi",
                                       "Thai"]
    @State private var selectedMeal = "Thai"
    
    var body: some View {
        VStack {
            Text("What's For Dinner?")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.cyan)
            
            Spacer()
            
            Image(selectedMeal)
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.tint)
                .animation(.default, value: selectedMeal)
            
            
            Text(selectedMeal)
                .font(.largeTitle)
                .fontWeight(.thin)
                .animation(.default, value: selectedMeal)
            
            Spacer()
            
            Button{
                var currentMeal: String
                repeat{
                    currentMeal = choicesArray.randomElement() ?? "No Meals Availible"
                } while currentMeal == selectedMeal
                selectedMeal = currentMeal
            
            } label: {
                Image(systemName: "fork.knife.circle")
                Text("What's For Dinner?")
            }
            .font(.title)
            .fontWeight(.semibold)
            .buttonStyle(.glassProminent)
            .tint(.cyan)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
