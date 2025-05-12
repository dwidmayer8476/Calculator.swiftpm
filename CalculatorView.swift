import SwiftUI

struct CalculatorView: View {
    @State var currentNumber = ""
    @State var previousNumber = " "
    @State var test = "1"
    @State var operation = ""
    @State var answer = ""
    @State var previousanswer = ""
    @State var history: [String] = []
    var body: some View {
        VStack {
            NavigationStack {
                
                Text(answer.isEmpty ? "0" : answer)
                    .frame(width: 400, height: 50)
                    .background(.gray)
                    .clipShape(Rectangle())
                    .frame(alignment: .trailing)
                
                
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
                        currentNumber += "0"
                        answer = currentNumber
                    } label: {
                        Text("0")
                            .foregroundStyle(.black)
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(.gray)
                            .clipShape(.circle)
                    }
                    Button {
                        if !currentNumber.contains(".") {
                            
                            currentNumber += currentNumber.isEmpty ? "0." : "."
                            answer = currentNumber
                        }
                    } label: {
                        Text(".")
                            .foregroundStyle(.black)
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(.gray)
                            .clipShape(.circle)
                        
                    }
                    Button {
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
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
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
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
                    
                    
                    
                    
                }
                
                //Hstackcalculatorbuttons
                HStack {
                    Button {
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
                        currentNumber = ""
                        operation = "√"
                        
                    } label: {
                        Text("√x")
                            .foregroundStyle(.black)
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(.blue)
                            .clipShape(.circle)
                    }
                    Button {
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
                        currentNumber = ""
                        operation = "squared"
                    } label: {
                        Text("x^2")
                            .foregroundStyle(.black)
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(.blue)
                            .clipShape(.circle)
                    }
                    Button {
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
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
                        if !answer.isEmpty {
                            previousNumber = answer
                        }
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
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                            }else if operation == "-" {
                                answer = String(previousnumber - currentnumber)
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                            }else if operation == "/" {
                                answer = String(previousnumber / currentnumber)
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                            }else if operation == "*" {
                                answer = String(previousnumber * currentnumber)
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                            }else if operation == "squared"{
                                answer = String(currentnumber * currentnumber)
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                                //pwer is known by computer means power of which is also like the acos on the trigonometry calc use for squaare root
                            }else if operation == "√"{
                                answer = String(sqrt(currentnumber))
                                print(answer)
                                print(currentnumber)
                                print(previousNumber)
                            }
                        }
                        //sqrt is also known
                        currentNumber = answer
                        currentNumber = ""
                        operation = ""
                        history.insert(answer, at: 0)
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
                        Text("CLEAR")
                            .foregroundStyle(.red)
                    }
                    ScrollView {
                        VStack(alignment: .leading, spacing: 4) {
                            ForEach(history, id: \.self) { ans in
                                Text(ans)
                                    .font(.largeTitle)
                                    .padding(.vertical, 2)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: 200)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    
                }
            }
        }
        NavigationStack{
            NavigationLink("Typing Calculator ->") {
                TextFieldCalc()
            }
            NavigationLink("Do trigonometry ->") {
                TrigonometryView()
                NavigationLink("See Previous Answers ->") {
                    PrevAnswersView()
                }
                
            }
        }
    }
}


#Preview {
    CalculatorView()
}
