//
//  Untitled.swift
//  Calculator
//
//  Created by Darii Kishchak on 5/22/25.
//

import SwiftUI
struct PercentageView: View {
    @State var base = ""
    @State var percent = ""
    @State var result = ""
    @State var pressed = false
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack{
              
                Text("Enter your Base Number here")
                    .foregroundStyle(.white)
                    .padding()
                    
                    TextField("Base Number", text: $base)
                        .foregroundStyle(.white)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                
                Text("Enter your Percentage here")
                    .foregroundStyle(.white)
                    .padding()
                
                TextField("Percantage", text: $percent)
                    .foregroundStyle(.white)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                
                Button("Calculate")
                {
                    calculatePercentage()
                    
                    pressed = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        pressed = false
                    }
                }
                .font(.system(size: 32, weight: .semibold))
                .frame(width: 300, height: 50)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.gray]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 40, ))
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                .padding()
                .scaleEffect(pressed ? 1.3 : 1.0)
                        .animation(.interpolatingSpring(stiffness: 300, damping: 10), value: pressed)
                
                
                
                Text("Result: \(result) ")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .padding(20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 4)
                
                
                
                
                
            }
            
        }
    }
    
    func calculatePercentage() {
        if let baseValue = Double(base), let percentValue = Double(percent) {
            result = String(format: "%.2f", baseValue * percentValue / 100 )
        } else {
            result = "Invalid input"
        }
    }

    
}

#Preview {
    PercentageView()
}



     
