import UIKit

enum Kind {
    case instantDryYeast
    case freshYeast
}

struct YeastInput {
    let kind: Kind
    let instantDryYeastPercentage: Double
    let freshYeastPercentage: Double

    var value: Double {
        switch kind {
        case .instantDryYeast:
            instantDryYeastPercentage
        case .freshYeast:
            freshYeastPercentage
        }
    }
}

struct ReceipeInput {
    let balls: Int
    let ballWeight: Double
    let hydrationPercentage: Double
    let yeastInput: YeastInput
    let saltPercentage: Double
    let oliveOilPercentage: Double
    let sugarPercentage: Double
}

struct ReceipeOutput {
    let flour: Double
    let water: Double
    let yeastOutput: YeastOutput
    let oil: Double
    let sugar: Double

}

struct YeastOutput {

    let kind: Kind
    let instantDryYeast: Double
    let freshYeast: Double

    var value: Double {
        switch kind {
        case .instantDryYeast:
            instantDryYeast
        case .freshYeast:
            freshYeast
        }
    }
}

struct Receipe {

    let input: ReceipeInput

    var output: ReceipeOutput {
        let doughWeight = Double(input.balls) * input.ballWeight
        let flour = doughWeight / (1 + input.hydrationPercentage + input.saltPercentage + input.oliveOilPercentage + input.yeastInput.value + input.sugarPercentage)
        let salt = input.saltPercentage * flour
        let oliveOil = input.oliveOilPercentage * flour
        let sugar = input.sugarPercentage * flour
        return ReceipeOutput(
            flour: flour,
            water: input.hydrationPercentage * flour,
            yeastOutput: YeastOutput(
                kind: input.yeastInput.kind,
                instantDryYeast: input.yeastInput.instantDryYeastPercentage * flour,
                freshYeast: input.yeastInput.freshYeastPercentage * flour
            ),
            oil: input.oliveOilPercentage * flour,
            sugar: input.sugarPercentage * flour
        )
    }
}

let input = ReceipeInput(
    balls: 1,
    ballWeight: 240,
    hydrationPercentage: 0.62,
    yeastInput: YeastInput(
        kind: .instantDryYeast,
        instantDryYeastPercentage: 0.0025,
        freshYeastPercentage: 0.0076
        ),
    saltPercentage: 0.02,
    oliveOilPercentage: 0.03,
    sugarPercentage: 0.01
)

let receipe = Receipe(input: input)

print(receipe.output)
