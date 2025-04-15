import SwiftUI

struct CalculatorView: View {
    @State var currentNumber = ""
    @State var previousNumber = " "
    @State var test = "1"
    @State var operation = ""
    @State var answer = ""
    @State var previousanswer = ""
    var body: some View {
        VStack {
            Text(test)
                .frame(width: 400, height: 50)
                .background(.gray)
                .clipShape(Rectangle())
            
            Button {
                currentNumber += "1"
                answer = currentNumber
            } label: {
                Text("1")
                    .foregroundStyle(.black)
            }

        }
    }
}
