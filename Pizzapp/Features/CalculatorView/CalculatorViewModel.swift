//
//  CalculatorViewModel.swift
//  Pizzapp
//
//  Created by Przemek Skowronek on 25/06/2024.
//

import SwiftUI

struct GridLayoutView: View {

    @Binding var doughBalls: Double
    @State var doughBallsString: String = ""
    @Binding var ballWeight: Double
    @Binding var waterPercentage: Double
    @Binding var sugarPercentage: Double
    @Binding var saltPercentage: Double
    @Binding var oilPercentage: Double
    @Binding var yeastType: String

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                HStack {
                    StepperView(
                        title: "Style",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                    Spacer()
                        .frame(width: 30)
                    VerticalLine()
                        .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                        .frame(width: 0.5)
                    Spacer()
                        .frame(width: 30)
                    StepperView(
                        title: "Dough balls",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                }
                HorizontalLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                    .frame(height: 0.5)
                    .padding(.horizontal, 5)
            }
            VStack(spacing: 0) {
                HStack {
                    StepperView(
                        title: "Ball weight",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                    Spacer()
                        .frame(width: 30)
                    VerticalLine()
                        .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                        .frame(width: 0.5)
                    Spacer()
                        .frame(width: 30)
                    StepperView(
                        title: "Water",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                }
                HorizontalLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                    .frame(height: 0.5)
                    .padding(.horizontal, 5)
            }
            VStack(spacing: 0) {
                HStack {
                    StepperView(
                        title: "Sugar/Honey",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                    Spacer()
                        .frame(width: 30)
                    VerticalLine()
                        .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                        .frame(width: 0.5)
                    Spacer()
                        .frame(width: 30)
                    StepperView(
                        title: "Salt",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                }
                HorizontalLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                    .frame(height: 0.5)
                    .padding(.horizontal, 5)
            }
            VStack(spacing: 0) {
                HStack {
                    StepperView(
                        title: "Oil",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                    Spacer()
                        .frame(width: 30)
                    VerticalLine()
                        .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
                        .frame(width: 0.5)
                    Spacer()
                        .frame(width: 30)
                    StepperView(
                        title: "Yeast",
                        displayValue: $doughBallsString,
                        addAction: { @MainActor in
                            $doughBalls.wrappedValue += 1
                            doughBallsString = "\(Int(doughBalls))"
                        },
                        removeAction: { @MainActor in
                            if $doughBalls.wrappedValue == 1 { return }
                            $doughBalls.wrappedValue -= 1
                            doughBallsString = "\(Int(doughBalls))"
                        }
                    )
                }
            }
        }
        .padding(.horizontal, 30)
    }
}


// Increment and decrement view component


// Ingredient row view for displaying calculated ingredient values
struct IngredientRowView: View {
    let ingredient: String
    let weight: Double

    var body: some View {
        HStack {
            Text(ingredient)
            Spacer()
            Text("\(Int(weight))g")
        }
        .padding(.vertical, 5)
    }
}
