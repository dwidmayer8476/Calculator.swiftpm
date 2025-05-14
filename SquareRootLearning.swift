import SwiftUI

struct SquareLearning: View {
    var body: some View {
        Text("What Are Square Roots?")
            .font(.largeTitle)
            .padding()
        Text("""
                       A square root of a number is a value that, when multiplied by itself, gives the original number. For example, the square root of 9 is 3 because 3 × 3 = 9. Square roots are denoted using the radical symbol (√), so the square root of x is written as √x. Every positive number has two square roots: one positive and one negative. For instance, the square roots of 16 are 4 and -4, as both satisfy 4 × 4 = 16 and (-4) × (-4) = 16. However, in most contexts, the term "square root" refers to the non-negative square root. Square roots are undefined for negative numbers in the set of real numbers, though they can be expressed as imaginary numbers in the complex number system.
                       """)
        .font(.footnote)
   
        Text("What Are Squares?")
            .font(.largeTitle)
            .padding()
        Text("""
             A square of a number is the result of multiplying the number by itself. For example, the square of 3 is 9 because 3 × 3 = 9. Mathematically, the square of a number x is written as x². Squares are always non-negative because the product of two positive or two negative numbers is positive. For instance, both 3 × 3 = 9 and(-3) × (-3) = 9. Squaring a number is an operation in mathematics and has many applications, including in geometry, where it is used to calculate the area of a square, and inphysics, where it appears in formulas like E = mc².
             """)
                        
      
        .font(.footnote)
        NavigationStack {
            NavigationLink("Try It Out"){
                SquaresAndRoots()
            }
        }
    }
}

#Preview {
    SquareLearning()
}
