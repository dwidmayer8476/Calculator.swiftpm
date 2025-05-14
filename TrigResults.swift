import SwiftUI

struct TrigResults: View {
    let label: String
    let value: Double
    var body: some View {
        HStack{
            Text("\(label):")
                .font(.title2)
            Spacer()
            Text("\(value, specifier: "%.4f")")
        }
    }
}

