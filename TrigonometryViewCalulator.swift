import SwiftUI

struct TrigonometryView: View {
    @State var opposite: String = ""
    @State var adjacent: String = ""
    @State var hypotenuse: String = ""
    @State var angle: String = ""
    @State var selectedMode = "Find Angle"
    @State var modes = ["Find Angle", "Find Side"]
    @State private var history: [String] = []
    var body: some View {
        NavigationView {
            
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                
                VStack(spacing: 20) {
                    Text("Triangle Solver")
                        .foregroundStyle(.white)
                        .bold()
                    
                    Picker("Mode", selection: $selectedMode) {
                        ForEach(modes, id: \.self) { mode in
                            Text(mode)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if selectedMode == "Find Angle" {
                        TextField("Opposite side", text: $opposite)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Adjacent side", text: $adjacent)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Hypotenuse", text: $hypotenuse)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    } else {
                        TextField("Angle (degrees)", text: $angle)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Known side (opposite/adjacent/hypotenuse)", text: $hypotenuse)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    Button("Calculate") {
                        calculate()
                    }
                    .font(.system(size: 32, weight: .semibold))
                    .frame(width: 150, height: 70)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.green.opacity(0.7), Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    
                    if !resultText.isEmpty {
                        Text(resultText)
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundStyle(.white)
                            .padding()
                    }
                    Button {
                        adjacent = ""
                        opposite = ""
                        hypotenuse = ""
                        angle = ""
                        resultText = ""
                    } label: {
                        Text("RESET")
                            .font(.system(size: 32, weight: .semibold))
                            .frame(width: 150, height: 70)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.red.opacity(0.7), Color.orange]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                    Spacer()
                }
                .padding()
                
            }
        }
        .font(.system(size: 32, weight: .semibold))
    }
    @State  var resultText: String = ""
    
    func calculate() {
        if selectedMode == "Find Angle" {
            if let opp = Double(opposite), let adj = Double(adjacent) {
                let angleRadians = atan(opp / adj)
                let angleDegrees = angleRadians * 180 / .pi
                resultText = "Angle = \(String(format: "%.2f", angleDegrees))° (from tan⁻¹)"
                return
            }
            
            if let opp = Double(opposite), let hyp = Double(hypotenuse) {
                let angleRadians = asin(opp / hyp)
                let angleDegrees = angleRadians * 180 / .pi
                resultText = "Angle = \(String(format: "%.2f", angleDegrees))° (from sin⁻¹)"
                return
            }
            
            if let adj = Double(adjacent), let hyp = Double(hypotenuse) {
                let angleRadians = acos(adj / hyp)
                let angleDegrees = angleRadians * 180 / .pi
                resultText = "Angle = \(String(format: "%.2f", angleDegrees))° (from cos⁻¹)"
                return
            }
            
            resultText = "Please enter at least two sides."
            
        } else {
            if let angleDeg = Double(angle), let knownSide = Double(hypotenuse) {
                let angleRad = angleDeg * .pi / 180
                let opposite = sin(angleRad) * knownSide
                let adjacent = cos(angleRad) * knownSide
                resultText = "Opposite = \(String(format: "%.2f", opposite))\nAdjacent = \(String(format: "%.2f", adjacent))"
            } else {
                resultText = "Please enter an angle and a side."
            }
        }
    }
}

//acos is cos and is known by the computer already




#Preview {
    TrigonometryView()
}
