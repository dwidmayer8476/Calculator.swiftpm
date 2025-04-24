import SwiftUI

struct TrigResultsRow: View {
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
//#Preview {
//    TrigResultsRow()
//}
