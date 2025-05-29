import SwiftUI

struct addSubDivMultView: View {
   
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                Text("Addition")
                    .font(.largeTitle)
                Text("Addition is a basic mathematical operation where two or more numbers, called addends, are combined to form a total or sum. The symbol for addition is the plus sign (+). When you add two numbers, you're essentially combining them to find out how much they equal when put together. Example: 5 + 3 = 8 because 8 is 3 whole numbers after 5 and because the 5 is first 3 is ADDED to 5" )
                    .font(.footnote)
                Text("Subtraction")
                    .font(.largeTitle)
                Text("Subtraction is another basic mathematical operation, and it's the opposite of addition. In subtraction, you're taking one number away from another to find out how much is left. The symbol for subtraction is the minus sign (−). Example: 5 - 3 = 2 because 2 is 3 less than 5 because 5 is first and it is 5 minus 3.")
                    .font(.footnote)
                Text("Multiplication")
                    .font(.largeTitle)
                Text("Multiplication is a mathematical operation where you combine equal groups to find the total. It's essentially repeated addition. Instead of adding the same number over and over, multiplication allows you to find the total quickly by multiplying. Example 5 x 3 is 15. Think of it has 5 groups of 3 or 3 groups of 5")
                    .font(.footnote)
                Text("Division")
                    .font(.largeTitle)
                Text("Division is a mathematical operation where you split a number into equal parts. It is essentially the opposite of multiplication. When you divide, you're figuring out how many times one number (called the divisor) can fit into another number (called the dividend). The result of division is called the quotient. Example: 10 / 2 = ??, 10 / 2 = 5, think of this as 2 groups of ?? equals 10 (in this senario ?? = 2).")
                    .font(.footnote)
               Image("addDivPlusMult")
                NavigationStack {
                    NavigationLink("Try It Out") {
                        CalculatorView()
                    }
                    .foregroundStyle(.cyan)
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    addSubDivMultView()
}
