//
//  StepperView.swift
//  Pizzapp
//
//  Created by Przemek Skowronek on 09/02/2024.
//

import SwiftUI

struct StepperView: View {

    let title: String
    @Binding var displayValue: String
    var addAction: @MainActor () -> Void
    var removeAction: @MainActor () -> Void

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.futuraBook(size: 16))
                    .foregroundStyle(.metal)
                Spacer()
            }
            HStack(spacing: 0) {
                Button(action: removeAction) {
                    Image(.buttonMinus)
                        .padding(13)

                }
                VerticalLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [1, 1]))
                    .frame(width: 0.5)
                    .padding(.vertical, 5)
                Spacer()
                Text("\($displayValue.wrappedValue)")
                Spacer()
                VerticalLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [1, 1]))
                    .frame(width: 0.5)
                    .padding(.vertical, 5)                    
                Button(action: addAction) {
                    Image(.buttonPlus)
                        .padding(13)
                }
            }
            .frame(height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(.black, lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    StepperView(title: "Style", displayValue: .constant("5%"), addAction: { @MainActor in }, removeAction:
        { @MainActor in }
    )
}
