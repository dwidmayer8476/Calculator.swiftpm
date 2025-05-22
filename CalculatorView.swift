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
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                NavigationStack {
                    
                    Text(answer.isEmpty ? "0" : answer)
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
                    
                    
                    HStack {
                        Button {
                            currentNumber += "1"
                            answer = currentNumber
                        } label: {
                            Text("1")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "2"
                            answer = currentNumber
                        } label: {
                            Text("2")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "3"
                            answer = currentNumber
                        } label: {
                            Text("3")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        
                    }
                    .padding(10)
                    HStack {
                        Button {
                            currentNumber += "4"
                            answer = currentNumber
                        } label: {
                            Text("4")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "5"
                            answer = currentNumber
                        } label: {
                            Text("5")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "6"
                            answer = currentNumber
                        } label: {
                            Text("6")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                    }
                    .padding(10)
                    HStack {
                        Button {
                            currentNumber += "7"
                            answer = currentNumber
                        } label: {
                            Text("7")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "8"
                            answer = currentNumber
                        } label: {
                            Text("8")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            currentNumber += "9"
                            answer = currentNumber
                        } label: {
                            Text("9")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.pink]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                    }
                    .padding(10)
                    HStack{
                        Button {
                            currentNumber += "0"
                            answer = currentNumber
                        } label: {
                            Text("0")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            if !currentNumber.contains(".") {
                                
                                currentNumber += currentNumber.isEmpty ? "0." : "."
                                answer = currentNumber
                            }
                        } label: {
                            Text(".")
                            
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            
                        }
                        Button {
                            if !answer.isEmpty {
                                previousNumber = answer
                            }
                            currentNumber = ""
                            operation = "+"
                        } label: {
                            Text("+")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            if !answer.isEmpty {
                                previousNumber = answer
                            }
                            currentNumber = ""
                            operation = "-"
                        } label: {
                            Text("-")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        
                        
                        
                        
                    }
                    .padding(5)
                    
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
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        
                       
                        Button {
                            if !answer.isEmpty {
                                previousNumber = answer
                            }
                            currentNumber = ""
                            operation = "squared"
                        } label: {
                            Text("x^2")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            if !answer.isEmpty {
                                previousNumber = answer
                            }
                            currentNumber = ""
                            operation = "*"
                        } label: {
                            Text("x")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        Button {
                            if !answer.isEmpty {
                                previousNumber = answer
                            }
                            currentNumber = ""
                            operation = "/"
                        } label: {
                            Text("/")
                                .font(.system(size: 32, weight: .semibold))
                                .frame(width: 60, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                    }
                    .padding(5)
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
                                }else if operation == "squared"{
                                    answer = String(previousnumber * previousnumber)
                                    
                                    //pwer is known by computer means power of which is also like the acos on the trigonometry calc use for square root
                                }else if operation == "√"{
                                    answer = String(sqrt(previousnumber))
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
                              
                            }
                            
                            Button {
                                currentNumber = ""
                                previousanswer = ""
                                operation = ""
                                answer = ""
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
                            }
                            //
                           
                        
                        }//Hstackcalulator
                        .padding(0)
                    HStack {
                        ScrollView {
                            VStack(alignment: .leading, spacing: 4) {
                                ForEach(history, id: \.self) { ans in
                                    Text(ans)
                                        .padding(.vertical, 2)
                                        .frame(width: 80, height: 80)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                        .padding(.horizontal)
                                        .font(.system(size: 32, weight: .semibold))
                                        .foregroundStyle(.white)
                                    
                                }
                            }
                        }
                        Button {
                            history = [""]
                        } label: {
                            Text("Clear answers")
                                .font(.system(size: 20, weight: .semibold))
                                .frame(width: 140, height: 60)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                    }
                        NavigationStack{
                            NavigationLink("Manually enter in numbers ->"){
                                TextFieldCalc()
                            }
                            NavigationLink("Do Squares And Square Roots ->") {
                                SquaresAndRoots()
                            }
                            .padding(2)
                            .font(.system(size: 22, weight: .semibold))
                            NavigationLink("Do trigonometry ->") {
                                TrigonometryView()
                                    .font(.system(size: 26, weight: .semibold))
                                //                            NavigationLink("See Previous Answers ->") {
                                //                                PrevAnswersView()
                                //                            }
                            }
                        }
                        .font(.system(size: 22, weight: .semibold))
                        
                    }
                }//Vw
     
        }
        }
    }
    

#Preview {
    CalculatorView()
}

////LinearGradient(
//gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.cyan]),
//startPoint: .topLeading,
//endPoint: .bottomTrailing
//)
//)
