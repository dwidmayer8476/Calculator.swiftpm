//
//  TipCalculator.swift
//  Calculator
//
//  Created by Darii Kishchak on 5/27/25.
//

import SwiftUI

struct TipCalculator: View {
    @State var amount = ""
    @State var tip = ""
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
                HStack{
                    Text("Enter bill amount:")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundStyle(.white)
                    
                    
                    TextField("Bill amount ", text: $amount )
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundStyle(.white)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                }
                HStack{
                    Text("Enter % of tip you want to leave:")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundStyle(.white)
                    
                    
                    TextField("% of tip to leave", text: $tip)
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundStyle(.white)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                }
            
                
                Button("Calculate total amount") {
                    calculateTotal()
                }
                .font(.system(size: 32, weight: .semibold))
                .frame(width: 340, height: 70)
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
                Text("Total: \(result) $")
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
    
    func calculateTotal() {
           guard let amt = Double(amount), let percent = Double(tip) else {
               result = "Invalid input"
               return
           }
           let total = amt + (amt * percent / 100)
           result = String(format: "%.2f", total)
       }
}



#Preview {
    TipCalculator()
}
