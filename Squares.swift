import SwiftUI

struct SquaresAndRoots: View {
    @State var EnteredNumber: String = ""
    @State var Answer: String = ""
    var body: some View {
        
        VStack{
            VStack(spacing: 20) {
                Text("Square & Square Root Calculator")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Enter a number", text: $EnteredNumber)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                HStack(spacing: 20) {
                    Button(action: calculateSquare) {
                        Text("Square")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                    Button(action: calculateSquareRoot) {
                        Text("Square Root")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                
                Text("Result: \(Answer)")
                    .font(.title)
                    .padding()
                
                Spacer()
            }
            .padding()
        }
        .offset(x: 0, y: 120)
    }
        
        func calculateSquare() {
            if let number = Double(EnteredNumber) {
                Answer = String(number * number)
            } else {
                Answer = "Invalid input"
            }
        }
        
        func calculateSquareRoot() {
            if let number = Double(EnteredNumber), number >= 0 {
                Answer = String(sqrt(number))
            } else {
                Answer = "Invalid input"
            }
        }
    }



#Preview {
    SquaresAndRoots()
}
