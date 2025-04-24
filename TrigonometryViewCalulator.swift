import SwiftUI

struct TrigonometryView: View {
    @State var ALeg:Int = 0
    @State var OLeg:Int = 0
    @State var hypotnuse:Int = 0
    @State var angle:Int = 0
    var body: some View {
        Text("Adjacent       Opposite         Hypotnuse        Angle        ")
        HStack {
            TextField("Adjacent Leg", value: $ALeg, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Opposite Leg", value: $OLeg, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Hypotnuse", value: $hypotnuse, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Angle", value: $angle, format: .number)
                .textFieldStyle(.roundedBorder)
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
