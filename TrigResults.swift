import SwiftUI

struct TrigResults: View {
    let label: String
    let value: Double
    var body: some View {
        HStack{
            Text("\(label):")
            Spacer()
            Text("\(value, specifier: "%.4f")")
        }
        .font(.system(size: 32, weight: .semibold))
    }
}

