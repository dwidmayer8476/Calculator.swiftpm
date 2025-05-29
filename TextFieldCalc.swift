//
//  TextFieldCalc.swift
//  Calculator
//
//  Created by Darii Kishchak on 5/14/25.
//


import SwiftUI

struct TextFieldCalc: View {
    @State var textFirstNumber:Double = 0
    @State var textSecondNumber:Double = 0
    @State var combinedNumbers:Double = 0
    @State var textAnswer = ""
    @State var pressed = false
    @State var pressed2 = false
    var body: some View {
        
        
        VStack{
            
            Text("Answer is:\(textAnswer)")
                .font(.largeTitle)
                .padding()
            Text("Directions: Enter in your numbers in to the text below and click the operation you wish to perform.   *Make sure to clear after every calculation*.")
                .font(.title3)
            TextField("Type in first number", value: $textFirstNumber, format: .number)
                .foregroundColor(.cyan)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("Type in Second number", value: $textSecondNumber, format: .number)
                .foregroundColor(.cyan)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            Text("Click an operation")
            HStack{
                Button {
                    combinedNumbers = textFirstNumber + textSecondNumber
                } label: {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber - textSecondNumber
                } label: {
                    Text("-")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber / textSecondNumber
                } label: {
                    Text("/")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber * textSecondNumber
                } label: {
                    Text("x")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
            }
            HStack {
                Button {
                    textAnswer = String(combinedNumbers)
                    
                    pressed = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        pressed = false
                    }
                    
                } label: {
                    Text("Calculate")
                        .font(.system(size: 32, weight: .semibold))
                        .frame(width: 150, height: 50)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.green.opacity(0.7), Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .scaleEffect(pressed ? 1.3 : 1.0)
                                .animation(.interpolatingSpring(stiffness: 300, damping: 10), value: pressed)
                    
                    
                }
                Button {
                    textAnswer = ""
                    combinedNumbers = 0
                    textFirstNumber = 0
                    textSecondNumber = 0
                    
                    
                    pressed2 = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        pressed2 = false
                    }
                    
                    
                } label: {
                    Text("CLEAR")
                        .font(.system(size: 32, weight: .semibold))
                        .frame(width: 150, height: 50)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red.opacity(0.7), Color.orange]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40, ))
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .scaleEffect(pressed2 ? 1.3 : 1.0)
                                .animation(.interpolatingSpring(stiffness: 300, damping: 10), value: pressed2)
                }
            }
        }
        .frame(minWidth: 405, minHeight: 975)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.gray]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .foregroundColor(.white)
        .cornerRadius(40)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .padding(50)
    }
}



#Preview {
    TextFieldCalc()
}
