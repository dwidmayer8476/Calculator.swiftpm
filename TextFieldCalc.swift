import SwiftUI

struct TextFieldCalc: View {
    @State var textFirstNumber = 0
    @State var textSecondNumber = 0
    @State var combinedNumbers = 0
    @State var textAnswer = ""
    var body: some View {
        VStack{
            Text(textAnswer)
            
            TextField("Type in first number", value: $textFirstNumber, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("Type in Second number", value: $textSecondNumber, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            Text("Click an operation")
            HStack{
                Button {
                    combinedNumbers = textFirstNumber + textSecondNumber
                } label: {
                    Text("+")
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 20)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber - textSecondNumber
                } label: {
                    Text("-")
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 20)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber / textSecondNumber
                } label: {
                    Text("/")
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 20)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                Button {
                    combinedNumbers = textFirstNumber * textSecondNumber
                } label: {
                    Text("x")
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 20)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                }
            }
                Button {
                    textAnswer = String(combinedNumbers)
                } label: {
                    Text("Calculate")
                        .foregroundStyle(.black)
                        .frame(width: 100, height: 20)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 70))
                }
                
            }
        }
    }


#Preview {
    TextFieldCalc()
}
