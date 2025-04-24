import SwiftUI

struct TrigonometryView: View {
    @State var ALeg = 0
    @State var OLeg = 0
    @State var hypotnuse = 0
    @State var angle = 0
    var body: some View {
        TextField("Enter value of Adjacent Leg", value: $ALeg, format: .number)
        TextField("Enter value of Opposite Leg", value: $OLeg, format: .number)
        TextField("Enter value of Hypotnuse", value: $hypotnuse, format: .number)
        TextField("Enter value of Angle", value: $angle, format: .number)
    }
}

#Preview {
    TrigonometryView()
}
