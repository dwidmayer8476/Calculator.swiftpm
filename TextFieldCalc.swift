import SwiftUI

struct TextFieldCalc: View {
    @State var textFirstNumber = 0
    @State var textSecondNumber = 0
    @State var combinedNumbers = 0
    @State var textAnswer = ""
    var body: some View {
        
            
        VStack{
           Divider()
            Text("Answer is:\(textAnswer)")
                .padding()
            Text("Directions: Enter in your numbers in to the text below and click the operation you wish to perform. *Whole numbers only*")
                .font(.footnote)
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
            Button {
                textAnswer = String(combinedNumbers)
            } label: {
                Text("Calculate")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: 200, height: 60)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 70))
            }
            Divider()
        }
        .frame(minWidth: 100, minHeight: 800)
        .background(.gray)
    }
}



#Preview {
    TextFieldCalc()
}
