//
//  CalculatorView.swift
//  Pizzapp
//
//  Created by Przemek Skowronek on 02/01/2024.
//

import SwiftUI

struct CalculatorView: View {
    
    @State private var doughBalls: Double = 4
    @State private var ballWeight: Double = 250
    @State private var waterPercentage: Double = 60
    @State private var sugarPercentage: Double = 5
    @State private var saltPercentage: Double = 5
    @State private var oilPercentage: Double = 5
    @State private var yeastType: String = "Instant"

    // Function to calculate ingredients
    var totalFlour: Double {
        return Double(doughBalls) * ballWeight
    }

    var waterWeight: Double {
        return totalFlour * (waterPercentage / 100)
    }

    var saltWeight: Double {
        return totalFlour * (saltPercentage / 100)
    }

    var sugarWeight: Double {
        return totalFlour * (sugarPercentage / 100)
    }

    var oilWeight: Double {
        return totalFlour * (oilPercentage / 100)
    }

    var yeastWeight: Double {
        // Assuming 0.35% of total flour for instant yeast
        return totalFlour * 0.0035
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            ZStack {
                Image(.logo)
                    .padding()
                HStack(alignment: .center) {
                    Spacer()
                    Button("", image: .buttonSettings, role: .none) {

                    }
                    .tint(.basil)
                    .padding(.horizontal, 30)
                }
            }
            Spacer()
                .frame(height: 20)
            GridLayoutView(doughBalls: $doughBalls, ballWeight: $ballWeight, waterPercentage: $waterPercentage, sugarPercentage: $sugarPercentage, saltPercentage: $saltPercentage, oilPercentage: $oilPercentage, yeastType: $yeastType)

            // Ingredients summary
            VStack(alignment: .leading, spacing: 10) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.top)
                IngredientRowView(ingredient: "Flour (type 00)", weight: totalFlour)
                IngredientRowView(ingredient: "Water (20° to 23°)", weight: waterWeight)
                IngredientRowView(ingredient: "Salt", weight: saltWeight)
                IngredientRowView(ingredient: "Oil", weight: oilWeight)
                IngredientRowView(ingredient: "Yeast", weight: yeastWeight)
            }
            .padding()

            Spacer()

            // Button to go to recipe
            Button(action: {
                // Logic to navigate to recipe
            }) {
                Text("Go to recipe")
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    CalculatorView()
}
