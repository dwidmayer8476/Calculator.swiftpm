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
            HStack {
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
                Button {
                    currentNumber += "5"
                    answer = currentNumber
                } label: {
                    Text("5")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "6"
                    answer = currentNumber
                } label: {
                    Text("6")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
            }
            HStack {
                Button {
                    currentNumber += "7"
                    answer = currentNumber
                } label: {
                    Text("7")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "8"
                    answer = currentNumber
                } label: {
                    Text("8")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "9"
                    answer = currentNumber
                } label: {
                    Text("9")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.orange)
                        .clipShape(.circle)
                }
            }
        }
    }
}

