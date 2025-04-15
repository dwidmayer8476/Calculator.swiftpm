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
            
            HStack {
                Button {
                    currentNumber += "1"
                    answer = currentNumber
                } label: {
                    Text("1")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "2"
                    answer = currentNumber
                } label: {
                    Text("2")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "3"
                    answer = currentNumber
                } label: {
                    Text("3")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
            }
            Button {
                currentNumber += "1"
                answer = currentNumber
            } label: {
                Text("4")
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .frame(width: 60, height: 60)
                    .background(.orange)
                    .clipShape(.circle)
            }

        }
    }
}
