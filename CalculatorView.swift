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
            Text(answer)
                .frame(width: 400, height: 50)
                .background(.gray)
                .clipShape(Rectangle())
            
            
            HStack {
                Button {
                    currentNumber += "1"
                    answer = currentNumber
                } label: {
                    Text("1")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "2"
                    answer = currentNumber
                } label: {
                    Text("2")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "3"
                    answer = currentNumber
                } label: {
                    Text("3")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                
            }
            HStack {
                Button {
                    currentNumber += "4"
                    answer = currentNumber
                } label: {
                    Text("4")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "5"
                    answer = currentNumber
                } label: {
                    Text("5")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "6"
                    answer = currentNumber
                } label: {
                    Text("6")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
            }
            HStack {
                Button {
                    currentNumber += "7"
                    answer = currentNumber
                } label: {
                    Text("7")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "8"
                    answer = currentNumber
                } label: {
                    Text("8")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
                Button {
                    currentNumber += "9"
                    answer = currentNumber
                } label: {
                    Text("9")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.black)
                        .clipShape(.circle)
                }
            }
            HStack{
                Button {
                    previousNumber = currentNumber
                    currentNumber = ""
                    operation = "+"
                } label: {
                    Text("+")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.blue)
                        .clipShape(.circle)
                }
                Button {
                    previousNumber = currentNumber
                    currentNumber = ""
                    operation = "-"
                } label: {
                    Text("-")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.blue)
                        .clipShape(.circle)
                }
                Button {
                    previousNumber = currentNumber
                    currentNumber = ""
                    operation = "*"
                } label: {
                    Text("x")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.blue)
                        .clipShape(.circle)
                }
                Button {
                    previousNumber = currentNumber
                    currentNumber = ""
                    operation = "/"
                } label: {
                    Text("/")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(.blue)
                        .clipShape(.circle)
                }
            }
            HStack {
                Button {
                    if let previousnumber =
                        Double(previousNumber), let currentnumber = Double(currentNumber) {
                        if operation == "+" {
                            answer = String(previousnumber + currentnumber)
                        }else if operation == "-" {
                            answer = String(previousnumber - currentnumber)
                        }else if operation == "/" {
                            answer = String(previousnumber / currentnumber)
                        }else if operation == "*" {
                            answer = String(previousnumber * currentnumber)
                        }
                    }
                }
                label: {
                    Text("Calculate")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                }
                
                
                
                Button {
                    currentNumber = ""
                    previousanswer = ""
                    operation = ""
                    answer = ""
                } label: {
                    Text("RESET")
                        .foregroundStyle(.red)
                }
                

            }
        }
    }
    
}
