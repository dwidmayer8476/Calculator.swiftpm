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
                
                Text("enter your Percentage here")
                    .foregroundStyle(.white)
                    .padding()
                
                TextField("Percantage", text: $percent)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                
                Button("Calcualate") {
                    calculatePercentage()
                }
                
                Text("Result: \(result) ")
                
                
                
                
                
            }
            
        }
    }
    
    func calculatePercentage() {
        if let baseValue = Double(base), let percentValue = Double(percent) {
            let value = baseValue * percentValue / 100
            result = String(format: "%.2f", value)
        } else {
            result = "Invalid input"
        }
    }
    
}

#Preview {
    PercentageView()
}



     
