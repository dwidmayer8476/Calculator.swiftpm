import SwiftUI

struct TrigonometryView: View {
    @State var ALeg:Int = 0
    @State var OLeg:Int = 0
    @State var hypotnuse:Int = 0
    @State var angle = ""
    //    @State var angleInput = ""
    @State var useDegrees: Bool = true
    var angleInRadians: Double {
        guard let angle = Double(angle) else {return 0 }
        return useDegrees ? angle * .pi / 180 : angle
    }
    var body: some View {
        Text("Adjacent       Opposite         Hypotnuse        Angle        ")
        HStack {
            TextField("Adjacent Leg", value: $ALeg, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            TextField("Opposite Leg", value: $OLeg, format: .number)
                .textFieldStyle(.roundedBorder)
            keyboardType(.decimalPad)
            TextField("Hypotnuse", value: $hypotnuse, format: .number)
                .textFieldStyle(.roundedBorder)
            keyboardType(.decimalPad)
            TextField("Enter Angle", text: $angle)
                .textFieldStyle(.roundedBorder)
            keyboardType(.decimalPad)
        }
        
        Text("Enter x If value is unknown or uneeded")
        HStack{
            Button {
                //       start         If {
                //
                //                }
            } label: {
                Text("SIN")
                    .foregroundStyle(.green)
                    .font(.largeTitle)
                    .frame(width: 70, height: 60)
                    .background(.blue)
                    .clipShape(.ellipse)
            }
            Button {
                
            } label: {
                Text("COS")
                    .foregroundStyle(.green)
                    .font(.largeTitle)
                    .frame(width: 70, height: 60)
                    .background(.blue)
                    .clipShape(.ellipse)
            }
            Button {
                
            } label: {
                Text("TAN")
                    .foregroundStyle(.green)
                    .font(.largeTitle)
                    .frame(width: 70, height: 60)
                    .background(.blue)
                    .clipShape(.ellipse)
            }
            
        }
    }
}

#Preview {
    TrigonometryView()
}
