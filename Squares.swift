import SwiftUI

struct SquaresAndRoots: View {
    @State var EnteredNumber: String = ""
    @State var Answer: String = ""
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                VStack(spacing: 20) {
                    Text("Square & Square Root Calculator")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundStyle(.white)
                    
                    TextField("Enter a number", text: $EnteredNumber)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                        .font(.system(size: 32, weight: .semibold))
                    
                    HStack(spacing: 20) {
                        Button(action: calculateSquare) {
                            Text("Square (X^2)")
                                .font(.system(size: 28, weight: .semibold))
                                .frame(width: 150, height: 70)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.blue]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                        }
                        
                        Button(action: calculateSquareRoot) {
                            Text("Square Root( √x)")
                                .font(.system(size: 28, weight: .semibold))
                                .frame(width: 200, height: 70)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.blue]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                        }
                    }
                    .padding(.horizontal)
                    
                    Text("Result: \(Answer)")
                        .padding()
                        .foregroundStyle(.white)
                        .font(.system(size: 32, weight: .semibold))
                    
                    Spacer()
                }
                .padding()
            }
            .offset(x: 0, y: 120)
        }
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
